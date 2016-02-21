package com.IQzone.postitial.obfuscated;

final class hi implements Runnable {
    private /* synthetic */ boolean a;
    private /* synthetic */ hf b;

    hi(hf hfVar, boolean z) {
        this.b = hfVar;
        this.a = z;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-rich-media-enable", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}