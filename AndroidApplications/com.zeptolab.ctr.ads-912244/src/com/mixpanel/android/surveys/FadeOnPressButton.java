package com.mixpanel.android.surveys;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.Button;

class FadeOnPressButton extends Button {
    private boolean a;

    public FadeOnPressButton(Context context) {
        super(context);
    }

    public FadeOnPressButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FadeOnPressButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a(float f) {
        if (VERSION.SDK_INT >= 11) {
            setAlpha(f);
        }
    }

    protected void drawableStateChanged() {
        boolean z = 0;
        int[] drawableState = getDrawableState();
        int length = drawableState.length;
        int i = 0;
        while (i < length) {
            if (drawableState[i] == 16842919) {
                if (!this.a) {
                    a(0.5f);
                }
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (this.a && i == 0) {
            a(1.0f);
            this.a = true;
        }
        super.drawableStateChanged();
    }
}