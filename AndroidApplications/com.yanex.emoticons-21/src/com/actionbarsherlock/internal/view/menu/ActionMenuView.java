package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.accessibility.AccessibilityEvent;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.ItemInvoker;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

public class ActionMenuView extends IcsLinearLayout implements ItemInvoker, MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    private static final boolean IS_FROYO;
    static final int MIN_CELL_SIZE = 56;
    private boolean mFirst;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private MenuBuilder mMenu;
    private int mMinCellSize;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    public class LayoutParams extends android.widget.LinearLayout.LayoutParams {
        public int cellsUsed;
        public boolean expandable;
        public boolean expanded;
        public int extraPixels;
        public boolean isOverflowButton;
        public boolean preventEdgeOffset;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.isOverflowButton = false;
        }

        public LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.isOverflowButton = z;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(com.actionbarsherlock.internal.view.menu.ActionMenuView.LayoutParams layoutParams) {
            super(layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }
    }

    static {
        IS_FROYO = VERSION.SDK_INT >= 8 ? true : IS_FROYO;
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFirst = true;
        setBaselineAligned(IS_FROYO);
        float f = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f);
        this.mGeneratedItemPadding = (int) (f * 4.0f);
    }

    static int measureChildForCells(View view, int i, int i2, int i3, int i4) {
        int measuredWidth;
        boolean z = IS_FROYO;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i3) - i4, MeasureSpec.getMode(i3));
        if (i2 > 0) {
            view.measure(MeasureSpec.makeMeasureSpec(i * i2, Integer.MIN_VALUE), makeMeasureSpec);
            measuredWidth = view.getMeasuredWidth();
            int i5 = measuredWidth / i;
            measuredWidth = measuredWidth % i != 0 ? i5 + 1 : i5;
        } else {
            measuredWidth = 0;
        }
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        if (!(layoutParams.isOverflowButton || actionMenuItemView == null || !actionMenuItemView.hasText())) {
            z = true;
        }
        layoutParams.expandable = z;
        layoutParams.cellsUsed = measuredWidth;
        view.measure(MeasureSpec.makeMeasureSpec(measuredWidth * i, 1073741824), makeMeasureSpec);
        return measuredWidth;
    }

    private void onMeasureExactFormat(int i, int i2) {
        int mode = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = size - getPaddingLeft() + getPaddingRight();
        int i3 = paddingLeft / this.mMinCellSize;
        size = paddingLeft % this.mMinCellSize;
        if (i3 == 0) {
            setMeasuredDimension(paddingLeft, 0);
        } else {
            int i4;
            LayoutParams layoutParams;
            int measureChildForCells;
            boolean z;
            int i5;
            int i6 = this.mMinCellSize + size / i3;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            boolean z2 = 0;
            long j = 0;
            int childCount = getChildCount();
            int i11 = 0;
            while (i11 < childCount) {
                int i12;
                int i13;
                long j2;
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8) {
                    boolean z3;
                    boolean z4 = childAt instanceof ActionMenuItemView;
                    i4 = i10 + 1;
                    if (z4) {
                        childAt.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
                    }
                    layoutParams = (LayoutParams) childAt.getLayoutParams();
                    layoutParams.expanded = false;
                    layoutParams.extraPixels = 0;
                    layoutParams.cellsUsed = 0;
                    layoutParams.expandable = false;
                    layoutParams.leftMargin = 0;
                    layoutParams.rightMargin = 0;
                    z3 = (z4 && ((ActionMenuItemView) childAt).hasText()) ? true : IS_FROYO;
                    layoutParams.preventEdgeOffset = z3;
                    measureChildForCells = measureChildForCells(childAt, i6, layoutParams.isOverflowButton ? 1 : i3, i2, paddingTop);
                    i8 = Math.max(i8, measureChildForCells);
                    i10 = layoutParams.expandable ? i9 + 1 : i9;
                    if (layoutParams.isOverflowButton) {
                        z = 1;
                    } else {
                        size = i;
                    }
                    int i14 = i3 - measureChildForCells;
                    i9 = Math.max(i7, childAt.getMeasuredHeight());
                    if (measureChildForCells == 1) {
                        long j3 = ((long) (1 << i11)) | j;
                        i12 = i9;
                        i13 = i14;
                        i9 = i10;
                        z2 = z;
                        j2 = j3;
                        i3 = i8;
                        i5 = i4;
                    } else {
                        i5 = i4;
                        i3 = i8;
                        long j4 = j;
                        i12 = i9;
                        i13 = i14;
                        z2 = z;
                        i9 = i10;
                        j2 = j4;
                    }
                } else {
                    i5 = i10;
                    j2 = j;
                    i12 = i7;
                    i13 = i3;
                    i3 = i8;
                }
                i11++;
                i8 = i3;
                i7 = i12;
                i3 = i13;
                j = j2;
                i10 = i5;
            }
            i5 = (i14 == 0 || i10 != 2) ? 0 : 1;
            boolean z5 = 0;
            long j5 = j;
            measureChildForCells = i3;
            while (i9 > 0 && measureChildForCells > 0) {
                i4 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                j = 0;
                i3 = 0;
                int i15 = 0;
                while (i15 < childCount) {
                    layoutParams = (LayoutParams) getChildAt(i15).getLayoutParams();
                    if (!layoutParams.expandable || layoutParams.cellsUsed >= i4) {
                        if (layoutParams.cellsUsed == i4) {
                            j |= (long) (1 << i15);
                            size = i3 + 1;
                            i3 = i4;
                        }
                        size = i3;
                        i3 = i4;
                    } else {
                        i3 = layoutParams.cellsUsed;
                        j = (long) (1 << i15);
                        size = 1;
                    }
                    i15++;
                    i4 = i3;
                    i3 = size;
                }
                j5 |= j;
                if (i3 > measureChildForCells) {
                    break;
                }
                i15 = i4 + 1;
                i3 = measureChildForCells;
                i4 = 0;
                long j6 = j5;
                while (i4 < childCount) {
                    View childAt2 = getChildAt(i4);
                    layoutParams = (LayoutParams) childAt2.getLayoutParams();
                    if ((((long) (1 << i4)) & j) != 0) {
                        if (i5 != 0 && layoutParams.preventEdgeOffset && i3 == 1) {
                            childAt2.setPadding(this.mGeneratedItemPadding + i6, 0, this.mGeneratedItemPadding, 0);
                        }
                        layoutParams.cellsUsed++;
                        layoutParams.expanded = true;
                        size = i3 - 1;
                    } else if (layoutParams.cellsUsed == i15) {
                        j6 |= (long) (1 << i4);
                        size = i3;
                    } else {
                        size = i3;
                    }
                    i4++;
                    i3 = size;
                }
                j5 = j6;
                i11 = 1;
                measureChildForCells = i3;
            }
            j = j5;
            size = (i14 == 0 && i10 == 1) ? 1 : 0;
            boolean z6;
            if (measureChildForCells <= 0 || j == 0 || (measureChildForCells >= i10 - 1 && size == 0 && i8 <= 1)) {
                z6 = z5;
            } else {
                float f;
                View childAt3;
                float bitCount = (float) Long.bitCount(j);
                if (size == 0) {
                    if (!((1 & j) == 0 || ((LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset)) {
                        bitCount -= 0.5f;
                    }
                    if (!((((long) (1 << (childCount - 1))) & j) == 0 || ((LayoutParams) getChildAt(childCount - 1).getLayoutParams()).preventEdgeOffset)) {
                        f = bitCount - 0.5f;
                        i10 = f <= 0.0f ? (int) (((float) (measureChildForCells * i6)) / f) : 0;
                        i3 = 0;
                        z6 = z5;
                        while (i3 < childCount) {
                            if ((((long) (1 << i3)) & j) != 0) {
                                childAt3 = getChildAt(i3);
                                layoutParams = (LayoutParams) childAt3.getLayoutParams();
                                if (childAt3 instanceof ActionMenuItemView) {
                                    layoutParams.extraPixels = i10;
                                    layoutParams.expanded = true;
                                    if (i3 == 0 && !layoutParams.preventEdgeOffset) {
                                        layoutParams.leftMargin = (-i10) / 2;
                                    }
                                    z = 1;
                                } else if (layoutParams.isOverflowButton) {
                                    if (i3 != 0) {
                                        layoutParams.leftMargin = i10 / 2;
                                    }
                                    if (i3 != childCount - 1) {
                                        layoutParams.rightMargin = i10 / 2;
                                    }
                                } else {
                                    layoutParams.extraPixels = i10;
                                    layoutParams.expanded = true;
                                    layoutParams.rightMargin = (-i10) / 2;
                                    z = 1;
                                }
                                i3++;
                                z6 = z;
                            }
                            z = z6;
                            i3++;
                            z6 = z;
                        }
                    }
                }
                f = bitCount;
                if (f <= 0.0f) {
                }
                i3 = 0;
                z6 = z5;
                while (i3 < childCount) {
                    if ((((long) (1 << i3)) & j) != 0) {
                        childAt3 = getChildAt(i3);
                        layoutParams = (LayoutParams) childAt3.getLayoutParams();
                        if (childAt3 instanceof ActionMenuItemView) {
                            layoutParams.extraPixels = i10;
                            layoutParams.expanded = true;
                            layoutParams.leftMargin = (-i10) / 2;
                            z = 1;
                        } else if (layoutParams.isOverflowButton) {
                            if (i3 != 0) {
                                layoutParams.leftMargin = i10 / 2;
                            }
                            if (i3 != childCount - 1) {
                                layoutParams.rightMargin = i10 / 2;
                            }
                        } else {
                            layoutParams.extraPixels = i10;
                            layoutParams.expanded = true;
                            layoutParams.rightMargin = (-i10) / 2;
                            z = 1;
                        }
                        i3++;
                        z6 = z;
                    }
                    z = z6;
                    i3++;
                    z6 = z;
                }
            }
            if (i5 != 0) {
                i5 = MeasureSpec.makeMeasureSpec(size2 - paddingTop, mode);
                i10 = 0;
                while (i10 < childCount) {
                    View childAt4 = getChildAt(i10);
                    layoutParams = (LayoutParams) childAt4.getLayoutParams();
                    if (layoutParams.expanded) {
                        childAt4.measure(MeasureSpec.makeMeasureSpec(layoutParams.extraPixels + layoutParams.cellsUsed * i6, 1073741824), i5);
                    }
                    i10++;
                }
            }
            if (mode == 1073741824) {
                i7 = size2;
            }
            setMeasuredDimension(paddingLeft, i7);
        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams == null || !(layoutParams instanceof LayoutParams)) ? IS_FROYO : true;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return IS_FROYO;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        return layoutParams;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof LayoutParams)) {
            return generateDefaultLayoutParams();
        }
        LayoutParams layoutParams2 = new LayoutParams((LayoutParams) layoutParams);
        if (layoutParams2.gravity > 0) {
            return layoutParams2;
        }
        layoutParams2.gravity = 16;
        return layoutParams2;
    }

    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.isOverflowButton = true;
        return generateDefaultLayoutParams;
    }

    public int getWindowAnimations() {
        return 0;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        int i2 = 0;
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        if (i < getChildCount() && childAt instanceof ActionMenuChildView) {
            i2 = ((ActionMenuChildView) childAt).needsDividerAfter() | 0;
        }
        return (i <= 0 || !(childAt2 instanceof ActionMenuChildView)) ? z : ((ActionMenuChildView) childAt2).needsDividerBefore() | z;
    }

    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    public boolean isExpandedFormat() {
        return this.mFormatItems;
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (IS_FROYO) {
            super.onConfigurationChanged(configuration);
        }
        this.mPresenter.updateMenuView(IS_FROYO);
        if (this.mPresenter != null && this.mPresenter.isOverflowMenuShowing()) {
            this.mPresenter.hideOverflowMenu();
            this.mPresenter.showOverflowMenu();
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPresenter.dismissPopupMenus();
    }

    protected void onDraw(Canvas canvas) {
        if (IS_FROYO || !this.mFirst) {
            super.onDraw(canvas);
        } else {
            this.mFirst = false;
            requestLayout();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mFormatItems) {
            LayoutParams layoutParams;
            int measuredWidth;
            int measuredHeight;
            int width;
            int childCount = getChildCount();
            int i5 = (i2 + i4) / 2;
            int i6 = 0;
            int paddingRight = i3 - i - getPaddingRight() - getPaddingLeft();
            boolean z2 = 0;
            int i7 = 0;
            while (i7 < childCount) {
                View childAt = getChildAt(i7);
                if (childAt.getVisibility() != 8) {
                    layoutParams = (LayoutParams) childAt.getLayoutParams();
                    if (layoutParams.isOverflowButton) {
                        measuredWidth = childAt.getMeasuredWidth();
                        if (hasDividerBeforeChildAt(i7)) {
                            measuredWidth += 0;
                        }
                        measuredHeight = childAt.getMeasuredHeight();
                        width = getWidth() - getPaddingRight() - layoutParams.rightMargin;
                        int i8 = i5 - measuredHeight / 2;
                        childAt.layout(width - measuredWidth, i8, width, measuredHeight + i8);
                        width = paddingRight - measuredWidth;
                        paddingRight = 1;
                        measuredWidth = i6;
                    } else {
                        width = paddingRight - layoutParams.rightMargin + childAt.getMeasuredWidth() + layoutParams.leftMargin;
                        measuredWidth = i6 + 1;
                        paddingRight = measuredHeight;
                    }
                } else {
                    width = paddingRight;
                    measuredWidth = i6;
                    paddingRight = measuredHeight;
                }
                i7++;
                z2 = z;
                i6 = measuredWidth;
                paddingRight = width;
            }
            if (childCount == 1 && measuredHeight == 0) {
                View childAt2 = getChildAt(0);
                measuredWidth = childAt2.getMeasuredWidth();
                paddingRight = childAt2.getMeasuredHeight();
                i6 = (i3 - i) / 2 - measuredWidth / 2;
                measuredHeight = i5 - paddingRight / 2;
                childAt2.layout(i6, measuredHeight, measuredWidth + i6, paddingRight + measuredHeight);
            } else {
                width = i6 - (measuredHeight != 0 ? 0 : 1);
                i6 = Math.max(0, width > 0 ? paddingRight / width : 0);
                measuredWidth = getPaddingLeft();
                paddingRight = 0;
                while (paddingRight < childCount) {
                    View childAt3 = getChildAt(paddingRight);
                    layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3.getVisibility() == 8 || layoutParams.isOverflowButton) {
                        width = measuredWidth;
                    } else {
                        measuredWidth += layoutParams.leftMargin;
                        i7 = childAt3.getMeasuredWidth();
                        int measuredHeight2 = childAt3.getMeasuredHeight();
                        int i9 = i5 - measuredHeight2 / 2;
                        childAt3.layout(measuredWidth, i9, measuredWidth + i7, measuredHeight2 + i9);
                        width = layoutParams.rightMargin + i7 + i6 + measuredWidth;
                    }
                    paddingRight++;
                    measuredWidth = width;
                }
            }
        } else {
            super.onLayout(z, i, i2, i3, i4);
        }
    }

    protected void onMeasure(int i, int i2) {
        boolean z = this.mFormatItems;
        this.mFormatItems = MeasureSpec.getMode(i) == 1073741824;
        if (z != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int mode = MeasureSpec.getMode(i);
        if (!(!this.mFormatItems || this.mMenu == null || mode == this.mFormatItemsWidth)) {
            this.mFormatItemsWidth = mode;
            this.mMenu.onItemsChanged(true);
        }
        if (this.mFormatItems) {
            onMeasureExactFormat(i, i2);
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void setOverflowReserved(boolean z) {
        this.mReserveOverflow = z;
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
    }
}