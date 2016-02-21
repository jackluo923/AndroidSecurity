package com.heyzap.house.view;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class e implements AnimationListener {
    final /* synthetic */ Boolean a;
    final /* synthetic */ InterstitialWebView b;

    e(InterstitialWebView interstitialWebView, Boolean bool) {
        this.b = interstitialWebView;
        this.a = bool;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.a.booleanValue()) {
            InterstitialWebView.access$300(this.b);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}