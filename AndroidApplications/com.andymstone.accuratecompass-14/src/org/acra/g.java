package org.acra;

import android.content.Context;
import android.util.Log;
import java.io.File;

final class g {
    private final Context a;

    public g(Context context) {
        this.a = context;
    }

    public String[] a() {
        if (this.a == null) {
            Log.e(ACRA.LOG_TAG, "Trying to get ACRA reports but ACRA is not initialized.");
            return new String[0];
        } else {
            File filesDir = this.a.getFilesDir();
            if (filesDir == null) {
                Log.w(ACRA.LOG_TAG, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling.");
                return new String[0];
            } else {
                Log.d(ACRA.LOG_TAG, new StringBuilder("Looking for error files in ").append(filesDir.getAbsolutePath()).toString());
                String[] list = filesDir.list(new h(this));
                return list == null ? new String[0] : list;
            }
        }
    }
}