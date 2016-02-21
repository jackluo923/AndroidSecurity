package com.IQzone.postitial.obfuscated;

final class hr implements Runnable {
    private /* synthetic */ boolean a;
    private /* synthetic */ hf b;

    hr(hf hfVar, boolean z) {
        this.b = hfVar;
        this.a = z;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-logevent-disabled", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}