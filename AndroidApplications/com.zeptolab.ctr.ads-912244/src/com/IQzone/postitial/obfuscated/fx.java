package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;
import java.util.concurrent.ExecutorService;

public final class fx implements mx {
    final /* synthetic */ b a;
    private final long b;
    private /* synthetic */ ExecutorService c;

    public fx(b bVar, ExecutorService executorService) {
        this.a = bVar;
        this.c = executorService;
        this.b = System.currentTimeMillis() - 3600001;
    }

    private Void a() {
        try {
            if (!(System.currentTimeMillis() - this.b <= 3600000 || this.a.c.a || this.a.f == null)) {
                this.c.execute(new fy(this));
            }
        } catch (Throwable th) {
            b.a;
        }
        return null;
    }

    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        return a();
    }
}