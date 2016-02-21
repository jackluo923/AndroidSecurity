package com.google.android.apps.analytics;

class Referrer {
    private final int index;
    private final String referrer;
    private final long timeStamp;
    private final int visit;

    Referrer(String str, long j, int i, int i2) {
        this.referrer = str;
        this.timeStamp = j;
        this.visit = i;
        this.index = i2;
    }

    int getIndex() {
        return this.index;
    }

    String getReferrerString() {
        return this.referrer;
    }

    long getTimeStamp() {
        return this.timeStamp;
    }

    int getVisit() {
        return this.visit;
    }
}