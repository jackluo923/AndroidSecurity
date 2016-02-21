package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

// compiled from: ProGuard
public class h extends MarginLayoutParams {
    public int a;
    float b;
    boolean c;
    boolean d;

    public h(int i, int i2) {
        super(i, i2);
        this.a = 0;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.c());
        this.a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    public h(h hVar) {
        super(hVar);
        this.a = 0;
        this.a = hVar.a;
    }

    public h(LayoutParams layoutParams) {
        super(layoutParams);
        this.a = 0;
    }

    public h(MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.a = 0;
    }
}