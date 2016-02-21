package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventBanner;
import java.lang.reflect.Constructor;

public class CustomEventBannerFactory {
    private static CustomEventBannerFactory a;

    static {
        a = new CustomEventBannerFactory();
    }

    public static CustomEventBanner a(String str) {
        return a.b(str);
    }

    protected CustomEventBanner b(String str) {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventBanner.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventBanner) declaredConstructor.newInstance(new Object[0]);
    }
}