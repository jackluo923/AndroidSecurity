package com.inmobi.monetization.internal;

import java.util.List;

public class NativeAdResponse {
    public static final String KEY_ADS = "ads";
    public static final String KEY_CONTEXTCODE = "contextCode";
    public static final String KEY_NAMESPACE = "namespace";
    public static final String KEY_PUBCONTENT = "pubContent";
    private List a;

    NativeAdResponse(List list) {
        if (list != null) {
            this.a = list;
        }
    }

    List a() {
        return this.a;
    }
}