package com.IQzone.postitial.obfuscated;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelView;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

final class ke implements mx {
    final /* synthetic */ AdMarvelAd a;
    final /* synthetic */ AdMarvelView b;
    final /* synthetic */ jk c;
    private /* synthetic */ ViewGroup d;

    ke(jk jkVar, ViewGroup viewGroup, AdMarvelAd adMarvelAd, AdMarvelView adMarvelView) {
        this.c = jkVar;
        this.d = viewGroup;
        this.a = adMarvelAd;
        this.b = adMarvelView;
    }

    public final /* synthetic */ Object a(Object obj) {
        View rootView = this.d.getRootView();
        if (rootView != null) {
            rootView = rootView.findViewById(bt.c);
            if (rootView != null) {
                rootView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            }
        }
        rootView = new RelativeLayout(this.c.i());
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        rootView.addView(new ProgressBar(this.c.i()), layoutParams);
        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        rootView.setId(bt.n);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop, bt.n);
        this.d.addView(rootView, layoutParams);
        this.c.h().post(new kf(this));
        return null;
    }
}