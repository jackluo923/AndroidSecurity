package com.vungle.publisher;

import android.content.Intent;
import com.vungle.log.Logger;
import com.vungle.publisher.net.http.HttpTransaction;
import java.util.List;
import javax.inject.Inject;

public final class bv extends bs implements com.vungle.publisher.net.http.HttpTransaction.a {
    bj f;

    public static class a {
        @Inject
        public bj a;

        public final bv a_(String str, int i, int i2, com.vungle.publisher.bw.a... aVarArr) {
            bv bvVar = new bv(str, i, i2);
            bvVar.a(aVarArr);
            bvVar.f = this.a;
            return bvVar;
        }
    }

    public bv(String str, int i, int i2) {
        super(str, i, i2);
    }

    private Runnable b(HttpTransaction httpTransaction) {
        Logger.d(Logger.SERVICE_TAG, this.a + " creating runnable: " + httpTransaction);
        return new bx(this.a, httpTransaction, this);
    }

    protected final Runnable a(Intent intent) {
        HttpTransaction httpTransaction = (HttpTransaction) intent.getParcelableExtra(VungleService.HTTP_TRANSACTION_EXTRA_KEY);
        if (httpTransaction != null) {
            return b(httpTransaction);
        }
        throw new IllegalArgumentException("no HTTP transaction in intent");
    }

    public final /* bridge */ /* synthetic */ void a(int i, int i2, List list) {
        super.a(i, i2, list);
    }

    public final void a(HttpTransaction httpTransaction) {
        a(b(httpTransaction), 1);
    }

    public final void a(HttpTransaction httpTransaction, int i) {
        a(b(httpTransaction), i);
    }

    public final void a(Thread thread, Runnable runnable, int i, int i2) {
        super.a(thread, runnable, i, i2);
        int i3 = (runnable == null || !runnable instanceof bk) ? 0 : 1;
        if (i3 != 0) {
            this.f.d();
        }
    }

    public final /* bridge */ /* synthetic */ void c(int i) {
        super.c(i);
    }
}