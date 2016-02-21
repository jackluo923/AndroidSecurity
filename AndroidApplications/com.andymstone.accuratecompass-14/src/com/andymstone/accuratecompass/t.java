package com.andymstone.accuratecompass;

import android.view.View;
import android.view.View.OnClickListener;

class t implements OnClickListener {
    final /* synthetic */ WarningsView a;

    t(WarningsView warningsView) {
        this.a = warningsView;
    }

    public void onClick(View view) {
        this.a.f = true;
        this.a.b();
    }
}