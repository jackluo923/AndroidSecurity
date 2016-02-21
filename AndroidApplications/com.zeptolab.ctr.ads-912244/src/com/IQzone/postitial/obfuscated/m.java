package com.IQzone.postitial.obfuscated;

public enum m {
    VIDEO,
    RICH_MEDIA_GENERIC,
    STATIC_MED_RECT,
    RICH_MEDIA_BANNER,
    RICH_MEDIA_MED_RECT,
    STATIC_BANNER,
    STATIC_INTERSTITIAL,
    RICH_MEDIA_INTERSTITIAL,
    STATIC_INTERSTITIAL_LANDSCAPE,
    RICH_MEDIA_INTERSTITIAL_LANDSCAPE,
    TABLET_STATIC_INTERSTITIAL_LANDSCAPE,
    TABLET_STATIC_INTERSTITIAL,
    TABLET_RICH_MEDIA_INTERSTITIAL,
    TABLET_RICH_MEDIA_INTERSTITIAL_LANDSCAPE,
    STATIC_LEADERBOARD,
    STATIC_SKYSCRAPER,
    RICH_MEDIA_LEADERBOARD,
    RICH_MEDIA_SKYSCRAPER,
    VIDEO_TABLET;

    static {
        a = new m("VIDEO", 0);
        b = new m("RICH_MEDIA_GENERIC", 1);
        c = new m("STATIC_MED_RECT", 2);
        d = new m("RICH_MEDIA_BANNER", 3);
        e = new m("RICH_MEDIA_MED_RECT", 4);
        f = new m("STATIC_BANNER", 5);
        g = new m("STATIC_INTERSTITIAL", 6);
        h = new m("RICH_MEDIA_INTERSTITIAL", 7);
        i = new m("STATIC_INTERSTITIAL_LANDSCAPE", 8);
        j = new m("RICH_MEDIA_INTERSTITIAL_LANDSCAPE", 9);
        k = new m("TABLET_STATIC_INTERSTITIAL_LANDSCAPE", 10);
        l = new m("TABLET_STATIC_INTERSTITIAL", 11);
        m = new m("TABLET_RICH_MEDIA_INTERSTITIAL", 12);
        n = new m("TABLET_RICH_MEDIA_INTERSTITIAL_LANDSCAPE", 13);
        o = new m("STATIC_LEADERBOARD", 14);
        p = new m("STATIC_SKYSCRAPER", 15);
        q = new m("RICH_MEDIA_LEADERBOARD", 16);
        r = new m("RICH_MEDIA_SKYSCRAPER", 17);
        s = new m("VIDEO_TABLET", 18);
        t = new m[]{a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s};
    }

    public static m[] a() {
        return (m[]) t.clone();
    }
}