package com.google.android.gms.analytics;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

final class o {
    private static String b(String str, int i) {
        if (i >= 1) {
            return str + i;
        }
        aa.t("index out of range for " + str + " (" + i + ")");
        return AdTrackerConstants.BLANK;
    }

    static String q(int i) {
        return b("&cd", i);
    }

    static String r(int i) {
        return b("&cm", i);
    }
}