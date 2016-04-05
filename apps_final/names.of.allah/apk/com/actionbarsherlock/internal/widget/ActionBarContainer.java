package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineFrameLayout;

public class ActionBarContainer
  extends NineFrameLayout
{
  private ActionBarView mActionBarView;
  private Drawable mBackground;
  private boolean mIsSplit;
  private boolean mIsStacked;
  private boolean mIsTransitioning;
  private Drawable mSplitBackground;
  private Drawable mStackedBackground;
  private View mTabContainer;
  
  public ActionBarContainer(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBackgroundDrawable(null);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActionBar);
    mBackground = paramContext.getDrawable(2);
    mStackedBackground = paramContext.getDrawable(12);
    if (((mStackedBackground instanceof ColorDrawable)) && (Build.VERSION.SDK_INT < 11)) {
      mStackedBackground = new IcsColorDrawable((ColorDrawable)mStackedBackground);
    }
    if (getId() == R.id.abs__split_action_bar)
    {
      mIsSplit = true;
      mSplitBackground = paramContext.getDrawable(3);
    }
    paramContext.recycle();
    boolean bool;
    if (mIsSplit) {
      if (mSplitBackground == null) {
        bool = true;
      }
    }
    for (;;)
    {
      setWillNotDraw(bool);
      return;
      bool = false;
      continue;
      if ((mBackground == null) && (mStackedBackground == null)) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  public View getTabContainer()
  {
    return mTabContainer;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if ((getWidth() == 0) || (getHeight() == 0)) {}
    do
    {
      do
      {
        return;
        if (!mIsSplit) {
          break;
        }
      } while (mSplitBackground == null);
      mSplitBackground.draw(paramCanvas);
      return;
      if (mBackground != null) {
        mBackground.draw(paramCanvas);
      }
    } while ((mStackedBackground == null) || (!mIsStacked));
    mStackedBackground.draw(paramCanvas);
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    mActionBarView = ((ActionBarView)findViewById(R.id.abs__action_bar));
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    super.onHoverEvent(paramMotionEvent);
    return true;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return (mIsTransitioning) || (super.onInterceptTouchEvent(paramMotionEvent));
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    boolean bool = false;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((mTabContainer != null) && (mTabContainer.getVisibility() != 8)) {
      paramInt2 = 1;
    }
    int j;
    while ((mTabContainer != null) && (mTabContainer.getVisibility() != 8))
    {
      paramInt4 = getMeasuredHeight();
      j = mTabContainer.getMeasuredHeight();
      if ((mActionBarView.getDisplayOptions() & 0x2) != 0) {
        break label204;
      }
      int k = getChildCount();
      paramInt4 = 0;
      for (;;)
      {
        if (paramInt4 < k)
        {
          View localView = getChildAt(paramInt4);
          if ((localView != mTabContainer) && (!mActionBarView.isCollapsed())) {
            localView.offsetTopAndBottom(j);
          }
          paramInt4 += 1;
          continue;
          paramInt2 = 0;
          break;
        }
      }
      mTabContainer.layout(paramInt1, 0, paramInt3, j);
    }
    if (mIsSplit)
    {
      if (mSplitBackground == null) {
        break label345;
      }
      mSplitBackground.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
      paramInt1 = i;
    }
    for (;;)
    {
      if (paramInt1 != 0) {
        invalidate();
      }
      return;
      label204:
      mTabContainer.layout(paramInt1, paramInt4 - j, paramInt3, paramInt4);
      break;
      if (mBackground != null) {
        mBackground.setBounds(mActionBarView.getLeft(), mActionBarView.getTop(), mActionBarView.getRight(), mActionBarView.getBottom());
      }
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        paramBoolean = bool;
        if (paramInt2 != 0)
        {
          paramBoolean = bool;
          if (mStackedBackground != null) {
            paramBoolean = true;
          }
        }
        mIsStacked = paramBoolean;
        if (paramBoolean)
        {
          mStackedBackground.setBounds(mTabContainer.getLeft(), mTabContainer.getTop(), mTabContainer.getRight(), mTabContainer.getBottom());
          paramInt1 = i;
          break;
        }
        break;
      }
      label345:
      paramInt1 = 0;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (mActionBarView == null) {}
    for (;;)
    {
      return;
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)mActionBarView.getLayoutParams();
      if (mActionBarView.isCollapsed()) {}
      int i;
      for (paramInt1 = 0; (mTabContainer != null) && (mTabContainer.getVisibility() != 8) && (View.MeasureSpec.getMode(paramInt2) == Integer.MIN_VALUE); paramInt1 = bottomMargin + (paramInt1 + i))
      {
        paramInt2 = View.MeasureSpec.getSize(paramInt2);
        setMeasuredDimension(getMeasuredWidth(), Math.min(paramInt1 + mTabContainer.getMeasuredHeight(), paramInt2));
        return;
        paramInt1 = mActionBarView.getMeasuredHeight();
        i = topMargin;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void setPrimaryBackground(Drawable paramDrawable)
  {
    mBackground = paramDrawable;
    invalidate();
  }
  
  public void setSplitBackground(Drawable paramDrawable)
  {
    mSplitBackground = paramDrawable;
    invalidate();
  }
  
  public void setStackedBackground(Drawable paramDrawable)
  {
    mStackedBackground = paramDrawable;
    invalidate();
  }
  
  public void setTabContainer(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (mTabContainer != null) {
      removeView(mTabContainer);
    }
    mTabContainer = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null)
    {
      addView(paramScrollingTabContainerView);
      ViewGroup.LayoutParams localLayoutParams = paramScrollingTabContainerView.getLayoutParams();
      width = -1;
      height = -2;
      paramScrollingTabContainerView.setAllowCollapse(false);
    }
  }
  
  public void setTransitioning(boolean paramBoolean)
  {
    mIsTransitioning = paramBoolean;
    if (paramBoolean) {}
    for (int i = 393216;; i = 262144)
    {
      setDescendantFocusability(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */