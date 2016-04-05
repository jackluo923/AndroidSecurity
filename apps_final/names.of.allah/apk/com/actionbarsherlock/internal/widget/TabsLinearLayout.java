package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout.LayoutParams;

public class TabsLinearLayout
  extends IcsLinearLayout
{
  private static final int LinearLayout_measureWithLargestChild = 0;
  private static final int[] R_styleable_LinearLayout = { 16843476 };
  private boolean mUseLargestChild;
  
  public TabsLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R_styleable_LinearLayout);
    mUseLargestChild = paramContext.getBoolean(0, false);
    paramContext.recycle();
  }
  
  private void useLargestChildHorizontal()
  {
    int m = getChildCount();
    int i = 0;
    int j = 0;
    while (i < m)
    {
      j = Math.max(getChildAt(i).getMeasuredWidth(), j);
      i += 1;
    }
    int k = 0;
    i = 0;
    View localView;
    if (k < m)
    {
      localView = getChildAt(k);
      if ((localView == null) || (localView.getVisibility() == 8)) {
        break label168;
      }
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
      if (weight > 0.0F)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(j, 1073741824), View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824));
        i += j;
        label113:
        int n = leftMargin;
        i = rightMargin + n + i;
      }
    }
    label168:
    for (;;)
    {
      k += 1;
      break;
      i += localView.getMeasuredWidth();
      break label113;
      setMeasuredDimension(getPaddingLeft() + getPaddingRight() + i, getMeasuredHeight());
      return;
    }
  }
  
  public boolean isMeasureWithLargestChildEnabled()
  {
    return mUseLargestChild;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (getChildCount() <= 2) {}
    do
    {
      return;
      paramInt1 = View.MeasureSpec.getMode(paramInt1);
    } while ((!mUseLargestChild) || (paramInt1 != 0) || (getOrientation() != 0));
    useLargestChildHorizontal();
  }
  
  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    mUseLargestChild = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.TabsLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */