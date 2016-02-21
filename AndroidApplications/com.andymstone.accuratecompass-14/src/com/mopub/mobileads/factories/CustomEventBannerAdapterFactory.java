package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventBannerAdapter;
import com.mopub.mobileads.MoPubView;

public class CustomEventBannerAdapterFactory {
    private static CustomEventBannerAdapterFactory a;

    static {
        a = new CustomEventBannerAdapterFactory();
    }

    public static CustomEventBannerAdapter a(MoPubView moPubView, String str, String str2) {
        return a.b(moPubView, str, str2);
    }

    protected CustomEventBannerAdapter b(MoPubView moPubView, String str, String str2) {
        return new CustomEventBannerAdapter(moPubView, str, str2);
    }
}