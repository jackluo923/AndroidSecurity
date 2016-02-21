package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import com.zeptolab.ctr.ads.R;

final class kd implements Runnable {
    private /* synthetic */ kb a;

    kd(kb kbVar) {
        this.a = kbVar;
    }

    public final void run() {
        this.a.a.displayAd(this.a.f.i(), this.a.b);
        this.a.c.addView(this.a.a, this.a.d);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.a.c.setId(bt.n);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop, bt.n);
        this.a.e.addView(this.a.c, layoutParams);
        this.a.a.requestFocus();
    }
}