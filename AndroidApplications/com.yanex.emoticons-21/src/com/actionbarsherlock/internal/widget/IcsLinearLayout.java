package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout.LayoutParams;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineLinearLayout;

public class IcsLinearLayout extends NineLinearLayout {
    private static final int LinearLayout_divider = 0;
    private static final int LinearLayout_dividerPadding = 2;
    private static final int LinearLayout_showDividers = 1;
    private static final int[] R_styleable_LinearLayout;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mShowDividers;

    static {
        R_styleable_LinearLayout = new int[]{16843049, 16843561, 16843562};
    }

    public IcsLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R_styleable_LinearLayout);
        setDividerDrawable(obtainStyledAttributes.getDrawable(LinearLayout_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(SHOW_DIVIDER_BEGINNING, LinearLayout_divider);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(SHOW_DIVIDER_MIDDLE, LinearLayout_divider);
        obtainStyledAttributes.recycle();
    }

    void drawDividersHorizontal(Canvas canvas) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (!(childAt == null || childAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                drawVerticalDivider(canvas, childAt.getLeft() - ((LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            drawVerticalDivider(canvas, childAt2 == null ? getWidth() - getPaddingRight() - this.mDividerWidth : childAt2.getRight());
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (!(childAt == null || childAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                drawHorizontalDivider(canvas, childAt.getTop() - ((LayoutParams) childAt.getLayoutParams()).topMargin);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            drawHorizontalDivider(canvas, childAt2 == null ? getHeight() - getPaddingBottom() - this.mDividerHeight : childAt2.getBottom());
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, getWidth() - getPaddingRight() - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, getHeight() - getPaddingBottom() - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        } else if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        } else if ((this.mShowDividers & 2) == 0) {
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

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        int indexOfChild = indexOfChild(view);
        int orientation = getOrientation();
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (hasDividerBeforeChildAt(indexOfChild)) {
            if (orientation == 1) {
                layoutParams.topMargin = this.mDividerHeight;
            } else {
                layoutParams.leftMargin = this.mDividerWidth;
            }
        }
        int childCount = getChildCount();
        if (indexOfChild == childCount - 1 && hasDividerBeforeChildAt(childCount)) {
            if (orientation == 1) {
                layoutParams.bottomMargin = this.mDividerHeight;
            } else {
                layoutParams.rightMargin = this.mDividerWidth;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    protected void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (getOrientation() == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
        super.onDraw(canvas);
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.mDivider) {
            if (drawable instanceof ColorDrawable && VERSION.SDK_INT < 11) {
                drawable = new IcsColorDrawable((ColorDrawable) drawable);
            }
            this.mDivider = drawable;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            }
            setWillNotDraw(drawable == null);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
            invalidate();
        }
        this.mShowDividers = i;
    }
}