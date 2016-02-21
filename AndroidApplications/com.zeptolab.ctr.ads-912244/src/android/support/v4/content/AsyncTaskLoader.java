package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;

public abstract class AsyncTaskLoader extends Loader {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncTaskLoader";
    volatile LoadTask mCancellingTask;
    Handler mHandler;
    long mLastLoadCompleteTime;
    volatile LoadTask mTask;
    long mUpdateThrottle;

    final class LoadTask extends ModernAsyncTask implements Runnable {
        private CountDownLatch done;
        Object result;
        boolean waiting;

        LoadTask() {
            this.done = new CountDownLatch(1);
        }

        protected Object doInBackground(Void... voidArr) {
            this.result = AsyncTaskLoader.this.onLoadInBackground();
            return this.result;
        }

        protected void onCancelled() {
            AsyncTaskLoader.this.dispatchOnCancelled(this, this.result);
            this.done.countDown();
        }

        protected void onPostExecute(Object obj) {
            AsyncTaskLoader.this.dispatchOnLoadComplete(this, obj);
            this.done.countDown();
        }

        public void run() {
            this.waiting = false;
            AsyncTaskLoader.this.executePendingTask();
        }
    }

    public AsyncTaskLoader(Context context) {
        super(context);
        this.mLastLoadCompleteTime = -10000;
    }

    public boolean cancelLoad() {
        boolean z = DEBUG;
        if (this.mTask != null) {
            if (this.mCancellingTask != null) {
                if (this.mTask.waiting) {
                    this.mTask.waiting = false;
                    this.mHandler.removeCallbacks(this.mTask);
                }
                this.mTask = null;
            } else if (this.mTask.waiting) {
                this.mTask.waiting = false;
                this.mHandler.removeCallbacks(this.mTask);
                this.mTask = null;
            } else {
                z = this.mTask.cancel(DEBUG);
                if (z) {
                    this.mCancellingTask = this.mTask;
                }
                this.mTask = null;
            }
        }
        return z;
    }

    void dispatchOnCancelled(LoadTask loadTask, Object obj) {
        onCanceled(obj);
        if (this.mCancellingTask == loadTask) {
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            executePendingTask();
        }
    }

    void dispatchOnLoadComplete(LoadTask loadTask, Object obj) {
        if (this.mTask != loadTask) {
            dispatchOnCancelled(loadTask, obj);
        } else if (isAbandoned()) {
            onCanceled(obj);
        } else {
            commitContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mTask = null;
            deliverResult(obj);
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.waiting);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.waiting);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.mUpdateThrottle, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.mLastLoadCompleteTime, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    void executePendingTask() {
        if (this.mCancellingTask == null && this.mTask != null) {
            if (this.mTask.waiting) {
                this.mTask.waiting = false;
                this.mHandler.removeCallbacks(this.mTask);
            }
            if (this.mUpdateThrottle <= 0 || SystemClock.uptimeMillis() >= this.mLastLoadCompleteTime + this.mUpdateThrottle) {
                this.mTask.executeOnExecutor(ModernAsyncTask.THREAD_POOL_EXECUTOR, (Void[]) 0);
            } else {
                this.mTask.waiting = true;
                this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
            }
        }
    }

    public abstract Object loadInBackground();

    public void onCanceled(Object obj) {
    }

    protected void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.mTask = new LoadTask();
        executePendingTask();
    }

    protected Object onLoadInBackground() {
        return loadInBackground();
    }

    public void setUpdateThrottle(long j) {
        this.mUpdateThrottle = j;
        if (j != 0) {
            this.mHandler = new Handler();
        }
    }

    public void waitForLoader() {
        LoadTask loadTask = this.mTask;
        if (loadTask != null) {
            try {
                loadTask.done.await();
            } catch (InterruptedException e) {
            }
        }
    }
}