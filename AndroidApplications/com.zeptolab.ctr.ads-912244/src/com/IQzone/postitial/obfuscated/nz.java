package com.IQzone.postitial.obfuscated;

public final class nz implements Comparable {
    private final Runnable a;
    private final int b;

    public nz(int i, Runnable runnable) {
        this.a = runnable;
        this.b = i;
    }

    public final Runnable a() {
        return this.a;
    }

    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.b - ((nz) obj).b;
    }
}