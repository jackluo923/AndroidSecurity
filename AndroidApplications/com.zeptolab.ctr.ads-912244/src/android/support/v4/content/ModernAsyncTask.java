package android.support.v4.content;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import com.zeptolab.ctr.ads.R;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

abstract class ModernAsyncTask {
    private static final int CORE_POOL_SIZE = 5;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = 128;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static volatile Executor sDefaultExecutor;
    private static final InternalHandler sHandler;
    private static final BlockingQueue sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private final FutureTask mFuture;
    private volatile Status mStatus;
    private final AtomicBoolean mTaskInvoked;
    private final WorkerRunnable mWorker;

    private static abstract class WorkerRunnable implements Callable {
        Object[] mParams;

        private WorkerRunnable() {
        }
    }

    class AnonymousClass_3 extends FutureTask {
        AnonymousClass_3(Callable callable) {
            super(callable);
        }

        protected void done() {
            try {
                ModernAsyncTask.this.postResultIfNotInvoked(get());
            } catch (InterruptedException e) {
                Log.w(LOG_TAG, e);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occured while executing doInBackground()", e2.getCause());
            } catch (CancellationException e3) {
                ModernAsyncTask.this.postResultIfNotInvoked(null);
            }
        }
    }

    static /* synthetic */ class AnonymousClass_4 {
        static final /* synthetic */ int[] $SwitchMap$android$support$v4$content$ModernAsyncTask$Status;

        static {
            $SwitchMap$android$support$v4$content$ModernAsyncTask$Status = new int[android.support.v4.content.ModernAsyncTask.Status.values().length];
            try {
                $SwitchMap$android$support$v4$content$ModernAsyncTask$Status[android.support.v4.content.ModernAsyncTask.Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $SwitchMap$android$support$v4$content$ModernAsyncTask$Status[android.support.v4.content.ModernAsyncTask.Status.FINISHED.ordinal()] = 2;
        }
    }

    private static class AsyncTaskResult {
        final Object[] mData;
        final ModernAsyncTask mTask;

        AsyncTaskResult(ModernAsyncTask modernAsyncTask, Object... objArr) {
            this.mTask = modernAsyncTask;
            this.mData = objArr;
        }
    }

    private static class InternalHandler extends Handler {
        private InternalHandler() {
        }

        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            switch (message.what) {
                case MESSAGE_POST_RESULT:
                    asyncTaskResult.mTask.finish(asyncTaskResult.mData[0]);
                case MESSAGE_POST_PROGRESS:
                    asyncTaskResult.mTask.onProgressUpdate(asyncTaskResult.mData);
                default:
                    break;
            }
        }
    }

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    static {
        sThreadFactory = new ThreadFactory() {
            private final AtomicInteger mCount;

            {
                this.mCount = new AtomicInteger(1);
            }

            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "ModernAsyncTask #" + this.mCount.getAndIncrement());
            }
        };
        sPoolWorkQueue = new LinkedBlockingQueue(10);
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory);
        sHandler = new InternalHandler();
        sDefaultExecutor = THREAD_POOL_EXECUTOR;
    }

    public ModernAsyncTask() {
        this.mStatus = Status.PENDING;
        this.mTaskInvoked = new AtomicBoolean();
        this.mWorker = new WorkerRunnable() {
            {
                super();
            }

            public Object call() {
                ModernAsyncTask.this.mTaskInvoked.set(true);
                Process.setThreadPriority(R.styleable.MapAttrs_uiZoomControls);
                return ModernAsyncTask.this.postResult(ModernAsyncTask.this.doInBackground(this.mParams));
            }
        };
        this.mFuture = new AnonymousClass_3(this.mWorker);
    }

    public static void execute(Runnable runnable) {
        sDefaultExecutor.execute(runnable);
    }

    private void finish(Object obj) {
        if (isCancelled()) {
            onCancelled(obj);
        } else {
            onPostExecute(obj);
        }
        this.mStatus = Status.FINISHED;
    }

    public static void init() {
        sHandler.getLooper();
    }

    private Object postResult(Object obj) {
        sHandler.obtainMessage(MESSAGE_POST_RESULT, new AsyncTaskResult(this, new Object[]{obj})).sendToTarget();
        return obj;
    }

    private void postResultIfNotInvoked(Object obj) {
        if (!this.mTaskInvoked.get()) {
            postResult(obj);
        }
    }

    public static void setDefaultExecutor(Executor executor) {
        sDefaultExecutor = executor;
    }

    public final boolean cancel(boolean z) {
        return this.mFuture.cancel(z);
    }

    protected abstract Object doInBackground(Object... objArr);

    public final ModernAsyncTask execute(Object... objArr) {
        return executeOnExecutor(sDefaultExecutor, objArr);
    }

    public final ModernAsyncTask executeOnExecutor(Executor executor, Object... objArr) {
        if (this.mStatus != Status.PENDING) {
            switch (AnonymousClass_4.$SwitchMap$android$support$v4$content$ModernAsyncTask$Status[this.mStatus.ordinal()]) {
                case MESSAGE_POST_RESULT:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case MESSAGE_POST_PROGRESS:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.mStatus = Status.RUNNING;
        onPreExecute();
        this.mWorker.mParams = objArr;
        executor.execute(this.mFuture);
        return this;
    }

    public final Object get() {
        return this.mFuture.get();
    }

    public final Object get(long j, TimeUnit timeUnit) {
        return this.mFuture.get(j, timeUnit);
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    public final boolean isCancelled() {
        return this.mFuture.isCancelled();
    }

    protected void onCancelled() {
    }

    protected void onCancelled(Object obj) {
        onCancelled();
    }

    protected void onPostExecute(Object obj) {
    }

    protected void onPreExecute() {
    }

    protected void onProgressUpdate(Object... objArr) {
    }

    protected final void publishProgress(Object... objArr) {
        if (!isCancelled()) {
            sHandler.obtainMessage(MESSAGE_POST_PROGRESS, new AsyncTaskResult(this, objArr)).sendToTarget();
        }
    }
}