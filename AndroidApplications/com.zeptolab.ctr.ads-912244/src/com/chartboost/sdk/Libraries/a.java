package com.chartboost.sdk.Libraries;

import com.chartboost.sdk.CBPreferences;
import com.mixpanel.android.mpmetrics.j;

public final class a {
    public static String a_(CBPreferences cBPreferences) {
        return "Chartboost-Android-SDK" + cBPreferences.getUserAgentSuffix() + " " + j.a;
    }
}