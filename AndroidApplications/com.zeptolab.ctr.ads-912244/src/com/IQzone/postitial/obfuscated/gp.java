package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executors;

public class gp extends mq {
    private static final ql d;
    private final oc e;
    private volatile gs f;
    private volatile gt g;

    static {
        d = new ql();
    }

    public gp() {
        this(new oc(new no(Executors.newSingleThreadExecutor())));
    }

    private gp(oc ocVar) {
        super(gu.class, ocVar);
        this.e = ocVar;
    }

    protected final void a() {
        this.f = null;
    }

    public final void a(gs gsVar) {
        ql qlVar = d;
        this.e.execute(new gr(this, gsVar));
    }

    protected final /* synthetic */ void a(lx lxVar) {
        this.e.execute(new gq(this, (gu) lxVar));
    }
}