package com.IQzone.postitial.obfuscated;

import java.util.concurrent.Callable;

final class nl implements Callable {
    private /* synthetic */ nz a;
    private /* synthetic */ nk b;

    nl(nk nkVar, nz nzVar) {
        this.b = nkVar;
        this.a = nzVar;
    }

    private Void a() {
        if (this.b.a.a(this.a)) {
            try {
                this.a.a().run();
            } catch (Throwable th) {
                nh.a;
            }
            this.b.a.b(this.a);
        }
        return null;
    }

    public final /* synthetic */ Object call() {
        return a();
    }
}