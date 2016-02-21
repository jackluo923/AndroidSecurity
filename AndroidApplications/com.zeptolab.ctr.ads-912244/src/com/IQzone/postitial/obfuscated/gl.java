package com.IQzone.postitial.obfuscated;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.IQzone.postitial.a.a;
import com.IQzone.postitial.a.b;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelView;
import com.admarvel.android.ads.AdMarvelView.AdMarvelViewListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

final class gl implements AdMarvelViewListener {
    volatile boolean a;
    final /* synthetic */ gj b;
    private /* synthetic */ gs c;
    private /* synthetic */ Handler d;
    private /* synthetic */ View e;

    gl(gj gjVar, gs gsVar, Handler handler, View view) {
        this.b = gjVar;
        this.c = gsVar;
        this.d = handler;
        this.e = view;
    }

    public final void onClickAd(AdMarvelView adMarvelView, String str) {
        this.a = true;
        gj.a();
        this.c.d.a(null);
        a a = b.a();
        if (a != null) {
            this.d.post(new gm(this, a, adMarvelView, str));
        }
    }

    public final void onClose() {
        new Handler(Looper.getMainLooper()).post(new gn(this));
    }

    public final void onExpand() {
        gj.a();
        this.c.d.a(null);
        this.e.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
    }

    public final synchronized void onFailedToReceiveAd(AdMarvelView adMarvelView, int i, ErrorReason errorReason) {
        gj.a();
        new StringBuilder("error loading ").append(errorReason).toString();
        gj.a(this.b).finish();
    }

    public final void onReceiveAd(AdMarvelView adMarvelView) {
        gj.a();
    }

    public final void onRequestAd(AdMarvelView adMarvelView) {
    }
}