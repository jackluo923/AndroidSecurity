package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.View;

public final class p extends View {
    private boolean a;

    public p(Context context) {
        super(context);
        this.a = false;
        setFocusable(false);
        setBackgroundColor(-1442840576);
    }

    public void a() {
        if (!this.a) {
            o.a(this);
            this.a = true;
        }
    }
}