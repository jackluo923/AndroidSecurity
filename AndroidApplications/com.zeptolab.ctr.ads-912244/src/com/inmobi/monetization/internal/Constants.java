package com.inmobi.monetization.internal;

public class Constants {
    public static final String DUPLICATE_AD_REQUEST = "Banner Ad request failed : Duplicate request";
    public static final String DUPLICATE_AD_REQUEST_SLOT = "Ad request failed : Duplicate request for slot : ";
    public static final String EMPTY_SLOTID = "Slot Id cannot be empty";
    public static final int HTTP_TIMEOUT = 15000;
    public static final String INVALID_INTERSTITIAL_STATE = "Interstitial Ad request failed : Invalid state";
    public static final String LOG_TAG = "[InMobi]-[Monetization]";
    public static String MEDIATION_RULE_SERVER = null;
    public static final String MEDIATION_SDK_VERSION = "4.4.1";
    public static final String NULL_ACTIVITY = "Activity cannot be null";
    public static final String NULL_SLOTID = "Slot Id cannot be null";
    public static final String OVERLAY_AD = "Ad request failed : Overlay Ad present";

    static {
        MEDIATION_RULE_SERVER = "https://apt.md.inmobi.net/ruleserver/RuleService";
    }
}