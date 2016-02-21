package com.IQzone.postitial.obfuscated;

enum kv {
    IMPRESSION_TRACKER("Impression"),
    VIDEO_TRACKER("Tracking"),
    CLICK_THROUGH("ClickThrough"),
    CLICK_TRACKER("ClickTracking"),
    MEDIA_FILE("MediaFile"),
    VAST_AD_TAG("VASTAdTagURI"),
    MP_IMPRESSION_TRACKER("MP_TRACKING_URL");
    private final String h;

    static {
        String str = "Impression";
        a = new kv("IMPRESSION_TRACKER", 0, "Impression");
        str = "Tracking";
        b = new kv("VIDEO_TRACKER", 1, "Tracking");
        str = "ClickThrough";
        c = new kv("CLICK_THROUGH", 2, "ClickThrough");
        str = "ClickTracking";
        d = new kv("CLICK_TRACKER", 3, "ClickTracking");
        str = "MediaFile";
        e = new kv("MEDIA_FILE", 4, "MediaFile");
        String str2 = "VASTAdTagURI";
        g = new kv("VAST_AD_TAG", 5, "VASTAdTagURI");
        str2 = "MP_TRACKING_URL";
        f = new kv("MP_IMPRESSION_TRACKER", 6, "MP_TRACKING_URL");
        kv[] kvVarArr = new kv[]{a, b, c, d, e, g, f};
    }

    private kv(String str) {
        this.h = str;
    }

    public final String a() {
        return this.h;
    }
}