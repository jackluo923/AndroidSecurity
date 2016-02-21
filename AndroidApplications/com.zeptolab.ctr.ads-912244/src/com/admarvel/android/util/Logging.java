package com.admarvel.android.util;

import android.util.Log;
import com.admarvel.android.ads.AdMarvelUtils;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class Logging {
    private static final String LOGTAG = "admarvel";

    public static void log(String str) {
        if (Log.isLoggable(LOGTAG, GoogleScorer.CLIENT_PLUS) || AdMarvelUtils.isLoggingEnabled()) {
            Log.d(LOGTAG, str);
        }
    }
}