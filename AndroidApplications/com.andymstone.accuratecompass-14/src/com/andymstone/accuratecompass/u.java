package com.andymstone.accuratecompass;

import android.view.View;
import android.view.View.OnClickListener;

class u implements OnClickListener {
    final /* synthetic */ WarningsView a;

    u(WarningsView warningsView) {
        this.a = warningsView;
    }

    public void onClick(View view) {
        this.a.f = false;
        this.a.a();
    }
}