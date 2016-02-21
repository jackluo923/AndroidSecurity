package org.acra.d;

import android.util.Log;

public final class b implements a {
    public int a(String str, String str2) {
        return Log.d(str, str2);
    }

    public int a(String str, String str2, Throwable th) {
        return Log.w(str, str2, th);
    }

    public int b_(String str, String str2) {
        return Log.w(str, str2);
    }

    public int b_(String str, String str2, Throwable th) {
        return Log.e(str, str2, th);
    }

    public int c(String str, String str2) {
        return Log.e(str, str2);
    }
}