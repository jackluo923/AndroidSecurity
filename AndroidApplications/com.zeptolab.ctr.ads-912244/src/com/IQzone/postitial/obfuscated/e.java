package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public abstract class e implements ag {
    public static boolean a;
    private static final ql f;
    protected final am b;
    protected final Context c;
    final Executor d;
    final bh e;
    private final Handler g;
    private final px h;

    static {
        f = new ql();
        a = false;
    }

    public e(Context context, px pxVar, px pxVar2) {
        this.b = new am();
        this.d = new no(Executors.newSingleThreadExecutor());
        if (mg.a()) {
            this.c = context;
            this.h = pxVar;
            this.g = new mv();
            this.e = new bh(context, this.b, pxVar2);
            this.d.execute(this.e);
        } else {
            throw new IllegalStateException("<AbstractHoldingRefreshable><1>, must be on main thread");
        }
    }

    public abstract void a(int i);

    public final boolean a() {
        boolean z = false;
        try {
            boolean z2;
            synchronized (this.b) {
                if (this.b.b()) {
                    z2 = z;
                } else {
                    boolean e;
                    long currentTimeMillis = System.currentTimeMillis();
                    e = (this.b.h() >= currentTimeMillis || currentTimeMillis - this.b.h() <= ((long) (((jl) this.h.a()).f() * 1000))) ? this.b.e() : z;
                    ql qlVar = f;
                    new StringBuilder(" AD READY ").append(this.b.e()).append(" ").append(e).append(" ").append(this.b.h()).append(" ").append(currentTimeMillis - this.b.h()).append(" ").append(((jl) this.h.a()).f() * 1000).append(toString()).toString();
                    z2 = e;
                }
            }
            return z2;
        } catch (om e2) {
            qlVar = f;
            return z;
        }
    }

    public final int b() {
        int i;
        synchronized (this.b) {
            this.b.a();
            this.b.a(false);
            this.b.b(false);
            this.b.c(false);
            this.b.a(null);
            i = this.b.i();
            this.g.post(new f(this, i));
        }
        return i;
    }

    public final void b(int i) {
        synchronized (this.b) {
            if (this.b.i() == i) {
                this.b.a(true);
            }
        }
    }

    public void c() {
        ql qlVar = f;
        synchronized (this.b) {
            this.b.a();
            this.b.a(false);
            this.b.b(false);
            this.b.c(false);
            mx j = this.b.j();
            this.b.a(null);
        }
        if (j != null) {
            this.g.post(new g(this, j));
        }
    }

    public final boolean c(int i) {
        boolean f;
        synchronized (this.b) {
            if (i == this.b.i()) {
                f = this.b.f();
            } else {
                f = true;
            }
        }
        return f;
    }

    public final ViewGroup d() {
        return this.b.d();
    }

    public final boolean d(int i) {
        return i == this.b.i();
    }

    public final long e_() {
        long j;
        synchronized (this.b) {
            try {
                int f = ((jl) this.h.a()).f() * 1000;
                j = (long) f;
                j += this.b.h() - System.currentTimeMillis();
            } catch (om e) {
                ql qlVar = f;
                return this.b.h();
            }
        }
        return j;
    }
}