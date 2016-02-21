package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Queue;
import java.util.concurrent.Executor;

final class hz extends hu {
    final /* synthetic */ hx a;
    private /* synthetic */ Context b;
    private /* synthetic */ Executor c;

    hz(hx hxVar, Executor executor, Queue queue, String str, ma maVar, hf hfVar, Context context, Executor executor2) {
        this.a = hxVar;
        this.b = context;
        this.c = executor2;
        super(executor, queue, str, maVar, hfVar);
    }

    protected final void b() {
        super.b();
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.b.getSystemService("connectivity")).getActiveNetworkInfo();
        if (d() && activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            this.c.execute(new ia(this));
        }
    }
}