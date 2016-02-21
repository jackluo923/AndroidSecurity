package com.IQzone.postitial.obfuscated;

final class jj implements Runnable {
    private /* synthetic */ jl a;
    private /* synthetic */ ei b;
    private /* synthetic */ al c;
    private /* synthetic */ nt d;
    private /* synthetic */ jg e;

    jj(jg jgVar, jl jlVar, ei eiVar, al alVar, nt ntVar) {
        this.e = jgVar;
        this.a = jlVar;
        this.b = eiVar;
        this.c = alVar;
        this.d = ntVar;
    }

    public final void run() {
        jg.a();
        new StringBuilder("loading module from classpath:").append(this.a.a()).toString();
        ei eiVar = this.b;
        this.d.a = ei.a(this.a.a(), jg.f(this.e), this.c);
        this.d.b();
    }
}