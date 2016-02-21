package com.IQzone.postitial.obfuscated;

final class hp implements Runnable {
    private /* synthetic */ int a;
    private /* synthetic */ hf b;

    hp(hf hfVar, int i) {
        this.b = hfVar;
        this.a = i;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-interval", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}