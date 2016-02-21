package com.google.android.apps.analytics;

public class Hit {
    final long hitId;
    final String hitString;

    Hit(String str, long j) {
        this.hitString = str;
        this.hitId = j;
    }
}