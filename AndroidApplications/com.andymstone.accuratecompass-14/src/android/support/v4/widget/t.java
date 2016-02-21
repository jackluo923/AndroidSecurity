package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class t extends MarginLayoutParams {
    private static final int[] e;
    public float a;
    boolean b;
    boolean c;
    Paint d;

    static {
        e = new int[]{16843137};
    }

    public t() {
        super(-1, -1);
        this.a = 0.0f;
    }

    public t(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
        this.a = obtainStyledAttributes.getFloat(0, 0.0f);
        obtainStyledAttributes.recycle();
    }

    public t(LayoutParams layoutParams) {
        super(layoutParams);
        this.a = 0.0f;
    }

    public t(MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.a = 0.0f;
    }
}