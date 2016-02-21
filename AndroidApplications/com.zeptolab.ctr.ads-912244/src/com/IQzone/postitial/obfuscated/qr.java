package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class qr extends mq {
    private static final ql d;
    private final Executor e;
    private volatile k f;

    static {
        d = new ql();
    }

    public qr() {
        this(new oc(new no(Executors.newSingleThreadExecutor())));
    }

    private qr(oc ocVar) {
        super(c.class, ocVar);
        this.e = ocVar;
    }

    protected final void a() {
    }

    public final void a(k kVar) {
        this.e.execute(new qs(this, kVar));
    }

    protected final /* synthetic */ void a(lx lxVar) {
        this.e.execute(new qt(this, (c) lxVar));
    }

    public final void c() {
        ql qlVar = d;
        this.e.execute(new b(this));
    }

    public final int d() {
        k kVar = this.f;
        return kVar != null ? kVar.getAdController().b() : -1;
    }

    public final boolean e() {
        k kVar = this.f;
        return kVar != null ? kVar.getAdController().c() : false;
    }

    public final void f() {
        k kVar = this.f;
        if (kVar != null) {
            kVar.getAdController().j();
        }
    }
}