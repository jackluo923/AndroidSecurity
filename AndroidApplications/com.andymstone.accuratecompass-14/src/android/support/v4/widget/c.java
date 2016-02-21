package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class c extends MarginLayoutParams {
    public int a;
    float b;
    boolean c;
    boolean d;

    public c(int i, int i2) {
        super(i, i2);
        this.a = 0;
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.d());
        this.a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    public c(c cVar) {
        super(cVar);
        this.a = 0;
        this.a = cVar.a;
    }

    public c(LayoutParams layoutParams) {
        super(layoutParams);
        this.a = 0;
    }

    public c(MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.a = 0;
    }
}