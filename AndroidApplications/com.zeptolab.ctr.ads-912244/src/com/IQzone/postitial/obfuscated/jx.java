package com.IQzone.postitial.obfuscated;

import android.widget.RelativeLayout;
import com.IQzone.postitial.a.a;
import com.IQzone.postitial.a.b;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelView;
import com.admarvel.android.ads.AdMarvelView.AdMarvelViewListener;

final class jx implements AdMarvelViewListener {
    final /* synthetic */ RelativeLayout a;
    final /* synthetic */ jk b;
    private /* synthetic */ pw c;
    private /* synthetic */ mx d;

    jx(jk jkVar, pw pwVar, RelativeLayout relativeLayout, mx mxVar) {
        this.b = jkVar;
        this.c = pwVar;
        this.a = relativeLayout;
        this.d = mxVar;
    }

    public final void onClickAd(AdMarvelView adMarvelView, String str) {
        try {
            long j;
            Long l = (Long) this.c.a();
            if (l.longValue() == 0) {
                j = 1;
            } else {
                long currentTimeMillis = System.currentTimeMillis() - l.longValue();
                j = currentTimeMillis > 6000 ? 1 : 6000 - currentTimeMillis;
            }
            a a = b.a();
            if (a != null) {
                this.b.h().postDelayed(new jy(this, a, adMarvelView, str), j);
            }
            jk.l();
            new StringBuilder("clicked ").append(str).toString();
            this.b.h().post(new jz(this));
        } catch (om e) {
            jk.l();
        }
    }

    public final void onClose() {
        this.b.g().a(null);
    }

    public final void onExpand() {
    }

    public final synchronized void onFailedToReceiveAd(AdMarvelView adMarvelView, int i, ErrorReason errorReason) {
        jk.l();
        new StringBuilder("error loading ").append(errorReason).toString();
        this.b.g().a(null);
        this.d.a(new ah(false, false, null, (byte) 0));
    }

    public final void onReceiveAd(AdMarvelView adMarvelView) {
        jk.l();
    }

    public final void onRequestAd(AdMarvelView adMarvelView) {
    }
}