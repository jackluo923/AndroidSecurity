package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class bj extends LayoutParams {
    public boolean a;
    public int b;
    float c;
    boolean d;
    int e;
    int f;

    public bj() {
        super(-1, -1);
        this.c = 0.0f;
    }

    public bj(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.e());
        this.b = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
    }
}