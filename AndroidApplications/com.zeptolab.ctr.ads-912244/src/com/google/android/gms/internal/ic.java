package com.google.android.gms.internal;

import com.google.android.gms.internal.hx.a.a;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class ic {
    private static int OB;
    private static int OC;
    private final hl Lk;
    private final String OD;
    private final BlockingQueue OE;
    private int OF;
    private final int Ou;
    private final Object mg;

    static {
        OB = 10000;
        OC = 1000;
    }

    public ic(hl hlVar, String str, int i) {
        this.mg = new Object();
        this.Lk = hlVar;
        this.OD = str;
        this.Ou = i;
        this.OE = new LinkedBlockingQueue(OB);
        this.OF = OC;
    }

    public void a(a aVar) {
        aVar.aK(this.OD);
        aVar.bv(this.Ou);
        this.OE.offer(aVar.gJ());
    }
}