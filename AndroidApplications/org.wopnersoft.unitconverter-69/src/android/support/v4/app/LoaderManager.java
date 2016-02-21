package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.l;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// compiled from: ProGuard
public abstract class LoaderManager {

    // compiled from: ProGuard
    public interface LoaderCallbacks {
        l onCreateLoader(int i, Bundle bundle);

        void onLoadFinished(l lVar, Object obj);

        void onLoaderReset(l lVar);
    }

    public static void enableDebugLogging(boolean z) {
        LoaderManagerImpl.DEBUG = z;
    }

    public abstract void destroyLoader(int i);

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract l getLoader(int i);

    public boolean hasRunningLoaders() {
        return false;
    }

    public abstract l initLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks);

    public abstract l restartLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks);
}