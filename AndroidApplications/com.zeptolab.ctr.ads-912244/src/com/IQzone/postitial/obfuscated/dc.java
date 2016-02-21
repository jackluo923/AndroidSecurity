package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.util.concurrent.ExecutorService;

final class dc implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ ExecutorService c;
    final /* synthetic */ mx d;
    final /* synthetic */ cl e;
    private /* synthetic */ ViewGroup f;
    private /* synthetic */ Handler g;

    dc(cl clVar, String str, Context context, ExecutorService executorService, mx mxVar, ViewGroup viewGroup, Handler handler) {
        this.e = clVar;
        this.a = str;
        this.b = context;
        this.c = executorService;
        this.d = mxVar;
        this.f = viewGroup;
        this.g = handler;
    }

    public final void onClick(View view) {
        Runnable ddVar = new dd(this);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < 5000) {
            this.f.removeAllViews();
            this.f.addView(new by(this.b).a());
            this.g.postDelayed(ddVar, 5000 - currentTimeMillis);
        } else {
            ddVar.run();
        }
    }
}