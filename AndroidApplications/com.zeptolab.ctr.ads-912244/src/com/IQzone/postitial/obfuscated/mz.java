package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Executor;

public class mz {
    private static final ql a;
    private final mx b;
    private final Executor c;
    private final long d;
    private final Object e;
    private final pw f;
    private boolean g;

    static {
        a = new ql();
    }

    public mz(mx mxVar, Executor executor, long j) {
        this(mxVar, executor, 500, new nb());
    }

    public mz(mx mxVar, Executor executor, long j, pw pwVar) {
        this.e = new Object();
        this.f = pwVar;
        this.b = mxVar;
        this.c = executor;
        this.d = j;
    }

    public final synchronized void a() {
        try {
            if (!this.g) {
                try {
                    synchronized (this.f) {
                        if (((Boolean) this.f.a()).booleanValue()) {
                            this.f.a(Boolean.valueOf(false));
                            this.g = true;
                            this.c.execute(new nc(this));
                        }
                    }
                } catch (om e) {
                    throw new RuntimeException("<Debouncer><2>, this shouldn't happen", e);
                }
            }
        } catch (Throwable th) {
        }
    }

    public final void a(boolean z) {
        synchronized (this.f) {
            try {
                this.f.a(Boolean.valueOf(true));
            } catch (om e) {
                Throwable th = e;
                throw new RuntimeException(new StringBuilder("<Debouncer><3>, Debouncer failed to push. ").append(th.getMessage()).toString(), th);
            } catch (Throwable th2) {
            }
        }
    }
}