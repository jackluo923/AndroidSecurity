package com.inmobi.androidsdk;

import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.commons.internal.Log;
import com.millennialmedia.android.MMException;

class d implements AnimationListener {
    final /* synthetic */ BannerView a;

    d(BannerView bannerView) {
        this.a = bannerView;
    }

    public void onAnimationEnd(Animation animation) {
        boolean z = false;
        ErrorCode errorCode = null;
        int i = MMException.UNKNOWN_ERROR;
        try {
            if (animation.equals(this.a.a())) {
                this.a.removeAllViews();
                LayoutParams layoutParams;
                if (this.a.i()) {
                    try {
                        ((ViewGroup) this.a.b.getParent()).removeView(this.a.b);
                    } catch (Exception e) {
                    }
                    layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    this.a.d = this.a.b;
                    this.a.addView(this.a.b, layoutParams);
                } else {
                    try {
                        ((ViewGroup) this.a.c.getParent()).removeView(this.a.c);
                    } catch (Exception e2) {
                    }
                    layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    this.a.d = this.a.c;
                    this.a.addView(this.a.c, layoutParams);
                }
                this.a.startAnimation(this.a.b());
            } else {
                BannerView bannerView = this.a;
                if (!this.a.i()) {
                    z = true;
                }
                bannerView.c(z);
                this.a.a(false);
                this.a.j();
            }
            if (!animation.equals(this.a.a())) {
                this.a.a(i, errorCode);
            }
        } catch (Exception e3) {
            try {
                Log.debug(ConfigConstants.LOGGING_TAG, "Error animating banner ads", e3);
                if (!animation.equals(this.a.a())) {
                    this.a.a(i, errorCode);
                }
            } catch (Throwable th) {
                if (!animation.equals(this.a.a())) {
                    this.a.a(i, errorCode);
                }
            }
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}