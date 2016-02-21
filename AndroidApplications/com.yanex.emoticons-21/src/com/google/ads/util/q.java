package com.google.ads.util;

import android.webkit.ConsoleMessage.MessageLevel;

final /* synthetic */ class q {
    static final /* synthetic */ int[] a;

    static {
        a = new int[MessageLevel.values().length];
        try {
            a[MessageLevel.ERROR.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[MessageLevel.WARNING.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[MessageLevel.LOG.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[MessageLevel.TIP.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        a[MessageLevel.DEBUG.ordinal()] = 5;
    }
}