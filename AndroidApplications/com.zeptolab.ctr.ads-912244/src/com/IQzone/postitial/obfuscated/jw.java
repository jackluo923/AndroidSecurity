package com.IQzone.postitial.obfuscated;

import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelView;
import com.admarvel.android.ads.AdMarvelView.AdMarvelViewListener;

final class jw implements AdMarvelViewListener {
    private /* synthetic */ mx a;

    jw(jk jkVar, mx mxVar) {
        this.a = mxVar;
    }

    public final void onClickAd(AdMarvelView adMarvelView, String str) {
    }

    public final void onClose() {
    }

    public final void onExpand() {
    }

    public final void onFailedToReceiveAd(AdMarvelView adMarvelView, int i, ErrorReason errorReason) {
        jk.l();
        new StringBuilder("failed to receive ad ").append(errorReason).toString();
        this.a.a(new ah(false, false, null, (byte) 0));
    }

    public final void onReceiveAd(AdMarvelView adMarvelView) {
    }

    public final void onRequestAd(AdMarvelView adMarvelView) {
    }
}