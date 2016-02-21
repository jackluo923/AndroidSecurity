package com.google.android.gms.internal;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class gt {
    public static boolean isValid(int i) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_GAMES:
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return true;
            default:
                return false;
        }
    }
}