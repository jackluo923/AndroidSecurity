package com.mixpanel.android.surveys;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.CheckedTextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.millennialmedia.android.MMException;

class SurveyChoiceView extends CheckedTextView {
    private static final int d = 300;
    private static final int e = 14;
    private static final int f = 22;
    private static final int g = 12;
    private Drawable a;
    private float b;
    private float c;

    private class a extends Animation {
        private a() {
        }

        protected void applyTransformation(float f, Transformation transformation) {
            float f2 = BitmapDescriptorFactory.HUE_RED;
            float f3 = 1.0f;
            if (f <= 0.5f) {
                f2 = f - 0.5f;
            } else {
                f3 = 1.0f + (f - 0.5f) * 2.0f;
            }
            SurveyChoiceView.this.b = f2;
            SurveyChoiceView.this.c = f3;
            SurveyChoiceView.this.requestLayout();
        }

        public boolean willChangeBounds() {
            return false;
        }

        public boolean willChangeTransformationMatrix() {
            return false;
        }
    }

    public SurveyChoiceView(Context context) {
        super(context);
        a();
    }

    public SurveyChoiceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public SurveyChoiceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        this.b = 0.0f;
        this.c = 1.5f;
    }

    protected void onDraw(Canvas canvas) {
        int i;
        int i2 = 0;
        Drawable drawable = this.a;
        float f = getResources().getDisplayMetrics().density;
        i = (drawable == null || !isChecked()) ? 0 : (int) (14.0f * f);
        int i3 = (int) (12.0f * f);
        int i4 = (int) (f * 22.0f);
        setCheckMarkDrawable(null);
        setPadding((int) (((float) i4) + this.c * ((float) i)), i3, i4, i3);
        super.onDraw(canvas);
        int i5 = (int) (((float) i4) + this.b * ((float) i));
        setPadding(i5, i3, i4, i3);
        setCheckMarkDrawable(drawable);
        if (drawable != null) {
            switch (getGravity() & 112) {
                case MMException.REQUEST_NOT_PERMITTED:
                    i2 = (getHeight() - i) / 2;
                    break;
                case 80:
                    i2 = getHeight() - i;
                    break;
            }
            drawable.setBounds(i5 + getScrollX(), i2, i + i5 + getScrollX(), i2 + i);
            drawable.draw(canvas);
        }
        setPadding(i4, i3, i4, i3);
    }

    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        this.a = drawable;
    }

    public void setChecked(boolean z) {
        boolean isChecked = isChecked();
        super.setChecked(z);
        if (isChecked() && !isChecked) {
            Animation aVar = new a(null);
            aVar.setDuration(300);
            startAnimation(aVar);
        }
    }
}