package com.IQzone.postitial.obfuscated;

final class mt implements Runnable {
    private /* synthetic */ lx a;
    private /* synthetic */ mq b;

    mt(mq mqVar, lx lxVar) {
        this.b = mqVar;
        this.a = lxVar;
    }

    public final void run() {
        mi miVar = this.b.a;
        lx lxVar = this.a;
        synchronized (miVar.a) {
            miVar.a.remove(lxVar);
        }
    }
}