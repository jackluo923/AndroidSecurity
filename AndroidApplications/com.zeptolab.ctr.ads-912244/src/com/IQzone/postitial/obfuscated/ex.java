package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;
import com.IQzone.postitial.b.g;
import java.util.concurrent.ExecutorService;

public final class ex implements mx {
    final /* synthetic */ pw a;
    final /* synthetic */ b b;
    private /* synthetic */ ExecutorService c;

    public ex(b bVar, ExecutorService executorService, pw pwVar) {
        this.b = bVar;
        this.c = executorService;
        this.a = pwVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        g gVar = (g) obj;
        if (gVar != null) {
            this.c.execute(new ey(this, gVar));
        }
        return null;
    }
}