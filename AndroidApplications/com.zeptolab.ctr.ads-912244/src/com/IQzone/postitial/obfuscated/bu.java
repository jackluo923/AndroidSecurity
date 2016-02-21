package com.IQzone.postitial.obfuscated;

final class bu implements px {
    private int a;

    bu() {
    }

    private synchronized Integer b() {
        int i;
        i = this.a;
        this.a = i + 1;
        return Integer.valueOf(i);
    }

    public final /* synthetic */ Object a() {
        return b();
    }
}