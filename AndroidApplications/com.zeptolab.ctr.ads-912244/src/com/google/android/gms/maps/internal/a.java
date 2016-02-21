package com.google.android.gms.maps.internal;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class a {
    public static Boolean a_(byte b) {
        switch (b) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return Boolean.FALSE;
            case GoogleScorer.CLIENT_GAMES:
                return Boolean.TRUE;
            default:
                return null;
        }
    }

    public static byte c(Boolean bool) {
        if (bool == null) {
            return (byte) -1;
        }
        return bool.booleanValue() ? (byte) 1 : (byte) 0;
    }
}