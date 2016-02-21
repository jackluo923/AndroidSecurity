package com.IQzone.postitial.obfuscated;

import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

final class kk implements Runnable {
    private /* synthetic */ ViewGroup a;
    private /* synthetic */ View b;
    private /* synthetic */ RelativeLayout c;

    kk(jk jkVar, ViewGroup viewGroup, View view, RelativeLayout relativeLayout) {
        this.a = viewGroup;
        this.b = view;
        this.c = relativeLayout;
    }

    public final void run() {
        this.a.removeAllViews();
        this.b.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        this.b.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        this.a.addView(this.c);
        this.a.invalidate();
    }
}