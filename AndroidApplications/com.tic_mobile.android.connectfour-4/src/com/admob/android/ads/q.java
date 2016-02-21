package com.admob.android.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.widget.TextView;

// compiled from: DynamicTextView.java
public final class q extends TextView {
    public float a;
    public boolean b;
    public float c;

    public q(Context context, float f) {
        super(context);
        this.a = -1.0f;
        this.b = false;
        setGravity(80);
        this.c = f;
    }

    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.b) {
            int measuredWidth = getMeasuredWidth();
            Typeface typeface = getTypeface();
            float textSize = getTextSize();
            CharSequence text = getText();
            TextPaint textPaint = new TextPaint(getPaint());
            if (text != null) {
                float f = textSize;
                while (f >= this.a) {
                    textPaint.setTypeface(typeface);
                    textPaint.setTextSize(f);
                    if (textPaint.measureText(text, 0, text.length()) <= ((float) measuredWidth)) {
                        break;
                    }
                    f -= 0.5f;
                }
                if (textSize != f) {
                    setTextSize(1, f / this.c);
                }
            }
        }
    }
}