package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Queue;
import java.util.concurrent.Executor;

final class je extends ja {
    final /* synthetic */ jc a;
    private /* synthetic */ Context b;
    private /* synthetic */ Executor c;

    je(jc jcVar, Executor executor, Queue queue, String str, ma maVar, es esVar, hf hfVar, mx mxVar, Context context, Executor executor2) {
        this.a = jcVar;
        this.b = context;
        this.c = executor2;
        super(executor, queue, str, maVar, esVar, hfVar, mxVar);
    }

    protected final void b() {
        super.b();
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.b.getSystemService("connectivity")).getActiveNetworkInfo();
        if (d() && activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            this.c.execute(new jf(this));
        }
    }
}