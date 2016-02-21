package com.heyzap.house.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class d implements AnimationListener {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.a.b.booleanValue()) {
            InterstitialWebView.access$200(this.a.c);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}