package com.actionbarsherlock.internal.nineoldandroids.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;

// compiled from: ProGuard
public class NineLinearLayout extends LinearLayout {
    private final AnimatorProxy mProxy;

    public NineLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProxy = AnimatorProxy.NEEDS_PROXY ? AnimatorProxy.wrap(this) : null;
    }

    public float getAlpha() {
        return AnimatorProxy.NEEDS_PROXY ? this.mProxy.getAlpha() : super.getAlpha();
    }

    public float getTranslationX() {
        return AnimatorProxy.NEEDS_PROXY ? this.mProxy.getTranslationX() : super.getTranslationX();
    }

    public void setAlpha(float f) {
        if (AnimatorProxy.NEEDS_PROXY) {
            this.mProxy.setAlpha(f);
        } else {
            super.setAlpha(f);
        }
    }

    public void setTranslationX(float f) {
        if (AnimatorProxy.NEEDS_PROXY) {
            this.mProxy.setTranslationX(f);
        } else {
            super.setTranslationX(f);
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