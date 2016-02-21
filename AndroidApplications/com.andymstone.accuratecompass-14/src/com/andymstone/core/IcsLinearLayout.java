package com.andymstone.core;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class IcsLinearLayout extends LinearLayout {
    private static final int[] a;
    private Drawable b;
    private int c;
    private int d;
    private int e;
    private int f;

    static {
        a = new int[]{16843049, 16843561, 16843562};
    }

    public IcsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a);
        setDividerDrawable(obtainStyledAttributes.getDrawable(0));
        this.e = obtainStyledAttributes.getInt(1, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(o.MyAlertDialog_myAlertDialogButtonDrawable, 0);
        obtainStyledAttributes.recycle();
    }

    void a(Canvas canvas) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (!(childAt == null || childAt.getVisibility() == 8 || !a(i))) {
                a(canvas, childAt.getTop() - ((LayoutParams) childAt.getLayoutParams()).topMargin);
            }
            i++;
        }
        if (a(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            a(canvas, childAt2 == null ? getHeight() - getPaddingBottom() - this.d : childAt2.getBottom());
        }
    }

    void a(Canvas canvas, int i) {
        this.b.setBounds(getPaddingLeft() + this.f, i, getWidth() - getPaddingRight() - this.f, this.d + i);
        this.b.draw(canvas);
    }

    protected boolean a(int i) {
        if (i == 0) {
            return (this.e & 1) != 0;
        } else if (i == getChildCount()) {
            return (this.e & 4) != 0;
        } else if ((this.e & 2) == 0) {
            return false;
        } else {
            int i2 = i - 1;
            while (i2 >= 0) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
                i2--;
            }
            return false;
        }
    }

    void b(Canvas canvas) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (!(childAt == null || childAt.getVisibility() == 8 || !a(i))) {
                b(canvas, childAt.getLeft() - ((LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
            i++;
        }
        if (a(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            b(canvas, childAt2 == null ? getWidth() - getPaddingRight() - this.c : childAt2.getRight());
        }
    }

    void b(Canvas canvas, int i) {
        this.b.setBounds(i, getPaddingTop() + this.f, this.c + i, getHeight() - getPaddingBottom() - this.f);
        this.b.draw(canvas);
    }

    public int getDividerPadding() {
        return this.f;
    }

    public int getDividerWidth() {
        return this.c;
    }

    public int getShowDividers() {
        return this.e;
    }

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (a(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.d;
            } else {
                layoutParams.leftMargin = this.c;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && a(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.d;
            } else {
                layoutParams.rightMargin = this.c;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    protected void onDraw(Canvas canvas) {
        if (this.b != null) {
            if (getOrientation() == 1) {
                a(canvas);
            } else {
                b(canvas);
            }
        }
        super.onDraw(canvas);
    }

    public void setDividerDrawable(Drawable drawable) {
        boolean z = false;
        if (drawable != this.b) {
            this.b = drawable;
            if (drawable != null) {
                this.c = drawable.getIntrinsicWidth();
                this.d = drawable.getIntrinsicHeight();
            } else {
                this.c = 0;
                this.d = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.f = i;
    }

    public void setShowDividers(int i) {
        if (i != this.e) {
            requestLayout();
            invalidate();
        }
        this.e = i;
    }
}