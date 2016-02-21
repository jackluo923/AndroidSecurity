package com.IQzone.postitial.obfuscated;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.admarvel.android.ads.AdMarvelView;
import com.zeptolab.ctr.ads.R;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class gj implements gu {
    private static final ql a;
    private final Activity b;

    static {
        a = new ql();
    }

    public gj(Activity activity) {
        Executor newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.b = activity;
    }

    public final void a(gs gsVar) {
        Handler handler = new Handler(Looper.getMainLooper());
        View a = new bv(this.b, true).a();
        gsVar.a.updateCurrentActivity(this.b);
        View findViewById = a.findViewById(bt.c);
        findViewById.setOnClickListener(new gk(this));
        LinearLayout linearLayout = (LinearLayout) a.findViewById(bt.b);
        View relativeLayout = new RelativeLayout(this.b);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        View adMarvelView = new AdMarvelView(this.b);
        adMarvelView.setPostitialView(true);
        adMarvelView.setListener(new gl(this, gsVar, handler, findViewById));
        relativeLayout.addView(adMarvelView, layoutParams);
        linearLayout.addView(relativeLayout, new LinearLayout.LayoutParams(-1, -1));
        this.b.setContentView(a);
        adMarvelView.displayAd(this.b, gsVar.b);
        gsVar.c.a(null);
    }
}