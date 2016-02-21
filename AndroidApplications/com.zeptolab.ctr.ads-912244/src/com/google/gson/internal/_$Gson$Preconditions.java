package com.google.gson.internal;

public final class _$Gson$Preconditions {
    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static Object checkNotNull(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException();
    }
}