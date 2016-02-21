package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitial;
import java.lang.reflect.Constructor;

public class CustomEventInterstitialFactory {
    private static CustomEventInterstitialFactory a;

    static {
        a = new CustomEventInterstitialFactory();
    }

    public static CustomEventInterstitial a(String str) {
        return a.b(str);
    }

    protected CustomEventInterstitial b(String str) {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventInterstitial.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventInterstitial) declaredConstructor.newInstance(new Object[0]);
    }
}