package com.google.android.gms.internal;

import android.util.Log;
import com.google.ads.AdRequest;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class da {
    public static void a(String str, Throwable th) {
        if (n(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
            Log.d(AdRequest.LOGTAG, str, th);
        }
    }

    public static void b(String str, Throwable th) {
        if (n(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR)) {
            Log.w(AdRequest.LOGTAG, str, th);
        }
    }

    public static boolean n(int i) {
        return (i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i)) && i != 2;
    }

    public static void s(String str) {
        if (n(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
            Log.d(AdRequest.LOGTAG, str);
        }
    }

    public static void t(String str) {
        if (n(IabHelper.BILLING_RESPONSE_RESULT_ERROR)) {
            Log.e(AdRequest.LOGTAG, str);
        }
    }

    public static void u(String str) {
        if (n(GoogleScorer.CLIENT_APPSTATE)) {
            Log.i(AdRequest.LOGTAG, str);
        }
    }

    public static void v(String str) {
        if (n(GoogleScorer.CLIENT_PLUS)) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static void w(String str) {
        if (n(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR)) {
            Log.w(AdRequest.LOGTAG, str);
        }
    }
}