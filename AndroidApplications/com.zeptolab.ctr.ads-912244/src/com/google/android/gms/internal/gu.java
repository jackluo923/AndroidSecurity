package com.google.android.gms.internal;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class gu {
    public static String aW(int i) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "DAILY";
            case GoogleScorer.CLIENT_GAMES:
                return "WEEKLY";
            case GoogleScorer.CLIENT_PLUS:
                return "ALL_TIME";
            default:
                throw new IllegalArgumentException("Unknown time span " + i);
        }
    }
}