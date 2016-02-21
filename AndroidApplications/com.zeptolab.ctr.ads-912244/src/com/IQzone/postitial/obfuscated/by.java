package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.zeptolab.ctr.ads.R;

public final class by {
    private final Context a;

    public by(Context context) {
        this.a = context;
    }

    public final View a() {
        View relativeLayout = new RelativeLayout(this.a);
        relativeLayout.setId(bt.a);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-16777216);
        View progressBar = new ProgressBar(this.a);
        progressBar.setId(bt.o);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        progressBar.setClickable(false);
        progressBar.setFocusable(false);
        progressBar.setFocusableInTouchMode(false);
        relativeLayout.addView(progressBar, layoutParams);
        return relativeLayout;
    }
}