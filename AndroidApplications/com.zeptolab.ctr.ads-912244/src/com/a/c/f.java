package com.a.c;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.a.a.a.a;

class f implements AnimatorListener {
    final /* synthetic */ a a;
    final /* synthetic */ e b;

    f(e eVar, a aVar) {
        this.b = eVar;
        this.a = aVar;
    }

    public void onAnimationCancel(Animator animator) {
        this.a.c(null);
    }

    public void onAnimationEnd(Animator animator) {
        this.a.b(null);
    }

    public void onAnimationRepeat(Animator animator) {
        this.a.d(null);
    }

    public void onAnimationStart(Animator animator) {
        this.a.a(null);
    }
}