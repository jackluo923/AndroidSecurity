package com.andymstone.core;

import android.view.View;
import android.view.View.OnClickListener;

class i implements OnClickListener {
    final /* synthetic */ h a;

    i(h hVar) {
        this.a = hVar;
    }

    public void onClick(View view) {
        this.a.onBackPressed();
    }
}