package me.kiip.internal.k;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

public class f {
    public static void a(View view, float f) {
        if (VERSION.SDK_INT >= 11) {
            view.setAlpha(f);
        } else {
            Animation alphaAnimation = new AlphaAnimation(f, f);
            alphaAnimation.setFillAfter(true);
            view.startAnimation(alphaAnimation);
        }
    }
}