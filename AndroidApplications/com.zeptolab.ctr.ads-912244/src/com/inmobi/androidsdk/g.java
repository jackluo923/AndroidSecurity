package com.inmobi.androidsdk;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import com.facebook.ads.internal.AdWebViewUtils;
import com.inmobi.androidsdk.impl.anim.Rotate3dAnimation;
import com.inmobi.androidsdk.impl.anim.Rotate3dAnimationVert;
import com.inmobi.commons.AnimationType;

class g {
    private BannerView a;
    private AnimationListener b;

    public g(BannerView bannerView, AnimationListener animationListener) {
        this.a = bannerView;
        this.b = animationListener;
    }

    public void a(AnimationType animationType) {
        Animation alphaAnimation;
        Animation alphaAnimation2;
        if (animationType == AnimationType.ANIMATION_ALPHA) {
            alphaAnimation = new AlphaAnimation(0.0f, 0.5f);
            alphaAnimation2 = new AlphaAnimation(0.5f, 1.0f);
            alphaAnimation.setDuration(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            alphaAnimation.setFillAfter(false);
            alphaAnimation.setAnimationListener(this.b);
            alphaAnimation.setInterpolator(new DecelerateInterpolator());
            alphaAnimation2.setDuration(500);
            alphaAnimation2.setFillAfter(false);
            alphaAnimation2.setAnimationListener(this.b);
            alphaAnimation2.setInterpolator(new DecelerateInterpolator());
            this.a.a(alphaAnimation);
            this.a.b(alphaAnimation2);
        } else if (animationType == AnimationType.ROTATE_HORIZONTAL_AXIS) {
            alphaAnimation = new Rotate3dAnimation(0.0f, 90.0f, ((float) this.a.getWidth()) / 2.0f, ((float) this.a.getHeight()) / 2.0f, 0.0f, true);
            alphaAnimation2 = new Rotate3dAnimation(270.0f, 360.0f, ((float) this.a.getWidth()) / 2.0f, ((float) this.a.getHeight()) / 2.0f, 0.0f, true);
            alphaAnimation.setDuration(500);
            alphaAnimation.setFillAfter(false);
            alphaAnimation.setAnimationListener(this.b);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            alphaAnimation2.setDuration(500);
            alphaAnimation2.setFillAfter(false);
            alphaAnimation2.setAnimationListener(this.b);
            alphaAnimation2.setInterpolator(new DecelerateInterpolator());
            this.a.a(alphaAnimation);
            this.a.b(alphaAnimation2);
        } else if (animationType == AnimationType.ROTATE_VERTICAL_AXIS) {
            alphaAnimation = new Rotate3dAnimationVert(0.0f, 90.0f, ((float) this.a.getWidth()) / 2.0f, ((float) this.a.getHeight()) / 2.0f, 0.0f, true);
            alphaAnimation2 = new Rotate3dAnimationVert(270.0f, 360.0f, ((float) this.a.getWidth()) / 2.0f, ((float) this.a.getHeight()) / 2.0f, 0.0f, true);
            alphaAnimation.setDuration(500);
            alphaAnimation.setFillAfter(false);
            alphaAnimation.setAnimationListener(this.b);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            alphaAnimation2.setDuration(500);
            alphaAnimation2.setFillAfter(false);
            alphaAnimation2.setAnimationListener(this.b);
            alphaAnimation2.setInterpolator(new DecelerateInterpolator());
            this.a.a(alphaAnimation);
            this.a.b(alphaAnimation2);
        }
        this.a.startAnimation(this.a.a());
    }
}