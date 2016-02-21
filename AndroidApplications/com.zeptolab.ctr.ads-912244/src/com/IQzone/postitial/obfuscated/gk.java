package com.IQzone.postitial.obfuscated;

import android.view.View;
import android.view.View.OnClickListener;

final class gk implements OnClickListener {
    private /* synthetic */ gj a;

    gk(gj gjVar) {
        this.a = gjVar;
    }

    public final void onClick(View view) {
        gj.a(this.a).moveTaskToBack(true);
        gj.a(this.a).finish();
    }
}