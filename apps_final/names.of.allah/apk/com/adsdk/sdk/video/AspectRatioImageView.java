package com.adsdk.sdk.video;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.ImageView;

public class AspectRatioImageView
  extends ImageView
{
  private boolean mFill = false;
  private int mMaxH = -1;
  private int mMinW = -1;
  
  public AspectRatioImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public AspectRatioImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public AspectRatioImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public static float dip2pixel(int paramInt, Context paramContext)
  {
    paramContext = paramContext.getResources();
    return TypedValue.applyDimension(1, paramInt, paramContext.getDisplayMetrics());
  }
  
  void ensureConstraintMetAndSet(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    int j;
    float f;
    if (paramInt3 < paramInt4)
    {
      i = 1;
      if (i == 0) {
        break label133;
      }
      j = paramInt1;
      i = paramInt2;
      if (mMinW > 0)
      {
        f = dip2pixel(mMinW, getContext());
        j = paramInt1;
        i = paramInt2;
        if (paramInt1 < f)
        {
          j = (int)f;
          i = paramInt4 / paramInt3 * j;
        }
      }
      paramInt1 = j;
      paramInt2 = i;
      if (mMaxH > 0)
      {
        f = dip2pixel(mMaxH, getContext());
        paramInt1 = j;
        paramInt2 = i;
        if (i > f)
        {
          paramInt2 = (int)f;
          paramInt1 = paramInt2 * paramInt3 / paramInt4;
        }
      }
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      i = 0;
      break;
      label133:
      j = paramInt1;
      i = paramInt2;
      if (mMaxH > 0)
      {
        f = dip2pixel(mMaxH, getContext());
        j = paramInt1;
        i = paramInt2;
        if (paramInt2 > f)
        {
          i = (int)f;
          j = i * paramInt3 / paramInt4;
        }
      }
      paramInt1 = j;
      paramInt2 = i;
      if (mMinW > 0)
      {
        f = dip2pixel(mMinW, getContext());
        paramInt1 = j;
        paramInt2 = i;
        if (j < f)
        {
          paramInt1 = (int)f;
          paramInt2 = paramInt4 / paramInt3 * paramInt1;
        }
      }
    }
  }
  
  public void fillParent(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    mFill = paramBoolean;
    mMaxH = paramInt2;
    mMinW = paramInt1;
  }
  
  int getConstrainedHeight(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    float f;
    if (paramInt3 < paramInt4)
    {
      i = 1;
      if (i == 0) {
        break label107;
      }
      i = paramInt2;
      if (mMinW > 0)
      {
        f = dip2pixel(mMinW, getContext());
        i = paramInt2;
        if (paramInt1 < f)
        {
          paramInt1 = (int)f;
          i = paramInt4 / paramInt3 * paramInt1;
        }
      }
      paramInt1 = i;
      if (mMaxH > 0)
      {
        f = dip2pixel(mMaxH, getContext());
        paramInt1 = i;
        if (i > f) {
          paramInt1 = (int)f;
        }
      }
    }
    label107:
    int j;
    do
    {
      do
      {
        return paramInt1;
        i = 0;
        break;
        j = paramInt1;
        i = paramInt2;
        if (mMaxH > 0)
        {
          f = dip2pixel(mMaxH, getContext());
          j = paramInt1;
          i = paramInt2;
          if (paramInt2 > f)
          {
            i = (int)f;
            j = i * paramInt3 / paramInt4;
          }
        }
        paramInt1 = i;
      } while (mMinW <= 0);
      f = dip2pixel(mMinW, getContext());
      paramInt1 = i;
    } while (j >= f);
    paramInt1 = (int)f;
    return paramInt4 / paramInt3 * paramInt1;
  }
  
  protected int getMeasuredHeight(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    View.MeasureSpec.getSize(paramInt2);
    if ((!mFill) || (getDrawable() == null))
    {
      super.onMeasure(paramInt1, paramInt2);
      return 0;
    }
    int j = getDrawable().getIntrinsicHeight();
    int k = getDrawable().getIntrinsicWidth();
    if (k > j)
    {
      paramInt2 = i * j / k;
      paramInt1 = i;
    }
    for (;;)
    {
      return getConstrainedHeight(paramInt1, paramInt2, k, j);
      paramInt1 = i * k / j;
      paramInt2 = i;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    View.MeasureSpec.getSize(paramInt2);
    if ((!mFill) || (getDrawable() == null))
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int j = getDrawable().getIntrinsicHeight();
    int k = getDrawable().getIntrinsicWidth();
    if (k > j) {
      paramInt1 = i * j / k;
    }
    for (;;)
    {
      ensureConstraintMetAndSet(i, paramInt1, k, j);
      return;
      paramInt2 = i * k / j;
      paramInt1 = i;
      i = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.AspectRatioImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */