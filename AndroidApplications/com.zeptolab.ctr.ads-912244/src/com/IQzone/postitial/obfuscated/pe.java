package com.IQzone.postitial.obfuscated;

final class pe extends pv {
    private int a;
    private final int b;

    pe(pd pdVar) {
        this.b = (int) (System.currentTimeMillis() % 1000);
    }

    private synchronized String b() {
        StringBuilder append;
        int i;
        append = new StringBuilder().append(String.valueOf(this.b));
        i = this.a;
        this.a = i + 1;
        return append.append(i).toString();
    }

    public final /* synthetic */ Object a() {
        return b();
    }
}