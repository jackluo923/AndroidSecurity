package com.vungle.publisher;

public enum ct {
    PostThread,
    MainThread,
    BackgroundThread,
    Async;

    static {
        a = new ct("PostThread", 0);
        b = new ct("MainThread", 1);
        c = new ct("BackgroundThread", 2);
        d = new ct("Async", 3);
        e = new ct[]{a, b, c, d};
    }
}