package com.amazon.device.ads;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

abstract class MraidProperty {
    MraidProperty() {
    }

    private String a(String str) {
        return str != null ? str.replaceAll("[^a-zA-Z0-9_,:\\s\\{\\}\\'\\\"]", AdTrackerConstants.BLANK) : AdTrackerConstants.BLANK;
    }

    public abstract String toJsonPair();

    public String toString() {
        return a(toJsonPair());
    }
}