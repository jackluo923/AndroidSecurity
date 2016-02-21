package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout.LayoutParams;

// compiled from: ProGuard
public class TabsLinearLayout extends IcsLinearLayout {
    private static final int LinearLayout_measureWithLargestChild = 0;
    private static final int[] R_styleable_LinearLayout;
    private boolean mUseLargestChild;

    static {
        R_styleable_LinearLayout = new int[]{16843476};
    }

    public TabsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R_styleable_LinearLayout);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }

    private void useLargestChildHorizontal() {
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            i++;
            i2 = Math.max(getChildAt(i).getMeasuredWidth(), i2);
        }
        int i3 = 0;
        i = 0;
        while (i3 < childCount) {
            int i4;
            View childAt = getChildAt(i3);
            if (childAt == null) {
                i4 = i;
            } else if (childAt.getVisibility() == 8) {
                i4 = i;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.weight > 0.0f) {
                    childAt.measure(MeasureSpec.makeMeasureSpec(i2, 1073741824), MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
                    i += i2;
                } else {
                    i += childAt.getMeasuredWidth();
                }
                i4 = layoutParams.rightMargin + layoutParams.leftMargin + i;
            }
            i3++;
            i = i4;
        }
        setMeasuredDimension(getPaddingLeft() + getPaddingRight() + i, getMeasuredHeight());
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getChildCount() > 2) {
            int mode = MeasureSpec.getMode(i);
            if (this.mUseLargestChild && mode == 0 && getOrientation() == 0) {
                useLargestChildHorizontal();
            }
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }
}