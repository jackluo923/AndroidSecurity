package com.IQzone.postitial.obfuscated;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;

public final class gb extends mq {
    private final oc d;
    private final List e;

    static {
    }

    public gb() {
        this(new oc(new no(Executors.newSingleThreadExecutor())));
    }

    private gb(oc ocVar) {
        super(gf.class, ocVar);
        this.e = new ArrayList();
        this.d = ocVar;
    }

    protected final void a() {
        this.d.execute(new gd(this));
    }

    protected final /* synthetic */ void a(lx lxVar) {
        this.d.execute(new gc(this));
    }

    public final void a(mx mxVar) {
        this.d.execute(new ge(this, mxVar));
    }
}