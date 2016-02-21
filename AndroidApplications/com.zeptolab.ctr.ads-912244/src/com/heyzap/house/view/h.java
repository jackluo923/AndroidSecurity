package com.heyzap.house.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class h implements OnTouchListener {
    final /* synthetic */ InterstitialWebView a;

    h(InterstitialWebView interstitialWebView) {
        this.a = interstitialWebView;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!InterstitialWebView.access$800(this.a).booleanValue() || motionEvent.getAction() != 0) {
            return false;
        }
        if (InterstitialWebView.access$400(this.a) != null) {
            InterstitialWebView.access$400(this.a).click();
        }
        return true;
    }
}