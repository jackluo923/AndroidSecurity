package com.google.android.gms.internal;

import android.util.Log;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class el {
    private final String Cd;

    public el(String str) {
        this.Cd = (String) er.f(str);
    }

    public boolean Q(int i) {
        return Log.isLoggable(this.Cd, i);
    }

    public void a(String str, String str2, Throwable th) {
        if (Q(IabHelper.BILLING_RESPONSE_RESULT_ERROR)) {
            Log.e(str, str2, th);
        }
    }

    public void f(String str, String str2) {
        if (Q(GoogleScorer.CLIENT_PLUS)) {
            Log.v(str, str2);
        }
    }

    public void g(String str, String str2) {
        if (Q(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR)) {
            Log.w(str, str2);
        }
    }

    public void h(String str, String str2) {
        if (Q(IabHelper.BILLING_RESPONSE_RESULT_ERROR)) {
            Log.e(str, str2);
        }
    }
}