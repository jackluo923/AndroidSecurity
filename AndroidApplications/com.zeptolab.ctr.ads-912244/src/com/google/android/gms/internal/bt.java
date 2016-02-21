package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class bt extends FrameLayout implements OnClickListener {
    private final ImageButton nK;
    private final Activity nd;

    public bt(Context context, int i) {
        super(context);
        this.nd = context;
        setOnClickListener(this);
        this.nK = new ImageButton(context);
        this.nK.setImageResource(17301527);
        this.nK.setBackgroundColor(0);
        this.nK.setOnClickListener(this);
        this.nK.setPadding(0, 0, 0, 0);
        int a = cz.a(context, i);
        addView(this.nK, new LayoutParams(a, a, 17));
    }

    public void g(boolean z) {
        this.nK.setVisibility(z ? GoogleScorer.CLIENT_APPSTATE : 0);
    }

    public void onClick(View view) {
        this.nd.finish();
    }
}