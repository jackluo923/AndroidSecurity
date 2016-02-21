package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.zeptolab.ctr.ads.R;

final class jz implements Runnable {
    final /* synthetic */ jx a;

    jz(jx jxVar) {
        this.a = jxVar;
    }

    public final void run() {
        this.a.b.k().a(null);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        this.a.a.addView(new ProgressBar(this.a.b.i()), layoutParams);
        this.a.b.h().postDelayed(new ka(this), 7000);
    }
}