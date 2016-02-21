package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class LoaderManager {

    public interface LoaderCallbacks {
        i onCreateLoader(int i, Bundle bundle);

        void onLoadFinished(i iVar, Object obj);

        void onLoaderReset(i iVar);
    }

    public static void enableDebugLogging(boolean z) {
        LoaderManagerImpl.DEBUG = z;
    }

    public abstract void destroyLoader(int i);

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract i getLoader(int i);

    public boolean hasRunningLoaders() {
        return false;
    }

    public abstract i initLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks);

    public abstract i restartLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks);
}