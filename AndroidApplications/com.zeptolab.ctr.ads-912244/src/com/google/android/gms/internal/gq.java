package com.google.android.gms.internal;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class gq {
    public static String aW(int i) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "PUBLIC";
            case GoogleScorer.CLIENT_GAMES:
                return "SOCIAL";
            default:
                throw new IllegalArgumentException("Unknown leaderboard collection: " + i);
        }
    }
}