package com.mopub.mobileads;

import com.mopub.mobileads.MoPubInterstitial.MoPubInterstitialView;
import java.util.HashMap;
import java.util.Map;

public class AdTypeTranslator {
    private static Map a;

    static {
        a = new HashMap();
        a.put("admob_native_banner", "com.mopub.mobileads.GoogleAdMobBanner");
        a.put("admob_full_interstitial", "com.mopub.mobileads.GoogleAdMobInterstitial");
        a.put("millennial_native_banner", "com.mopub.mobileads.MillennialBanner");
        a.put("millennial_full_interstitial", "com.mopub.mobileads.MillennialInterstitial");
        a.put("mraid_banner", "com.mopub.mobileads.MraidBanner");
        a.put("mraid_interstitial", "com.mopub.mobileads.MraidInterstitial");
        a.put("html_banner", "com.mopub.mobileads.HtmlBanner");
        a.put("html_interstitial", "com.mopub.mobileads.HtmlInterstitial");
    }

    static String a(MoPubView moPubView, String str, String str2) {
        if ("html".equals(str) || "mraid".equals(str)) {
            return a(moPubView) ? (String) a.get(new StringBuilder(String.valueOf(str)).append("_interstitial").toString()) : (String) a.get(new StringBuilder(String.valueOf(str)).append("_banner").toString());
        } else if ("interstitial".equals(str)) {
            return (String) a.get(new StringBuilder(String.valueOf(str2)).append("_interstitial").toString());
        } else {
            return (String) a.get(new StringBuilder(String.valueOf(str)).append("_banner").toString());
        }
    }

    private static boolean a(MoPubView moPubView) {
        return moPubView instanceof MoPubInterstitialView;
    }
}