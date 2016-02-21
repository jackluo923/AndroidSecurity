package com.mopub.mobileads.factories;

import com.mopub.mobileads.AdFetcher;
import com.mopub.mobileads.AdViewController;

public class AdFetcherFactory {
    protected static AdFetcherFactory a;

    static {
        a = new AdFetcherFactory();
    }

    public static AdFetcher a(AdViewController adViewController, String str) {
        return a.b(adViewController, str);
    }

    protected AdFetcher b(AdViewController adViewController, String str) {
        return new AdFetcher(adViewController, str);
    }
}