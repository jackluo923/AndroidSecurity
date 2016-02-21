package com.IQzone.postitial.obfuscated;

final class gx implements Runnable {
    private /* synthetic */ int a;
    private /* synthetic */ gw b;

    gx(gw gwVar, int i) {
        this.b = gwVar;
        this.a = i;
    }

    public final void run() {
        try {
            this.b.a.a("postitial-logevent-sequence", String.valueOf(this.a));
        } catch (om e) {
            gv.i();
        }
    }
}