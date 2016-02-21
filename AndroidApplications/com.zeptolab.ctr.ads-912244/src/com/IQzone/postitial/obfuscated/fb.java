package com.IQzone.postitial.obfuscated;

import android.os.Handler;
import com.IQzone.postitial.b;
import java.util.concurrent.ExecutorService;

public final class fb implements mx {
    final /* synthetic */ ExecutorService a;
    final /* synthetic */ pw b;
    final /* synthetic */ Handler c;
    final /* synthetic */ b d;

    public fb(b bVar, ExecutorService executorService, pw pwVar, Handler handler) {
        this.d = bVar;
        this.a = executorService;
        this.b = pwVar;
        this.c = handler;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.a.execute(new fc(this));
        return null;
    }
}