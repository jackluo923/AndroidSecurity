package com.actionbarsherlock.internal.nineoldandroids.widget;

import android.content.Context;
import android.widget.HorizontalScrollView;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;

// compiled from: ProGuard
public class NineHorizontalScrollView extends HorizontalScrollView {
    private final AnimatorProxy mProxy;

    public NineHorizontalScrollView(Context context) {
        super(context);
        this.mProxy = AnimatorProxy.NEEDS_PROXY ? AnimatorProxy.wrap(this) : null;
    }

    public float getAlpha() {
        return AnimatorProxy.NEEDS_PROXY ? this.mProxy.getAlpha() : super.getAlpha();
    }

    public void setAlpha(float f) {
        if (AnimatorProxy.NEEDS_PROXY) {
            this.mProxy.setAlpha(f);
        } else {
            super.setAlpha(f);
        }
    }

    public void setVisibility(int i) {
        if (this.mProxy != null) {
            if (i == 8) {
                clearAnimation();
            } else if (i == 0) {
                setAnimation(this.mProxy);
            }
        }
        super.setVisibility(i);
    }
}