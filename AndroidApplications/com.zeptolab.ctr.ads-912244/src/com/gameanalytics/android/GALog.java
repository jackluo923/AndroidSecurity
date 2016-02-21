package com.gameanalytics.android;

import android.util.Log;

public class GALog {
    private static final String TAG = "GameAnalytics";

    protected static void e(String str) {
        Log.e(TAG, str);
    }

    protected static void e(String str, Throwable th) {
        Log.e(TAG, str, th);
    }

    protected static void i(String str) {
        if (GameAnalytics.LOGGING == 0) {
            Log.i(TAG, str);
        }
    }

    protected static void w(String str) {
        Log.w(TAG, str);
    }
}