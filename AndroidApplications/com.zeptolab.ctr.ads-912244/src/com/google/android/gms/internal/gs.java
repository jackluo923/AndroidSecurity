package com.google.android.gms.internal;

import com.zeptolab.ctr.scorer.GoogleScorer;

public final class gs {
    public static String aW(int i) {
        switch (i) {
            case GoogleScorer.CLIENT_GAMES:
                return "GIFT";
            case GoogleScorer.CLIENT_PLUS:
                return "WISH";
            default:
                fz.h("RequestType", "Unknown request type: " + i);
                return "UNKNOWN_TYPE";
        }
    }
}