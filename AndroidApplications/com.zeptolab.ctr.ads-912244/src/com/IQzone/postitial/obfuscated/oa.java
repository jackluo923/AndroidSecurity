package com.IQzone.postitial.obfuscated;

import java.util.Queue;
import java.util.concurrent.Executor;

public abstract class oa {
    private static final ql a;
    private final Executor b;
    private boolean c;
    private final Queue d;
    private int e;
    private final int f;
    private boolean g;

    static {
        a = new ql();
    }

    public oa(Executor executor, Queue queue, int i) {
        this.e = 0;
        this.g = true;
        this.f = 750;
        this.b = executor;
        this.d = queue;
        c();
    }

    static /* synthetic */ int b(oa oaVar) {
        int i = oaVar.e;
        oaVar.e = i + 1;
        return i;
    }

    protected abstract void a();

    protected abstract void a(Object obj);

    public final void a(boolean z) {
        this.g = true;
    }

    protected abstract void b();

    public void b(Object obj) {
        synchronized (this.d) {
            if (this.f >= 0 && this.d.size() < this.f) {
                this.d.add(obj);
            }
            c();
        }
    }

    public final void c() {
        ql qlVar = a;
        synchronized (this.d) {
            qlVar = a;
            new StringBuilder("1 ").append(this.c).append(" ").append(this.g).append(" ").append(this.d.size()).toString();
            if (!this.c && this.d.size() > 0 && this.g) {
                qlVar = a;
                this.c = true;
                this.b.execute(new ob(this));
            }
        }
    }

    public final boolean d() {
        boolean z;
        synchronized (this.d) {
            z = this.d.size() > 0;
        }
        return z;
    }

    public final boolean e() {
        boolean z;
        synchronized (this.d) {
            z = this.d.size() > 0 && this.c;
        }
        return z;
    }
}