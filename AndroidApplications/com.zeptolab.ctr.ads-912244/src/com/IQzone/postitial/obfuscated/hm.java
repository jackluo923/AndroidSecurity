package com.IQzone.postitial.obfuscated;

final class hm implements Runnable {
    private /* synthetic */ boolean a;
    private /* synthetic */ hf b;

    hm(hf hfVar, boolean z) {
        this.b = hfVar;
        this.a = z;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-initialized", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}