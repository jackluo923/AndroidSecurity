package com.chartboost.sdk.impl;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import java.util.regex.Pattern;

public class af {
    private static Pattern a;

    public static class a extends RuntimeException {
        final String a;

        a(String str) {
            super(str);
            this.a = str;
        }

        public String toString() {
            return this.a;
        }
    }

    static {
        a = Pattern.compile("\\s+", ApiEventType.API_MRAID_PLAY_VIDEO);
    }

    public static void a(int i, int i2) {
        if (i != i2) {
            throw new a(AdTrackerConstants.BLANK + i + " != " + i2);
        }
    }
}