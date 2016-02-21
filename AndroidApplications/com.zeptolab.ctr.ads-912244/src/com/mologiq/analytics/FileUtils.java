package com.mologiq.analytics;

import java.util.regex.Pattern;

class FileUtils {
    private static final Pattern a;

    static {
        a = Pattern.compile("[\\w%+,./=_-]+");
    }

    static native int setPermissions(String str, int i, int i2, int i3);
}