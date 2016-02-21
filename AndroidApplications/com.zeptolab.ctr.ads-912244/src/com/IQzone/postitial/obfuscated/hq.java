package com.IQzone.postitial.obfuscated;

final class hq implements Runnable {
    private /* synthetic */ int a;
    private /* synthetic */ hf b;

    hq(hf hfVar, int i) {
        this.b = hfVar;
        this.a = i;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-ads-day", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}