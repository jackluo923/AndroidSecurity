package com.google.ads.b;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class g implements OnTouchListener {
    final /* synthetic */ e a;

    g(e eVar) {
        this.a = eVar;
    }

    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return motionEvent.getAction() == 2;
    }
}