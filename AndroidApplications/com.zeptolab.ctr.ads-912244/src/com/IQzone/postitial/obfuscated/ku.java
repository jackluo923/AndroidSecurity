package com.IQzone.postitial.obfuscated;

import com.admarvel.android.ads.Constants;

enum ku {
    START("start"),
    FIRST_QUARTILE("firstQuartile"),
    MIDPOINT("midpoint"),
    THIRD_QUARTILE("thirdQuartile"),
    COMPLETE(Constants.NATIVE_AD_COMPLETE_ELEMENT);
    private final String f;

    static {
        String str = "start";
        e = new ku("START", 0, "start");
        str = "firstQuartile";
        a = new ku("FIRST_QUARTILE", 1, "firstQuartile");
        str = "midpoint";
        b = new ku("MIDPOINT", 2, "midpoint");
        str = "thirdQuartile";
        c = new ku("THIRD_QUARTILE", 3, "thirdQuartile");
        String str2 = "COMPLETE";
        str = Constants.NATIVE_AD_COMPLETE_ELEMENT;
        d = new ku(str2, 4, Constants.NATIVE_AD_COMPLETE_ELEMENT);
        ku[] kuVarArr = new ku[]{e, a, b, c, d};
    }

    private ku(String str) {
        this.f = str;
    }

    public final String a() {
        return this.f;
    }
}