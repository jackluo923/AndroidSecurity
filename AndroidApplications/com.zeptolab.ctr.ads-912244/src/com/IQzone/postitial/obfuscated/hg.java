package com.IQzone.postitial.obfuscated;

final class hg implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ hf b;

    hg(hf hfVar, String str) {
        this.b = hfVar;
        this.a = str;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-assets", this.a);
        } catch (om e) {
            gv.i();
        }
    }
}