package com.vungle.publisher;

public final class cc {
    public static String a(Throwable th) {
        String message = th.getMessage();
        return message == null ? th.getClass().getSimpleName() : message;
    }
}