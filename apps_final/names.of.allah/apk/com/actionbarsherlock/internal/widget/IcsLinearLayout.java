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

public class IcsLinearLayout
  extends NineLinearLayout
{
  private static final int LinearLayout_divider = 0;
  private static final int LinearLayout_dividerPadding = 2;
  private static final int LinearLayout_showDividers = 1;
  private static final int[] R_styleable_LinearLayout = { 16843049, 16843561, 16843562 };
  public static final int SHOW_DIVIDER_BEGINNING = 1;
  public static final int SHOW_DIVIDER_END = 4;
  public static final int SHOW_DIVIDER_MIDDLE = 2;
  public static final int SHOW_DIVIDER_NONE = 0;
  private Drawable mDivider;
  private int mDividerHeight;
  private int mDividerPadding;
  private int mDividerWidth;
  private int mShowDividers;
  
  public IcsLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R_styleable_LinearLayout);
    setDividerDrawable(paramContext.getDrawable(0));
    mShowDividers = paramContext.getInt(1, 0);
    mDividerPadding = paramContext.getDimensionPixelSize(2, 0);
    paramContext.recycle();
  }
  
  void drawDividersHorizontal(Canvas paramCanvas)
  {
    int j = getChildCount();
    int i = 0;
    View localView;
    while (i < j)
    {
      localView = getChildAt(i);
      if ((localView != null) && (localView.getVisibility() != 8) && (hasDividerBeforeChildAt(i)))
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
        drawVerticalDivider(paramCanvas, localView.getLeft() - leftMargin);
      }
      i += 1;
    }
    if (hasDividerBeforeChildAt(j))
    {
      localView = getChildAt(j - 1);
      if (localView != null) {
        break label122;
      }
    }
    label122:
    for (i = getWidth() - getPaddingRight() - mDividerWidth;; i = localView.getRight())
    {
      drawVerticalDivider(paramCanvas, i);
      return;
    }
  }
  
  void drawDividersVertical(Canvas paramCanvas)
  {
    int j = getChildCount();
    int i = 0;
    View localView;
    while (i < j)
    {
      localView = getChildAt(i);
      if ((localView != null) && (localView.getVisibility() != 8) && (hasDividerBeforeChildAt(i)))
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
        drawHorizontalDivider(paramCanvas, localView.getTop() - topMargin);
      }
      i += 1;
    }
    if (hasDividerBeforeChildAt(j))
    {
      localView = getChildAt(j - 1);
      if (localView != null) {
        break label122;
      }
    }
    label122:
    for (i = getHeight() - getPaddingBottom() - mDividerHeight;; i = localView.getBottom())
    {
      drawHorizontalDivider(paramCanvas, i);
      return;
    }
  }
  
  void drawHorizontalDivider(Canvas paramCanvas, int paramInt)
  {
    mDivider.setBounds(getPaddingLeft() + mDividerPadding, paramInt, getWidth() - getPaddingRight() - mDividerPadding, mDividerHeight + paramInt);
    mDivider.draw(paramCanvas);
  }
  
  void drawVerticalDivider(Canvas paramCanvas, int paramInt)
  {
    mDivider.setBounds(paramInt, getPaddingTop() + mDividerPadding, mDividerWidth + paramInt, getHeight() - getPaddingBottom() - mDividerPadding);
    mDivider.draw(paramCanvas);
  }
  
  public int getDividerPadding()
  {
    return mDividerPadding;
  }
  
  public int getDividerWidth()
  {
    return mDividerWidth;
  }
  
  public int getShowDividers()
  {
    return mShowDividers;
  }
  
  protected boolean hasDividerBeforeChildAt(int paramInt)
  {
    if (paramInt == 0) {
      if ((mShowDividers & 0x1) == 0) {}
    }
    do
    {
      return true;
      return false;
      if (paramInt != getChildCount()) {
        break;
      }
    } while ((mShowDividers & 0x4) != 0);
    return false;
    if ((mShowDividers & 0x2) != 0)
    {
      paramInt -= 1;
      for (;;)
      {
        if (paramInt < 0) {
          break label75;
        }
        if (getChildAt(paramInt).getVisibility() != 8) {
          break;
        }
        paramInt -= 1;
      }
    }
    return false;
    label75:
    return false;
  }
  
  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = indexOfChild(paramView);
    int j = getOrientation();
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramView.getLayoutParams();
    if (hasDividerBeforeChildAt(i))
    {
      if (j == 1) {
        topMargin = mDividerHeight;
      }
    }
    else
    {
      int k = getChildCount();
      if ((i == k - 1) && (hasDividerBeforeChildAt(k)))
      {
        if (j != 1) {
          break label109;
        }
        bottomMargin = mDividerHeight;
      }
    }
    for (;;)
    {
      super.measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
      leftMargin = mDividerWidth;
      break;
      label109:
      rightMargin = mDividerWidth;
    }
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (mDivider != null)
    {
      if (getOrientation() != 1) {
        break label26;
      }
      drawDividersVertical(paramCanvas);
    }
    for (;;)
    {
      super.onDraw(paramCanvas);
      return;
      label26:
      drawDividersHorizontal(paramCanvas);
    }
  }
  
  public void setDividerDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == mDivider) {
      return;
    }
    Object localObject = paramDrawable;
    if ((paramDrawable instanceof ColorDrawable))
    {
      localObject = paramDrawable;
      if (Build.VERSION.SDK_INT < 11) {
        localObject = new IcsColorDrawable((ColorDrawable)paramDrawable);
      }
    }
    mDivider = ((Drawable)localObject);
    if (localObject != null)
    {
      mDividerWidth = ((Drawable)localObject).getIntrinsicWidth();
      mDividerHeight = ((Drawable)localObject).getIntrinsicHeight();
      if (localObject != null) {
        break label94;
      }
    }
    label94:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      requestLayout();
      return;
      mDividerWidth = 0;
      mDividerHeight = 0;
      break;
    }
  }
  
  public void setDividerPadding(int paramInt)
  {
    mDividerPadding = paramInt;
  }
  
  public void setShowDividers(int paramInt)
  {
    if (paramInt != mShowDividers)
    {
      requestLayout();
      invalidate();
    }
    mShowDividers = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */