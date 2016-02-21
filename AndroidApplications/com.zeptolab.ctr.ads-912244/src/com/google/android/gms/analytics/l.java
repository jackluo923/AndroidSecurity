package com.google.android.gms.analytics;

import android.util.Log;

class l implements Logger {
    private int rc;

    l() {
        this.rc = 1;
    }

    private String z(String str) {
        return Thread.currentThread().toString() + ": " + str;
    }

    public void error(Exception exception) {
        if (this.rc <= 3) {
            Log.e("GAV3", null, exception);
        }
    }

    public void error(String str) {
        if (this.rc <= 3) {
            Log.e("GAV3", z(str));
        }
    }

    public int getLogLevel() {
        return this.rc;
    }

    public void info(String str) {
        if (this.rc <= 1) {
            Log.i("GAV3", z(str));
        }
    }

    public void setLogLevel(int i) {
        this.rc = i;
    }

    public void verbose(String str) {
        if (this.rc <= 0) {
            Log.v("GAV3", z(str));
        }
    }

    public void warn(String str) {
        if (this.rc <= 2) {
            Log.w("GAV3", z(str));
        }
    }
}