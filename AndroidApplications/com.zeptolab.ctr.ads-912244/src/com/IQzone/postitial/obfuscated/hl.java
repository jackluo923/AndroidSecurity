package com.IQzone.postitial.obfuscated;

final class hl implements Runnable {
    private /* synthetic */ String a;
    private /* synthetic */ hf b;

    hl(hf hfVar, String str) {
        this.b = hfVar;
        this.a = str;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-device-id", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}