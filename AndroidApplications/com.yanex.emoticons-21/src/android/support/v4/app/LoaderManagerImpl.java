package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.b.a;
import android.support.v4.b.c;
import android.support.v4.content.i;
import android.support.v4.content.j;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";
    FragmentActivity mActivity;
    boolean mCreatingLoader;
    final c mInactiveLoaders;
    final c mLoaders;
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final String mWho;

    final class LoaderInfo implements j {
        final Bundle mArgs;
        LoaderCallbacks mCallbacks;
        Object mData;
        boolean mDeliveredData;
        boolean mDestroyed;
        boolean mHaveData;
        final int mId;
        boolean mListenerRegistered;
        i mLoader;
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

        final void callOnLoadFinished(i iVar, Object obj) {
            if (this.mCallbacks != null) {
                String str;
                String str2;
                if (LoaderManagerImpl.this.mActivity != null) {
                    str = LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause;
                    LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = "onLoadFinished";
                    str2 = str;
                } else {
                    str2 = null;
                }
                try {
                    if (DEBUG) {
                        str = TAG;
                        StringBuilder append = new StringBuilder("  onLoadFinished in ").append(iVar).append(": ");
                        StringBuilder stringBuilder = new StringBuilder(64);
                        a.a(obj, stringBuilder);
                        stringBuilder.append("}");
                        Log.v(str, append.append(stringBuilder.toString()).toString());
                    }
                    this.mCallbacks.onLoadFinished(iVar, obj);
                    if (LoaderManagerImpl.this.mActivity != null) {
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str2;
                    }
                    this.mDeliveredData = true;
                } catch (Throwable th) {
                    if (LoaderManagerImpl.this.mActivity != null) {
                        LoaderManagerImpl.this.mActivity.mFragments.mNoTransactionsBecause = str2;
                    }
                }
            }
        }

        final void destroy() {
            String str;
            while (true) {
                if (DEBUG) {
                    Log.v(TAG, new StringBuilder("  Destroying: ").append(this).toString());
                }
                this.mDestroyed = true;
                boolean z = this.mDeliveredData;
                this.mDeliveredData = false;
                if (this.mCallbacks != null && this.mLoader != null && this.mHaveData && z) {
                    if (DEBUG) {
                        Log.v(TAG, new StringBuilder("  Reseting: ").append(this).toString());
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
                        this.mLoader.a(this);
                    }
                    this.mLoader.d();
                }
                if (this.mPendingLoader != null) {
                    this = this.mPendingLoader;
                } else {
                    return;
                }
            }
        }

        public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            while (true) {
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
                    this.mLoader.a(str + "  ", printWriter);
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
                    this = this.mPendingLoader;
                    str = str + "  ";
                } else {
                    return;
                }
            }
        }

        final void finishRetain() {
            if (this.mRetaining) {
                if (DEBUG) {
                    Log.v(TAG, new StringBuilder("  Finished Retaining: ").append(this).toString());
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

        public final void onLoadComplete(i iVar, Object obj) {
            if (DEBUG) {
                Log.v(TAG, new StringBuilder("onLoadComplete: ").append(this).toString());
            }
            if (this.mDestroyed) {
                if (DEBUG) {
                    Log.v(TAG, "  Ignoring load complete -- destroyed");
                }
            } else if (LoaderManagerImpl.this.mLoaders.a(this.mId) == this) {
                LoaderInfo loaderInfo = this.mPendingLoader;
                if (loaderInfo != null) {
                    if (DEBUG) {
                        Log.v(TAG, new StringBuilder("  Switching to pending loader: ").append(loaderInfo).toString());
                    }
                    this.mPendingLoader = null;
                    LoaderManagerImpl.this.mLoaders.a(this.mId, null);
                    destroy();
                    LoaderManagerImpl.this.installLoader(loaderInfo);
                } else {
                    if (!(this.mData == obj && this.mHaveData)) {
                        this.mData = obj;
                        this.mHaveData = true;
                        if (this.mStarted) {
                            callOnLoadFinished(iVar, obj);
                        }
                    }
                    loaderInfo = (LoaderInfo) LoaderManagerImpl.this.mInactiveLoaders.a(this.mId);
                    if (!(loaderInfo == null || loaderInfo == this)) {
                        loaderInfo.mDeliveredData = false;
                        loaderInfo.destroy();
                        LoaderManagerImpl.this.mInactiveLoaders.b(this.mId);
                    }
                    if (LoaderManagerImpl.this.mActivity != null && !LoaderManagerImpl.this.hasRunningLoaders()) {
                        LoaderManagerImpl.this.mActivity.mFragments.startPendingDeferredFragments();
                    }
                }
            } else if (DEBUG) {
                Log.v(TAG, "  Ignoring load complete -- not active");
            }
        }

        final void reportStart() {
            if (this.mStarted && this.mReportNextStart) {
                this.mReportNextStart = false;
                if (this.mHaveData) {
                    callOnLoadFinished(this.mLoader, this.mData);
                }
            }
        }

        final void retain() {
            if (DEBUG) {
                Log.v(TAG, new StringBuilder("  Retaining: ").append(this).toString());
            }
            this.mRetaining = true;
            this.mRetainingStarted = this.mStarted;
            this.mStarted = false;
            this.mCallbacks = null;
        }

        final void start() {
            if (this.mRetaining && this.mRetainingStarted) {
                this.mStarted = true;
            } else if (!this.mStarted) {
                this.mStarted = true;
                if (DEBUG) {
                    Log.v(TAG, new StringBuilder("  Starting: ").append(this).toString());
                }
                if (this.mLoader == null && this.mCallbacks != null) {
                    this.mLoader = this.mCallbacks.onCreateLoader(this.mId, this.mArgs);
                }
                if (this.mLoader == null) {
                    return;
                }
                if (!this.mLoader.getClass().isMemberClass() || Modifier.isStatic(this.mLoader.getClass().getModifiers())) {
                    if (!this.mListenerRegistered) {
                        this.mLoader.a(this.mId, this);
                        this.mListenerRegistered = true;
                    }
                    this.mLoader.a();
                } else {
                    throw new IllegalArgumentException(new StringBuilder("Object returned from onCreateLoader must not be a non-static inner member class: ").append(this.mLoader).toString());
                }
            }
        }

        final void stop() {
            if (DEBUG) {
                Log.v(TAG, new StringBuilder("  Stopping: ").append(this).toString());
            }
            this.mStarted = false;
            if (!this.mRetaining && this.mLoader != null && this.mListenerRegistered) {
                this.mListenerRegistered = false;
                this.mLoader.a(this);
                this.mLoader.b();
            }
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder(64);
            stringBuilder.append("LoaderInfo{");
            stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringBuilder.append(" #");
            stringBuilder.append(this.mId);
            stringBuilder.append(" : ");
            a.a(this.mLoader, stringBuilder);
            stringBuilder.append("}}");
            return stringBuilder.toString();
        }
    }

    static {
        DEBUG = false;
    }

    LoaderManagerImpl(String str, FragmentActivity fragmentActivity, boolean z) {
        this.mLoaders = new c();
        this.mInactiveLoaders = new c();
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
            Log.v(TAG, new StringBuilder("destroyLoader in ").append(this).append(" of ").append(i).toString());
        }
        int f = this.mLoaders.f(i);
        if (f >= 0) {
            LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.e(f);
            this.mLoaders.c(f);
            loaderInfo.destroy();
        }
        f = this.mInactiveLoaders.f(i);
        if (f >= 0) {
            loaderInfo = (LoaderInfo) this.mInactiveLoaders.e(f);
            this.mInactiveLoaders.c(f);
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
                Log.v(TAG, new StringBuilder("Destroying Active in ").append(this).toString());
            }
            i = this.mLoaders.a() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.e(i)).destroy();
                i--;
            }
        }
        if (DEBUG) {
            Log.v(TAG, new StringBuilder("Destroying Inactive in ").append(this).toString());
        }
        i = this.mInactiveLoaders.a() - 1;
        while (i >= 0) {
            ((LoaderInfo) this.mInactiveLoaders.e(i)).destroy();
            i--;
        }
        this.mInactiveLoaders.b();
    }

    void doReportNextStart() {
        int i = this.mLoaders.a() - 1;
        while (i >= 0) {
            ((LoaderInfo) this.mLoaders.e(i)).mReportNextStart = true;
            i--;
        }
    }

    void doReportStart() {
        int i = this.mLoaders.a() - 1;
        while (i >= 0) {
            ((LoaderInfo) this.mLoaders.e(i)).reportStart();
            i--;
        }
    }

    void doRetain() {
        if (DEBUG) {
            Log.v(TAG, new StringBuilder("Retaining in ").append(this).toString());
        }
        if (this.mStarted) {
            this.mRetaining = true;
            this.mStarted = false;
            int i = this.mLoaders.a() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.e(i)).retain();
                i--;
            }
        } else {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, new StringBuilder("Called doRetain when not started: ").append(this).toString(), runtimeException);
        }
    }

    void doStart() {
        if (DEBUG) {
            Log.v(TAG, new StringBuilder("Starting in ").append(this).toString());
        }
        if (this.mStarted) {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, new StringBuilder("Called doStart when already started: ").append(this).toString(), runtimeException);
        } else {
            this.mStarted = true;
            int i = this.mLoaders.a() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.e(i)).start();
                i--;
            }
        }
    }

    void doStop() {
        if (DEBUG) {
            Log.v(TAG, new StringBuilder("Stopping in ").append(this).toString());
        }
        if (this.mStarted) {
            int i = this.mLoaders.a() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.e(i)).stop();
                i--;
            }
            this.mStarted = false;
        } else {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, new StringBuilder("Called doStop when not started: ").append(this).toString(), runtimeException);
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        if (this.mLoaders.a() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            int i2 = 0;
            while (i2 < this.mLoaders.a()) {
                LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.e(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mLoaders.d(i2));
                printWriter.print(": ");
                printWriter.println(loaderInfo.toString());
                loaderInfo.dump(str2, fileDescriptor, printWriter, strArr);
                i2++;
            }
        }
        if (this.mInactiveLoaders.a() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            while (i < this.mInactiveLoaders.a()) {
                loaderInfo = (LoaderInfo) this.mInactiveLoaders.e(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.mInactiveLoaders.d(i));
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
                Log.v(TAG, new StringBuilder("Finished Retaining in ").append(this).toString());
            }
            this.mRetaining = false;
            int i = this.mLoaders.a() - 1;
            while (i >= 0) {
                ((LoaderInfo) this.mLoaders.e(i)).finishRetain();
                i--;
            }
        }
    }

    public i getLoader(int i) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.a(i);
        if (loaderInfo == null) {
            return null;
        }
        return loaderInfo.mPendingLoader != null ? loaderInfo.mPendingLoader.mLoader : loaderInfo.mLoader;
    }

    public boolean hasRunningLoaders() {
        int a = this.mLoaders.a();
        int i = 0;
        boolean z = false;
        while (i < a) {
            int i2;
            LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.e(i);
            i2 = (!loaderInfo.mStarted || loaderInfo.mDeliveredData) ? 0 : 1;
            z |= i2;
            i++;
        }
        return z;
    }

    public i initLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.a(i);
        if (DEBUG) {
            Log.v(TAG, new StringBuilder("initLoader in ").append(this).append(": args=").append(bundle).toString());
        }
        if (loaderInfo == null) {
            loaderInfo = createAndInstallLoader(i, bundle, loaderCallbacks);
            if (DEBUG) {
                Log.v(TAG, new StringBuilder("  Created new loader ").append(loaderInfo).toString());
            }
        } else {
            if (DEBUG) {
                Log.v(TAG, new StringBuilder("  Re-using existing loader ").append(loaderInfo).toString());
            }
            loaderInfo.mCallbacks = loaderCallbacks;
        }
        if (loaderInfo.mHaveData && this.mStarted) {
            loaderInfo.callOnLoadFinished(loaderInfo.mLoader, loaderInfo.mData);
        }
        return loaderInfo.mLoader;
    }

    void installLoader(LoaderInfo loaderInfo) {
        this.mLoaders.a(loaderInfo.mId, loaderInfo);
        if (this.mStarted) {
            loaderInfo.start();
        }
    }

    public i restartLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = (LoaderInfo) this.mLoaders.a(i);
        if (DEBUG) {
            Log.v(TAG, new StringBuilder("restartLoader in ").append(this).append(": args=").append(bundle).toString());
        }
        if (loaderInfo != null) {
            LoaderInfo loaderInfo2 = (LoaderInfo) this.mInactiveLoaders.a(i);
            if (loaderInfo2 != null) {
                if (loaderInfo.mHaveData) {
                    if (DEBUG) {
                        Log.v(TAG, new StringBuilder("  Removing last inactive loader: ").append(loaderInfo).toString());
                    }
                    loaderInfo2.mDeliveredData = false;
                    loaderInfo2.destroy();
                } else if (loaderInfo.mStarted) {
                    if (loaderInfo.mPendingLoader != null) {
                        if (DEBUG) {
                            Log.v(TAG, new StringBuilder("  Removing pending loader: ").append(loaderInfo.mPendingLoader).toString());
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
                    this.mLoaders.a(i, null);
                    loaderInfo.destroy();
                }
            } else if (DEBUG) {
                Log.v(TAG, new StringBuilder("  Making last loader inactive: ").append(loaderInfo).toString());
            }
            loaderInfo.mLoader.c();
            this.mInactiveLoaders.a(i, loaderInfo);
        }
        return createAndInstallLoader(i, bundle, loaderCallbacks).mLoader;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("LoaderManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        a.a(this.mActivity, stringBuilder);
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }

    void updateActivity(FragmentActivity fragmentActivity) {
        this.mActivity = fragmentActivity;
    }
}