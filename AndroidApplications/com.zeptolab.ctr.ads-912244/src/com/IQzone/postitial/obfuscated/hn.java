package com.IQzone.postitial.obfuscated;

final class hn implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ hf b;

    hn(hf hfVar, String str) {
        this.b = hfVar;
        this.a = str;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-config-version", this.a);
        } catch (om e) {
            gv.i();
        }
    }
}