package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import com.actionbarsherlock.R;

// compiled from: ProGuard
public class ar extends LayoutParams {
    public boolean a;
    public int b;
    float c;
    boolean d;
    int e;
    int f;

    public ar() {
        super(-1, -1);
        this.c = 0.0f;
    }

    public ar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.e());
        this.b = obtainStyledAttributes.getInteger(0, R.styleable.SherlockTheme_textAppearanceListItemSmall);
        obtainStyledAttributes.recycle();
    }
}