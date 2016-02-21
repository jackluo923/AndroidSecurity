package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class bv {
    private static final ql a;
    private final Context b;
    private final boolean c;

    static {
        a = new ql();
    }

    public bv(Context context) {
        this.b = context;
        this.c = true;
    }

    public bv(Context context, boolean z) {
        this.b = context;
        this.c = z;
    }

    public final View a() {
        bk bkVar = new bk(this.b);
        Executor noVar = new no(Executors.newSingleThreadExecutor());
        Handler mvVar = new mv();
        View relativeLayout = new RelativeLayout(this.b);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-16777216);
        relativeLayout.setId(bt.a);
        relativeLayout.setClickable(false);
        relativeLayout.setFocusable(false);
        relativeLayout.setFocusableInTouchMode(false);
        View linearLayout = new LinearLayout(this.b);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(-1, -1);
        linearLayout.setId(bt.b);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop, -1);
        linearLayout.setClickable(true);
        linearLayout.setFocusable(true);
        linearLayout.setFocusableInTouchMode(true);
        linearLayout.setOrientation(1);
        relativeLayout.addView(linearLayout, layoutParams);
        if (this.c) {
            linearLayout = new ImageButton(this.b);
            linearLayout.setId(bt.c);
            layoutParams = new LayoutParams(fh.a(this.b.getResources(), 70), fh.a(this.b.getResources(), 70));
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures, -1);
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls, -1);
            if (VERSION.SDK_INT > 10) {
                layoutParams.setMargins(0, fh.a(this.b.getResources(), (int)MMException.AD_BROKEN_REFERENCE), 0, 0);
            }
            linearLayout.setBackgroundColor(0);
            linearLayout.setFocusable(false);
            linearLayout.setFocusableInTouchMode(false);
            linearLayout.setPadding(fh.a(this.b.getResources(), (int)MMException.REQUEST_BAD_RESPONSE), 0, 0, fh.a(this.b.getResources(), (int)MMException.REQUEST_BAD_RESPONSE));
            linearLayout.setScaleType(ScaleType.FIT_XY);
            noVar.execute(new bw(this, bkVar, mvVar, linearLayout));
            relativeLayout.addView(linearLayout, layoutParams);
        }
        return relativeLayout;
    }
}