package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.MoPubInterstitial;

public class CustomEventInterstitialAdapterFactory {
    private static CustomEventInterstitialAdapterFactory a;

    static {
        a = new CustomEventInterstitialAdapterFactory();
    }

    public static CustomEventInterstitialAdapter a(MoPubInterstitial moPubInterstitial, String str, String str2) {
        return a.b(moPubInterstitial, str, str2);
    }

    protected CustomEventInterstitialAdapter b(MoPubInterstitial moPubInterstitial, String str, String str2) {
        return new CustomEventInterstitialAdapter(moPubInterstitial, str, str2);
    }
}