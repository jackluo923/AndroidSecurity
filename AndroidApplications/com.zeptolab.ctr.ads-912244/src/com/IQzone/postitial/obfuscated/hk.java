package com.IQzone.postitial.obfuscated;

import java.util.Map;

final class hk implements Runnable {
    private /* synthetic */ Map a;
    private /* synthetic */ hf b;

    hk(hf hfVar, Map map) {
        this.b = hfVar;
        this.a = map;
    }

    public final void run() {
        try {
            this.b.b.a("namedTypes", this.a);
        } catch (om e) {
            gv.i();
        }
    }
}