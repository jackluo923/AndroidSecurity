package com.IQzone.postitial.obfuscated;

import java.util.HashSet;
import java.util.Queue;
import java.util.concurrent.Executor;

public class ja extends oa {
    private static final ql a;
    private final String b;
    private final ma c;
    private final es d;
    private final hf e;
    private final mx f;

    static {
        a = new ql();
    }

    public ja(Executor executor, Queue queue, String str, ma maVar, es esVar, hf hfVar, mx mxVar) {
        super(executor, queue, 750);
        this.f = mxVar;
        this.e = hfVar;
        this.b = str;
        this.c = maVar;
        this.d = esVar;
    }

    protected final void a() {
    }

    protected final /* synthetic */ void a(Object obj) {
        ql qlVar = a;
        try {
            gi a = this.c.a(new eg(this.b, ei.b(), ei.c(), this.e.d()));
            this.d.a = a.f;
            this.d.c = a.d;
            this.d.b = (long) ((a.e * 60) * 1000);
            this.f.a(new HashSet(a.g));
            this.e.a(true);
            this.e.c(a.c);
            this.e.b(a.b);
            this.e.b(a.f);
            this.e.b(a.d);
            this.e.a(a.e);
            this.e.c(a.h);
            this.e.a(a.i);
            this.e.d(a.j);
            this.e.d(a.k);
        } catch (mc e) {
            qlVar = a;
        } catch (md e2) {
            md mdVar = e2;
            ql qlVar2 = a;
            new StringBuilder("<UpdateConfigRunner><2>, ServiceDAOException: ").append(mdVar.getMessage()).toString();
            throw new ol("<UpdateConfigRunner><3>, JobRunningException:");
        }
    }

    protected void b() {
    }

    public final /* synthetic */ void b(Object obj) {
        obj = (jb) obj;
        if (d()) {
            super.c();
        } else {
            super.b(obj);
        }
    }
}