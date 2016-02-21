package com.google.ads;

final class bb implements Runnable {
    final /* synthetic */ ax a;
    final /* synthetic */ d b;
    final /* synthetic */ ba c;

    bb(ba baVar, ax axVar, d dVar) {
        this.c = baVar;
        this.a = axVar;
        this.b = dVar;
    }

    public final void run() {
        ba.a(this.c, this.a, this.b);
        synchronized (ba.a(this.c)) {
            ba.b(this.c);
        }
    }
}