package com.facebook.ads.internal;

import java.util.Locale;

public enum AdInvalidationBehavior {
    NONE,
    INSTALLED,
    NOT_INSTALLED;

    public static AdInvalidationBehavior fromString(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return NONE;
        }
        try {
            return valueOf(str.toUpperCase(Locale.US));
        } catch (IllegalArgumentException e) {
            return NONE;
        }
    }
}