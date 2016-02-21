package com.flurry.sdk;

public enum do_ {
    PhoneId(0, true),
    Sha1Imei(5, false),
    AndroidAdvertisingId(13, true);
    public final int d;
    public final boolean e;

    static {
        a = new do_("PhoneId", 0, 0, true);
        b = new do_("Sha1Imei", 1, 5, false);
        c = new do_("AndroidAdvertisingId", 2, 13, true);
        f = new do_[]{a, b, c};
    }

    private do_(int i, boolean z) {
        this.d = i;
        this.e = z;
    }
}