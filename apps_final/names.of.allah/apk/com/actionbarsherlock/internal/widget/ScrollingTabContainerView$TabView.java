package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.app.ActionBar.Tab;

public class ScrollingTabContainerView$TabView
  extends LinearLayout
{
  private View mCustomView;
  private ImageView mIconView;
  private ScrollingTabContainerView mParent;
  private ActionBar.Tab mTab;
  private CapitalizingTextView mTextView;
  
  public ScrollingTabContainerView$TabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void bindTab(ActionBar.Tab paramTab)
  {
    mTab = paramTab;
    update();
  }
  
  public ActionBar.Tab getTab()
  {
    return mTab;
  }
  
  public void init(ScrollingTabContainerView paramScrollingTabContainerView, ActionBar.Tab paramTab, boolean paramBoolean)
  {
    mParent = paramScrollingTabContainerView;
    mTab = paramTab;
    if (paramBoolean) {
      setGravity(19);
    }
    update();
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((mParent.mMaxTabWidth > 0) && (getMeasuredWidth() > mParent.mMaxTabWidth)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(mParent.mMaxTabWidth, 1073741824), paramInt2);
    }
  }
  
  public void update()
  {
    Object localObject1 = mTab;
    Object localObject2 = ((ActionBar.Tab)localObject1).getCustomView();
    if (localObject2 != null)
    {
      localObject1 = ((View)localObject2).getParent();
      if (localObject1 != this)
      {
        if (localObject1 != null) {
          ((ViewGroup)localObject1).removeView((View)localObject2);
        }
        addView((View)localObject2);
      }
      mCustomView = ((View)localObject2);
      if (mTextView != null) {
        mTextView.setVisibility(8);
      }
      if (mIconView != null)
      {
        mIconView.setVisibility(8);
        mIconView.setImageDrawable(null);
      }
    }
    label329:
    label354:
    for (;;)
    {
      return;
      if (mCustomView != null)
      {
        removeView(mCustomView);
        mCustomView = null;
      }
      Object localObject3 = ((ActionBar.Tab)localObject1).getIcon();
      localObject2 = ((ActionBar.Tab)localObject1).getText();
      if (localObject3 != null)
      {
        Object localObject4;
        if (mIconView == null)
        {
          localObject4 = new ImageView(getContext());
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
          gravity = 16;
          ((ImageView)localObject4).setLayoutParams(localLayoutParams);
          addView((View)localObject4, 0);
          mIconView = ((ImageView)localObject4);
        }
        mIconView.setImageDrawable((Drawable)localObject3);
        mIconView.setVisibility(0);
        if (localObject2 == null) {
          break label329;
        }
        if (mTextView == null)
        {
          localObject3 = new CapitalizingTextView(getContext(), null, R.attr.actionBarTabTextStyle);
          ((CapitalizingTextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
          localObject4 = new LinearLayout.LayoutParams(-2, -2);
          gravity = 16;
          ((CapitalizingTextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
          addView((View)localObject3);
          mTextView = ((CapitalizingTextView)localObject3);
        }
        mTextView.setTextCompat((CharSequence)localObject2);
        mTextView.setVisibility(0);
      }
      for (;;)
      {
        if (mIconView == null) {
          break label354;
        }
        mIconView.setContentDescription(((ActionBar.Tab)localObject1).getContentDescription());
        return;
        if (mIconView == null) {
          break;
        }
        mIconView.setVisibility(8);
        mIconView.setImageDrawable(null);
        break;
        if (mTextView != null)
        {
          mTextView.setVisibility(8);
          mTextView.setText(null);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ScrollingTabContainerView.TabView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */