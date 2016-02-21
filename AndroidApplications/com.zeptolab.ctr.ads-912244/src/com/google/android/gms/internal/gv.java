package com.google.android.gms.internal;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class gv {
    public static String aW(int i) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "TURN_STATUS_INVITED";
            case GoogleScorer.CLIENT_GAMES:
                return "TURN_STATUS_MY_TURN";
            case GoogleScorer.CLIENT_PLUS:
                return "TURN_STATUS_THEIR_TURN";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "TURN_STATUS_COMPLETE";
            default:
                fz.h("MatchTurnStatus", "Unknown match turn status: " + i);
                return "TURN_STATUS_UNKNOWN";
        }
    }
}