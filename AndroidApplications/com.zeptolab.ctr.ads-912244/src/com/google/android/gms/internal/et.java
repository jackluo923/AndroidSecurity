package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.Button;
import com.google.android.gms.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class et extends Button {
    public et(Context context) {
        this(context, null);
    }

    public et(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    private int b(int i, int i2, int i3) {
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return i2;
            case GoogleScorer.CLIENT_GAMES:
                return i3;
            default:
                throw new IllegalStateException("Unknown color scheme: " + i);
        }
    }

    private void b(Resources resources, int i, int i2) {
        int b;
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
            case GoogleScorer.CLIENT_GAMES:
                b = b(i2, R.drawable.common_signin_btn_text_dark, R.drawable.common_signin_btn_text_light);
                break;
            case GoogleScorer.CLIENT_PLUS:
                b = b(i2, R.drawable.common_signin_btn_icon_dark, R.drawable.common_signin_btn_icon_light);
                break;
            default:
                throw new IllegalStateException("Unknown button size: " + i);
        }
        if (b == -1) {
            throw new IllegalStateException("Could not find background resource!");
        }
        setBackgroundDrawable(resources.getDrawable(b));
    }

    private void c(Resources resources) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        float f = resources.getDisplayMetrics().density;
        setMinHeight((int) (f * 48.0f + 0.5f));
        setMinWidth((int) (f * 48.0f + 0.5f));
    }

    private void c(Resources resources, int i, int i2) {
        setTextColor(resources.getColorStateList(b(i2, R.color.common_signin_btn_text_dark, R.color.common_signin_btn_text_light)));
        switch (i) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                setText(resources.getString(R.string.common_signin_button_text));
            case GoogleScorer.CLIENT_GAMES:
                setText(resources.getString(R.string.common_signin_button_text_long));
            case GoogleScorer.CLIENT_PLUS:
                setText(null);
            default:
                throw new IllegalStateException("Unknown button size: " + i);
        }
    }

    public void a(Resources resources, int i, int i2) {
        boolean z;
        boolean z2 = true;
        z = i >= 0 && i < 3;
        er.a(z, "Unknown button size " + i);
        if (i2 < 0 || i2 >= 2) {
            z2 = false;
        }
        er.a(z2, "Unknown color scheme " + i2);
        c(resources);
        b(resources, i, i2);
        c(resources, i, i2);
    }
}