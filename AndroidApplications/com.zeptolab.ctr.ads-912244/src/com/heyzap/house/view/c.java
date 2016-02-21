package com.heyzap.house.view;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

class c implements Runnable {
    final /* synthetic */ Boolean a;
    final /* synthetic */ Boolean b;
    final /* synthetic */ InterstitialWebView c;

    c(InterstitialWebView interstitialWebView, Boolean bool, Boolean bool2) {
        this.c = interstitialWebView;
        this.a = bool;
        this.b = bool2;
    }

    public void run() {
        if (this.a.booleanValue()) {
            Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(150);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            alphaAnimation.setAnimationListener(new d(this));
            InterstitialWebView.access$100(this.c).startAnimation(alphaAnimation);
        } else if (this.b.booleanValue()) {
            InterstitialWebView.access$200(this.c);
        }
    }
}