package com.google.android.gms.internal;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class gr {
    public static boolean isValid(int i) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_GAMES:
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
            case GoogleScorer.CLIENT_APPSTATE:
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return true;
            default:
                return false;
        }
    }
}