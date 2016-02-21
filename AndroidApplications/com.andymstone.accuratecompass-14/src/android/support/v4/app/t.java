package android.support.v4.app;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class t implements AnimationListener {
    final /* synthetic */ Fragment a;
    final /* synthetic */ q b;

    t(q qVar, Fragment fragment) {
        this.b = qVar;
        this.a = fragment;
    }

    public void onAnimationEnd(Animation animation) {
        if (this.a.k != null) {
            this.a.k = null;
            this.b.a(this.a, this.a.l, 0, 0, false);
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}