package com.IQzone.postitial.obfuscated;

import com.IQzone.postitial.b;
import java.util.concurrent.ExecutorService;

public final class fv implements mx {
    final /* synthetic */ b a;
    private /* synthetic */ ExecutorService b;

    public fv(b bVar, ExecutorService executorService) {
        this.a = bVar;
        this.b = executorService;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.b.execute(new fw(this, (ee) obj));
        return null;
    }
}