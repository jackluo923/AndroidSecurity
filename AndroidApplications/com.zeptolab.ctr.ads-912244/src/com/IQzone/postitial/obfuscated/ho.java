package com.IQzone.postitial.obfuscated;

final class ho implements Runnable {
    private /* synthetic */ boolean a;
    private /* synthetic */ hf b;

    ho(hf hfVar, boolean z) {
        this.b = hfVar;
        this.a = z;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-ads-enabled", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}