package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

public class ActionMenuView
  extends IcsLinearLayout
  implements MenuBuilder.ItemInvoker, MenuView
{
  static final int GENERATED_ITEM_PADDING = 4;
  private static final boolean IS_FROYO;
  static final int MIN_CELL_SIZE = 56;
  private boolean mFirst = true;
  private boolean mFormatItems;
  private int mFormatItemsWidth;
  private int mGeneratedItemPadding;
  private MenuBuilder mMenu;
  private int mMinCellSize;
  private ActionMenuPresenter mPresenter;
  private boolean mReserveOverflow;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 8) {}
    for (boolean bool = true;; bool = false)
    {
      IS_FROYO = bool;
      return;
    }
  }
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f = getResourcesgetDisplayMetricsdensity;
    mMinCellSize = ((int)(56.0F * f));
    mGeneratedItemPadding = ((int)(f * 4.0F));
  }
  
  static int measureChildForCells(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    ActionMenuView.LayoutParams localLayoutParams = (ActionMenuView.LayoutParams)paramView.getLayoutParams();
    paramInt3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    if (paramInt2 > 0)
    {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, Integer.MIN_VALUE), paramInt3);
      paramInt4 = paramView.getMeasuredWidth();
      paramInt2 = paramInt4 / paramInt1;
      if (paramInt4 % paramInt1 != 0) {
        paramInt2 += 1;
      }
    }
    for (;;)
    {
      if ((paramView instanceof ActionMenuItemView)) {}
      for (ActionMenuItemView localActionMenuItemView = (ActionMenuItemView)paramView;; localActionMenuItemView = null)
      {
        boolean bool1 = bool2;
        if (!isOverflowButton)
        {
          bool1 = bool2;
          if (localActionMenuItemView != null)
          {
            bool1 = bool2;
            if (localActionMenuItemView.hasText()) {
              bool1 = true;
            }
          }
        }
        expandable = bool1;
        cellsUsed = paramInt2;
        paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt2 * paramInt1, 1073741824), paramInt3);
        return paramInt2;
      }
      continue;
      paramInt2 = 0;
    }
  }
  
  private void onMeasureExactFormat(int paramInt1, int paramInt2)
  {
    int i7 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i6 = View.MeasureSpec.getSize(paramInt2);
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int i11 = getPaddingTop() + getPaddingBottom();
    int i8 = paramInt1 - (i + j);
    paramInt1 = i8 / mMinCellSize;
    i = mMinCellSize;
    if (paramInt1 == 0)
    {
      setMeasuredDimension(i8, 0);
      return;
    }
    int i9 = mMinCellSize + i8 % i / paramInt1;
    i = 0;
    int n = 0;
    int m = 0;
    int i1 = 0;
    int k = 0;
    long l1 = 0L;
    int i10 = getChildCount();
    int i2 = 0;
    Object localObject;
    boolean bool;
    ActionMenuView.LayoutParams localLayoutParams;
    label239:
    label257:
    int i4;
    label294:
    label305:
    int i3;
    long l2;
    if (i2 < i10)
    {
      localObject = getChildAt(i2);
      if (((View)localObject).getVisibility() == 8) {
        break label1249;
      }
      bool = localObject instanceof ActionMenuItemView;
      i1 += 1;
      if (bool) {
        ((View)localObject).setPadding(mGeneratedItemPadding, 0, mGeneratedItemPadding, 0);
      }
      localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
      expanded = false;
      extraPixels = 0;
      cellsUsed = 0;
      expandable = false;
      leftMargin = 0;
      rightMargin = 0;
      if ((bool) && (((ActionMenuItemView)localObject).hasText()))
      {
        bool = true;
        preventEdgeOffset = bool;
        if (!isOverflowButton) {
          break label405;
        }
        j = 1;
        i4 = measureChildForCells((View)localObject, i9, j, paramInt2, i11);
        n = Math.max(n, i4);
        if (!expandable) {
          break label1242;
        }
        j = m + 1;
        if (!isOverflowButton) {
          break label1239;
        }
        k = 1;
        i3 = paramInt1 - i4;
        m = Math.max(i, ((View)localObject).getMeasuredHeight());
        if (i4 != 1) {
          break label1209;
        }
        l2 = 1 << i2;
        paramInt1 = m;
        m = j;
        i4 = k;
        l1 = l2 | l1;
        i = n;
        k = i3;
        j = paramInt1;
        n = i4;
        paramInt1 = i1;
      }
    }
    for (;;)
    {
      i2 += 1;
      i1 = paramInt1;
      paramInt1 = k;
      k = n;
      n = i;
      i = j;
      break;
      bool = false;
      break label239;
      label405:
      j = paramInt1;
      break label257;
      long l3;
      if ((k != 0) && (i1 == 2))
      {
        i3 = 1;
        paramInt2 = 0;
        i2 = paramInt1;
        paramInt1 = paramInt2;
        l3 = l1;
        if (m <= 0) {
          break label742;
        }
        l3 = l1;
        if (i2 <= 0) {
          break label742;
        }
        paramInt2 = Integer.MAX_VALUE;
        l2 = 0L;
        j = 0;
        i4 = 0;
        label462:
        if (i4 >= i10) {
          break label579;
        }
        localObject = (ActionMenuView.LayoutParams)getChildAt(i4).getLayoutParams();
        if (!expandable) {
          break label1196;
        }
        if (cellsUsed >= paramInt2) {
          break label545;
        }
        j = cellsUsed;
        l2 = 1 << i4;
        paramInt2 = 1;
      }
      for (;;)
      {
        int i5 = i4 + 1;
        i4 = j;
        j = paramInt2;
        paramInt2 = i4;
        i4 = i5;
        break label462;
        i3 = 0;
        break;
        label545:
        if (cellsUsed == paramInt2)
        {
          l2 |= 1 << i4;
          i5 = j + 1;
          j = paramInt2;
          paramInt2 = i5;
          continue;
          label579:
          l1 |= l2;
          l3 = l1;
          if (j <= i2)
          {
            paramInt1 = i2;
            j = 0;
            label603:
            if (j < i10)
            {
              localObject = getChildAt(j);
              localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
              if ((1 << j & l2) == 0L)
              {
                if (cellsUsed != paramInt2 + 1) {
                  break label1193;
                }
                l1 |= 1 << j;
              }
            }
          }
          label742:
          label902:
          label905:
          label1009:
          label1073:
          label1076:
          label1079:
          label1187:
          label1193:
          for (;;)
          {
            j += 1;
            break label603;
            if ((i3 != 0) && (preventEdgeOffset) && (paramInt1 == 1)) {
              ((View)localObject).setPadding(mGeneratedItemPadding + i9, 0, mGeneratedItemPadding, 0);
            }
            cellsUsed += 1;
            expanded = true;
            paramInt1 -= 1;
            continue;
            paramInt2 = 1;
            i2 = paramInt1;
            paramInt1 = paramInt2;
            break;
            float f2;
            float f1;
            if ((k == 0) && (i1 == 1))
            {
              paramInt2 = 1;
              if ((i2 <= 0) || (l3 == 0L) || ((i2 >= i1 - 1) && (paramInt2 == 0) && (n <= 1))) {
                break label1076;
              }
              float f3 = Long.bitCount(l3);
              f2 = f3;
              if (paramInt2 != 0) {
                break label1187;
              }
              f1 = f3;
              if ((1L & l3) != 0L)
              {
                f1 = f3;
                if (!getChildAt0getLayoutParamspreventEdgeOffset) {
                  f1 = f3 - 0.5F;
                }
              }
              f2 = f1;
              if ((1 << i10 - 1 & l3) == 0L) {
                break label1187;
              }
              f2 = f1;
              if (getChildAt1getLayoutParamspreventEdgeOffset) {
                break label1187;
              }
            }
            for (f1 -= 0.5F;; f1 = f2)
            {
              if (f1 > 0.0F)
              {
                paramInt2 = (int)(i2 * i9 / f1);
                j = 0;
                k = paramInt1;
                if (j >= i10) {
                  break label1079;
                }
                if ((1 << j & l3) == 0L) {
                  break label1073;
                }
                localObject = getChildAt(j);
                localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
                if (!(localObject instanceof ActionMenuItemView)) {
                  break label1009;
                }
                extraPixels = paramInt2;
                expanded = true;
                if ((j == 0) && (!preventEdgeOffset)) {
                  leftMargin = (-paramInt2 / 2);
                }
                paramInt1 = 1;
              }
              for (;;)
              {
                j += 1;
                break label905;
                paramInt2 = 0;
                break;
                paramInt2 = 0;
                break label902;
                if (isOverflowButton)
                {
                  extraPixels = paramInt2;
                  expanded = true;
                  rightMargin = (-paramInt2 / 2);
                  paramInt1 = 1;
                }
                else
                {
                  if (j != 0) {
                    leftMargin = (paramInt2 / 2);
                  }
                  if (j != i10 - 1) {
                    rightMargin = (paramInt2 / 2);
                  }
                }
              }
              k = paramInt1;
              if (k != 0)
              {
                paramInt2 = View.MeasureSpec.makeMeasureSpec(i6 - i11, i7);
                paramInt1 = 0;
                while (paramInt1 < i10)
                {
                  localObject = getChildAt(paramInt1);
                  localLayoutParams = (ActionMenuView.LayoutParams)((View)localObject).getLayoutParams();
                  if (expanded)
                  {
                    j = cellsUsed;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(extraPixels + j * i9, 1073741824), paramInt2);
                  }
                  paramInt1 += 1;
                }
              }
              if (i7 != 1073741824) {}
              for (;;)
              {
                setMeasuredDimension(i8, i);
                return;
                i = i6;
              }
            }
          }
        }
        else
        {
          label1196:
          i5 = paramInt2;
          paramInt2 = j;
          j = i5;
        }
      }
      label1209:
      paramInt1 = i1;
      i = n;
      i1 = m;
      m = j;
      n = k;
      j = i1;
      k = i3;
      continue;
      label1239:
      break label305;
      label1242:
      j = m;
      break label294;
      label1249:
      i3 = i1;
      j = i;
      i1 = paramInt1;
      i = n;
      paramInt1 = i3;
      n = k;
      k = i1;
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof ActionMenuView.LayoutParams));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  protected ActionMenuView.LayoutParams generateDefaultLayoutParams()
  {
    ActionMenuView.LayoutParams localLayoutParams = new ActionMenuView.LayoutParams(-2, -2);
    gravity = 16;
    return localLayoutParams;
  }
  
  public ActionMenuView.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ActionMenuView.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ActionMenuView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ActionMenuView.LayoutParams))
    {
      paramLayoutParams = new ActionMenuView.LayoutParams((ActionMenuView.LayoutParams)paramLayoutParams);
      if (gravity <= 0) {
        gravity = 16;
      }
      return paramLayoutParams;
    }
    return generateDefaultLayoutParams();
  }
  
  public ActionMenuView.LayoutParams generateOverflowButtonLayoutParams()
  {
    ActionMenuView.LayoutParams localLayoutParams = generateDefaultLayoutParams();
    isOverflowButton = true;
    return localLayoutParams;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  protected boolean hasDividerBeforeChildAt(int paramInt)
  {
    boolean bool2 = false;
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof ActionMenuView.ActionMenuChildView)) {
        bool1 = ((ActionMenuView.ActionMenuChildView)localView1).needsDividerAfter() | false;
      }
    }
    if ((paramInt > 0) && ((localView2 instanceof ActionMenuView.ActionMenuChildView))) {
      return ((ActionMenuView.ActionMenuChildView)localView2).needsDividerBefore() | bool1;
    }
    return bool1;
  }
  
  public void initialize(MenuBuilder paramMenuBuilder)
  {
    mMenu = paramMenuBuilder;
  }
  
  public boolean invokeItem(MenuItemImpl paramMenuItemImpl)
  {
    return mMenu.performItemAction(paramMenuItemImpl, 0);
  }
  
  public boolean isExpandedFormat()
  {
    return mFormatItems;
  }
  
  public boolean isOverflowReserved()
  {
    return mReserveOverflow;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (IS_FROYO) {
      super.onConfigurationChanged(paramConfiguration);
    }
    mPresenter.updateMenuView(false);
    if ((mPresenter != null) && (mPresenter.isOverflowMenuShowing()))
    {
      mPresenter.hideOverflowMenu();
      mPresenter.showOverflowMenu();
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    mPresenter.dismissPopupMenus();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((!IS_FROYO) && (mFirst))
    {
      mFirst = false;
      requestLayout();
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!mFormatItems)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i1 = getChildCount();
    int n = (paramInt2 + paramInt4) / 2;
    paramInt2 = 0;
    int i = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    paramInt4 = 0;
    int j = 0;
    label57:
    View localView;
    ActionMenuView.LayoutParams localLayoutParams;
    int k;
    int m;
    if (j < i1)
    {
      localView = getChildAt(j);
      if (localView.getVisibility() == 8) {
        break label495;
      }
      localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
      if (isOverflowButton)
      {
        k = localView.getMeasuredWidth();
        paramInt4 = k;
        if (hasDividerBeforeChildAt(j)) {
          paramInt4 = k + 0;
        }
        k = localView.getMeasuredHeight();
        m = getWidth() - getPaddingRight() - rightMargin;
        int i2 = n - k / 2;
        localView.layout(m - paramInt4, i2, m, k + i2);
        k = i - paramInt4;
        i = 1;
        paramInt4 = paramInt2;
        paramInt2 = k;
      }
    }
    for (;;)
    {
      k = j + 1;
      j = i;
      i = paramInt2;
      paramInt2 = paramInt4;
      paramInt4 = j;
      j = k;
      break label57;
      k = localView.getMeasuredWidth();
      m = leftMargin;
      k = i - (rightMargin + (k + m));
      m = paramInt2 + 1;
      i = paramInt4;
      paramInt2 = k;
      paramInt4 = m;
      continue;
      if ((i1 == 1) && (paramInt4 == 0))
      {
        localView = getChildAt(0);
        paramInt2 = localView.getMeasuredWidth();
        paramInt4 = localView.getMeasuredHeight();
        paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
        paramInt3 = n - paramInt4 / 2;
        localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
        return;
      }
      if (paramInt4 != 0)
      {
        paramInt1 = 0;
        label345:
        paramInt1 = paramInt2 - paramInt1;
        if (paramInt1 <= 0) {
          break label487;
        }
        paramInt1 = i / paramInt1;
        label358:
        paramInt3 = Math.max(0, paramInt1);
        paramInt1 = getPaddingLeft();
        paramInt2 = 0;
        label372:
        if (paramInt2 < i1)
        {
          localView = getChildAt(paramInt2);
          localLayoutParams = (ActionMenuView.LayoutParams)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (isOverflowButton)) {
            break label492;
          }
          paramInt1 += leftMargin;
          paramInt4 = localView.getMeasuredWidth();
          i = localView.getMeasuredHeight();
          j = n - i / 2;
          localView.layout(paramInt1, j, paramInt1 + paramInt4, i + j);
          paramInt1 = rightMargin + paramInt4 + paramInt3 + paramInt1;
        }
      }
      label487:
      label492:
      for (;;)
      {
        paramInt2 += 1;
        break label372;
        break;
        paramInt1 = 1;
        break label345;
        paramInt1 = 0;
        break label358;
      }
      label495:
      k = paramInt2;
      m = paramInt4;
      paramInt2 = i;
      paramInt4 = k;
      i = m;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = mFormatItems;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      mFormatItems = bool1;
      if (bool2 != mFormatItems) {
        mFormatItemsWidth = 0;
      }
      int i = View.MeasureSpec.getMode(paramInt1);
      if ((mFormatItems) && (mMenu != null) && (i != mFormatItemsWidth))
      {
        mFormatItemsWidth = i;
        mMenu.onItemsChanged(true);
      }
      if (!mFormatItems) {
        break;
      }
      onMeasureExactFormat(paramInt1, paramInt2);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    mReserveOverflow = paramBoolean;
  }
  
  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter)
  {
    mPresenter = paramActionMenuPresenter;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */