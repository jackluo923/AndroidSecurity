package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";
    FragmentActivity mActivity;
    boolean mCreatingLoader;
    final SparseArrayCompat mInactiveLoaders;
    final SparseArrayCompat mLoaders;
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final String mWho;

    final class LoaderInfo implements OnLoadCompleteListener {
        final Bundle mArgs;
        LoaderCallbacks mCallbacks;
        Object mData;
        boolean mDeliveredData;
        boolean mDestroyed;
        boolean mHaveData;
        final int mId;
        boolean mListenerRegistered;
        Loader mLoader;
        LoaderInfo mPendingLoader;
        boolean mReportNextStart;
        boolean mRetaining;
        boolean mRetainingStarted;
        boolean mStarted;

        public LoaderInfo(int i, Bundle bundle, LoaderCallbacks loaderCallbacks) {
            this.mId = i;
            this.mArgs = bundle;
            this.mCallbacks = loaderCallbacks;
        }

        void callOnLoadFinished(Loader loader, Object obj) {
            if (this.mCallbacks != null) {
                String str;
                if (LoaderManagerImpl.this.mActivity != null) {
                    String str2 = LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause;
                    LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    if (DEBUG) {
                        Log.v(TAG, "  onLoadFinished in " + loader + ": " + loader.dataToString(obj));
                    }
                    this.mCallbacks.onLoadFinished(loader, obj);
                    if (LoaderManagerImpl.this.mActivity != null) {
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str;
                    }
                    this.mDeliveredData = true;
                } catch (Throwable th) {
                    if (LoaderManagerImpl.this.mActivity != null) {
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str;
                    }
                }
            }
        }

        void destroy() {
            String str;
            if (DEBUG) {
                Log.v(TAG, "  Destroying: " + this);
            }
            this.mDestroyed = true;
            boolean z = this.mDeliveredData;
            this.mDeliveredData = false;
            if (this.mCallbacks != null && this.mLoader != null && this.mHaveData && z) {
                if (DEBUG) {
                    Log.v(TAG, "  Reseting: " + this);
                }
                if (LoaderManagerImpl.this.mActivity != null) {
                    String str2 = LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause;
                    LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = "onLoaderReset";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    this.mCallbacks.onLoaderReset(this.mLoader);
                    if (LoaderManagerImpl.this.mActivity != null) {
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str;
                    }
                } catch (Throwable th) {
                    if (LoaderManagerImpl.this.mActivity != null) {
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str;
                    }
                }
            }
            this.mCallbacks = null;
            this.mData = null;
            this.mHaveData = false;
            if (this.mLoader != null) {
                if (this.mListenerRegistered) {
                    this.mListenerRegistered = false;
                    this.mLoader.unregisterListener(this);
                }
                this.mLoader.reset();
            }
            if (this.mPendingLoader != null) {
                this.mPendingLoader.destroy();
            }
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.mId);
            printWriter.print(" mArgs=");
            printWriter.println(this.mArgs);
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.mCallbacks);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.mLoader);
            if (this.mLoader != null) {
                this.mLoader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            }
            if (this.mHaveData || this.mDeliveredData) {
                printWriter.print(str);
                printWriter.print("mHaveData=");
                printWriter.print(this.mHaveData);
                printWriter.print("  mDeliveredData=");
                printWriter.println(this.mDeliveredData);
                printWriter.print(str);
                printWriter.print("mData=");
                printWriter.println(this.mData);
            }
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.mStarted);
            printWriter.print(" mReportNextStart=");
            printWriter.print(this.mReportNextStart);
            printWriter.print(" mDestroyed=");
            printWriter.println(this.mDestroyed);
            printWriter.print(str);
            printWriter.print("mRetaining=");
            printWriter.print(this.mRetaining);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(this.mRetainingStarted);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(this.mListenerRegistered);
            if (this.mPendingLoader != null) {
                printWriter.print(str);
                printWriter.println("Pending Loader ");
                printWriter.print(this.mPendingLoader);
                printWriter.println(":");
                this.mPendingLoader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            }
        }

        void finishRetain() {
            if (this.mRetaining) {
                if (DEBUG) {
                    Log.v(TAG, "  Finished Retaining: " + this);
                }
                this.mRetaining = false;
                if (!(this.mStarted == this.mRetainingStarted || this.mStarted)) {
                    stop();
                }
            }
            if (this.mStarted && this.mHaveData && !this.mReportNextStart) {
                callOnLoadFinished(this.mLoader, this.mData);
            }
        }

        public void onLoadComplete(Loader loader, Object obj) {
            if (DEBUG) {
                Log.v(TAG, "onLoadComplete: " + this);
            }
            if (this.mDestroyed) {
                if (DEBUG) {
                    Log.v(TAG, "  Ignoring load complete -- destroyed");
                }
            } else if (LoaderManagerImpl.this.mLoaders.get(this.mId) == this) {
                LoaderInfo loaderInfo = this.mPendingLoader;
                if (loaderInfo != null) {
                    if (DEBUG) {
                        Log.v(TAG, "  Switching to pending loader: " + loaderInfo);
                    }
                    this.mPendingLoader = null;
                    LoaderManagerImpl.this.mLoaders.put(this.mId, null);
                    destroy();
                    LoaderManagerImpl.this.installLoader(loaderInfo);
                } else {
                    if (!(this.mData == obj && this.mHaveData)) {
                        this.mData = obj;
                        this.mHaveData = true;
                        if (this.mStarted) {
                            callOnLoadFinished(loader, obj);
                        }
                    }
                    loaderInfo = (LoaderInfo) LoaderManagerImpl.this.mInactiveLoaders.get(this.mId);
                    if (!(loaderInfo == null || loaderInfo == this)) {
                        loaderInfo.mDeliveredData = false;
                        loaderInfo.destroy();
                        LoaderManagerImpl.this.mInactiveLoaders.remove(this.mId);
                    }
                    if (LoaderManagerImpl.this.mActivity != null && !LoaderManagerImpl.this.hasRunningLoaders()) {
                        LoaderManagerImpl.this.mActivity.mFragments.startPendingDeferredFragments();
                    }
                }
            } else if (DEBUG) {
                Log.v(TAG, "  Ignoring load complete -- not active");
            }
        }

        void reportStart() {
            if (this.mStarted && this.mReportNextStart) {
                this.mReportNextStart = false;
                if (this.mHaveData) {
                    callOnLoadFinished(this.mLoader, this.mData);
                }
            }
        }

        void retain() {
            if (DEBUG) {
                Log.v(TAG, "  Retaining: " + this);
            }
            this.mRetaining = true;
            this.mRetainingStarted = this.mStarted;
            this.mStarted = false;
            this.mCallbacks = null;
        }

        void start() {
            if (this.mRetaining && this.mRetainingStarted) {
                this.mStarted = true;
            } else if (!this.mStarted) {
                this.mStarted = true;
                if (DEBUG) {
                    Log.v(TAG, "  Starting: " + this);
                }
                if (this.mLoader == null && this.mCallbacks != null) {
                    this.mLoader = this.mCallbacks.onCreateLoader(this.mId, this.mArgs);
                }
                if (this.mLoader == null) {
                    return;
                }
                if (!this.mLoader.getClass().isMemberClass() || Modifier.isStatic(this.mLoader.getClass().getModifiers())) {
                    if (!this.mListenerRegistered) {
                        this.mLoader.registerListener(this.mId, this);
                        this.mListenerRegistered = true;
                    }
                    this.mLoader.startLoading();
                } else {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.mLoader);
                }
            }
        }

        void stop() {
            if (DEBUG) {
                Log.v(TAG, "  Stopping: " + this);
            }
            this.mStarted = false;
            if (!this.mRetaining && this.mLoader != null && this.mListenerRegistered) {
                this.mListenerRegistered = false;
                this.mLoader.unregisterListener(this);
                this.mLoader.stopLoading();
            }
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append("LoaderInfo{");
            stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringBuilder.append(" #");
            stringBuilder.append(this.mId);
            stringBuilder.append(" : ");
            DebugUtils.buildShortClassTag(this.mLoader, stringBuilder);
            stringBuilder.append("}}");
            return stringBuilder.toString();
        }
    }

    static {
        DEBUG = false;
    }

    LoaderManagerImpl(String str, FragmentActivity fragmentActivity, boolean z) {
        this.mLoaders = new SparseArrayCompat();
        this.mInactiveLoaders = new SparseArrayCompat();
        this.mWho = str;
        this.mActivity = fragmentActivity;
        this.mStarted = z;
    }

    private LoaderInfo createAndInstallLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks) {
        boolean z = false;
        this.mCreatingLoader = true;
        LoaderInfo createLoader = createLoader(i, bundle, loaderCallbacks);
        installLoader(createLoader);
        this.mCreatingLoader = z;
        return createLoader;
    }

    private LoaderInfo createLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks) {
        LoaderInfo loaderInfo = new LoaderInfo(i, bundle, loaderCallbacks);
        loaderInfo.mLoader = loaderCallbacks.onCreateLoader(i, bundle);
        return loaderInfo;
    }

    public void destroyLoader(int i) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (DEBUG) {
            Log.v(TAG, "destroyLoader in " + this + " of " + i);
        }
        int indexOfKey = this.mLoaders.indexOfKey(i);
        if (indexOfKey >= 0) {
            LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.valueAt(indexOfKey);
            this.mLoaders.removeAt(indexOfKey);
            loaderInfo.destroy();
        }
        indexOfKey = this.mInactiveLoaders.indexOfKey(i);
        if (indexOfKey >= 0) {
            loaderInfo = (LoaderInfo) this.mInactiveLoaders.valueAt(indexOfKey);
            this.mInactiveLoaders.removeAt(indexOfKey);
            loaderInfo.destroy();
        }
        if (this.mActivity != null && !hasRunningLoaders()) {
            this.mActivity.mFragments.startPendingDeferredFragments();
        }
    }

    void doDestroy() {
        int i;
        if (!this.mRetaining) {
            if (DEBUG) {
                Log.v(TAG, "Destroying Active in " + this);
            }
            i = this.mLoaders.size() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.valueAt(i)).destroy();
                i--;
            }
            this.mLoaders.clear();
        }
        if (DEBUG) {
            Log.v(TAG, "Destroying Inactive in " + this);
        }
        i = this.mInactiveLoaders.size() - 1;
        while (i >= 0) {
            ((LoaderInfo) this.mInactiveLoaders.valueAt(i)).destroy();
            i--;
        }
        this.mInactiveLoaders.clear();
    }

    void doReportNextStart() {
        int i = this.mLoaders.size() - 1;
        while (i >= 0) {
            ((LoaderInfo) this.mLoaders.valueAt(i)).mReportNextStart = true;
            i--;
        }
    }

    void doReportStart() {
        int i = this.mLoaders.size() - 1;
        while (i >= 0) {
            ((LoaderInfo) this.mLoaders.valueAt(i)).reportStart();
            i--;
        }
    }

    void doRetain() {
        if (DEBUG) {
            Log.v(TAG, "Retaining in " + this);
        }
        if (this.mStarted) {
            this.mRetaining = true;
            this.mStarted = false;
            int i = this.mLoaders.size() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.valueAt(i)).retain();
                i--;
            }
        } else {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doRetain when not started: " + this, runtimeException);
        }
    }

    void doStart() {
        if (DEBUG) {
            Log.v(TAG, "Starting in " + this);
        }
        if (this.mStarted) {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doStart when already started: " + this, runtimeException);
        } else {
            this.mStarted = true;
            int i = this.mLoaders.size() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.valueAt(i)).start();
                i--;
            }
        }
    }

    void doStop() {
        if (DEBUG) {
            Log.v(TAG, "Stopping in " + this);
        }
        if (this.mStarted) {
            int i = this.mLoaders.size() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.valueAt(i)).stop();
                i--;
            }
            this.mStarted = false;
        } else {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doStop when not started: " + this, runtimeException);
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        if (this.mLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            int i2 = 0;
            while (i2 < this.mLoaders.size()) {
                LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mLoaders.keyAt(i2));
                printWriter.print(": ");
                printWriter.println(loaderInfo.toString());
                loaderInfo.dump(str2, fileDescriptor, printWriter, strArr);
                i2++;
            }
        }
        if (this.mInactiveLoaders.size() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            while (i < this.mInactiveLoaders.size()) {
                loaderInfo = (LoaderInfo) this.mInactiveLoaders.valueAt(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mInactiveLoaders.keyAt(i));
                printWriter.print(": ");
                printWriter.println(loaderInfo.toString());
                loaderInfo.dump(str3, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    void finishRetain() {
        if (this.mRetaining) {
            if (DEBUG) {
                Log.v(TAG, "Finished Retaining in " + this);
            }
            this.mRetaining = false;
            int i = this.mLoaders.size() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.valueAt(i)).finishRetain();
                i--;
            }
        }
    }

    public Loader getLoader(int i) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.get(i);
        if (loaderInfo == null) {
            return null;
        }
        return loaderInfo.mPendingLoader != null ? loaderInfo.mPendingLoader.mLoader : loaderInfo.mLoader;
    }

    public boolean hasRunningLoaders() {
        int size = this.mLoaders.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            int i2;
            LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.valueAt(i);
            i2 = (!loaderInfo.mStarted || loaderInfo.mDeliveredData) ? 0 : 1;
            z |= i2;
            i++;
        }
        return z;
    }

    public Loader initLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.get(i);
        if (DEBUG) {
            Log.v(TAG, "initLoader in " + this + ": args=" + bundle);
        }
        if (loaderInfo == null) {
            loaderInfo = createAndInstallLoader(i, bundle, loaderCallbacks);
            if (DEBUG) {
                Log.v(TAG, "  Created new loader " + loaderInfo);
            }
        } else {
            if (DEBUG) {
                Log.v(TAG, "  Re-using existing loader " + loaderInfo);
            }
            loaderInfo.mCallbacks = loaderCallbacks;
        }
        if (loaderInfo.mHaveData && this.mStarted) {
            loaderInfo.callOnLoadFinished(loaderInfo.mLoader, loaderInfo.mData);
        }
        return loaderInfo.mLoader;
    }

    void installLoader(LoaderInfo loaderInfo) {
        this.mLoaders.put(loaderInfo.mId, loaderInfo);
        if (this.mStarted) {
            loaderInfo.start();
        }
    }

    public Loader restartLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.get(i);
        if (DEBUG) {
            Log.v(TAG, "restartLoader in " + this + ": args=" + bundle);
        }
        if (loaderInfo != null) {
            LoaderInfo loaderInfo2 = (LoaderInfo) this.mInactiveLoaders.get(i);
            if (loaderInfo2 == null) {
                if (DEBUG) {
                    Log.v(TAG, "  Making last loader inactive: " + loaderInfo);
                }
                loaderInfo.mLoader.abandon();
                this.mInactiveLoaders.put(i, loaderInfo);
            } else if (loaderInfo.mHaveData) {
                if (DEBUG) {
                    Log.v(TAG, "  Removing last inactive loader: " + loaderInfo);
                }
                loaderInfo2.mDeliveredData = false;
                loaderInfo2.destroy();
                loaderInfo.mLoader.abandon();
                this.mInactiveLoaders.put(i, loaderInfo);
            } else if (loaderInfo.mStarted) {
                if (loaderInfo.mPendingLoader != null) {
                    if (DEBUG) {
                        Log.v(TAG, "  Removing pending loader: " + loaderInfo.mPendingLoader);
                    }
                    loaderInfo.mPendingLoader.destroy();
                    loaderInfo.mPendingLoader = null;
                }
                if (DEBUG) {
                    Log.v(TAG, "  Enqueuing as new pending loader");
                }
                loaderInfo.mPendingLoader = createLoader(i, bundle, loaderCallbacks);
                return loaderInfo.mPendingLoader.mLoader;
            } else {
                if (DEBUG) {
                    Log.v(TAG, "  Current loader is stopped; replacing");
                }
                this.mLoaders.put(i, null);
                loaderInfo.destroy();
            }
        }
        return createAndInstallLoader(i, bundle, loaderCallbacks).mLoader;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("LoaderManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        DebugUtils.buildShortClassTag(this.mActivity, stringBuilder);
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

    void updateActivity(FragmentActivity fragmentActivity) {
        this.mActivity = fragmentActivity;
    }
}