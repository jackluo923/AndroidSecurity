package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;
import java.util.concurrent.ExecutorService;

public final class ez implements mx {
    final /* synthetic */ pw a;
    final /* synthetic */ b b;
    private /* synthetic */ ExecutorService c;

    public ez(b bVar, ExecutorService executorService, pw pwVar) {
        this.b = bVar;
        this.c = executorService;
        this.a = pwVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.c.execute(new fa(this));
        return null;
    }
}