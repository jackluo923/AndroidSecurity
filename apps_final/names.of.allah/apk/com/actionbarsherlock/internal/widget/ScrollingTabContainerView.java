package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.app.ActionBar.Tab;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineHorizontalScrollView;

public class ScrollingTabContainerView
  extends NineHorizontalScrollView
  implements IcsAdapterView.OnItemSelectedListener
{
  private static final int FADE_DURATION = 200;
  private static final Interpolator sAlphaInterpolator = new DecelerateInterpolator();
  private boolean mAllowCollapse;
  private int mContentHeight;
  private LayoutInflater mInflater;
  int mMaxTabWidth;
  private int mSelectedTabIndex;
  private ScrollingTabContainerView.TabClickListener mTabClickListener;
  private IcsLinearLayout mTabLayout;
  Runnable mTabSelector;
  private IcsSpinner mTabSpinner;
  protected final ScrollingTabContainerView.VisibilityAnimListener mVisAnimListener = new ScrollingTabContainerView.VisibilityAnimListener(this);
  protected Animator mVisibilityAnim;
  
  public ScrollingTabContainerView(Context paramContext)
  {
    super(paramContext);
    setHorizontalScrollBarEnabled(false);
    TypedArray localTypedArray = getContext().obtainStyledAttributes(null, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
    setContentHeight(localTypedArray.getLayoutDimension(4, 0));
    localTypedArray.recycle();
    mInflater = LayoutInflater.from(paramContext);
    mTabLayout = createTabLayout();
    addView(mTabLayout, new ViewGroup.LayoutParams(-2, -1));
  }
  
  private IcsSpinner createSpinner()
  {
    IcsSpinner localIcsSpinner = new IcsSpinner(getContext(), null, R.attr.actionDropDownStyle);
    localIcsSpinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    localIcsSpinner.setOnItemSelectedListener(this);
    return localIcsSpinner;
  }
  
  private IcsLinearLayout createTabLayout()
  {
    TabsLinearLayout localTabsLinearLayout = (TabsLinearLayout)LayoutInflater.from(getContext()).inflate(R.layout.abs__action_bar_tab_bar_view, null);
    localTabsLinearLayout.setMeasureWithLargestChildEnabled(true);
    localTabsLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    return localTabsLinearLayout;
  }
  
  private ScrollingTabContainerView.TabView createTabView(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    ScrollingTabContainerView.TabView localTabView = (ScrollingTabContainerView.TabView)mInflater.inflate(R.layout.abs__action_bar_tab, null);
    localTabView.init(this, paramTab, paramBoolean);
    if (paramBoolean)
    {
      localTabView.setBackgroundDrawable(null);
      localTabView.setLayoutParams(new AbsListView.LayoutParams(-1, mContentHeight));
      return localTabView;
    }
    localTabView.setFocusable(true);
    if (mTabClickListener == null) {
      mTabClickListener = new ScrollingTabContainerView.TabClickListener(this, null);
    }
    localTabView.setOnClickListener(mTabClickListener);
    return localTabView;
  }
  
  private boolean isCollapsed()
  {
    return (mTabSpinner != null) && (mTabSpinner.getParent() == this);
  }
  
  private void performCollapse()
  {
    if (isCollapsed()) {
      return;
    }
    if (mTabSpinner == null) {
      mTabSpinner = createSpinner();
    }
    removeView(mTabLayout);
    addView(mTabSpinner, new ViewGroup.LayoutParams(-2, -1));
    if (mTabSpinner.getAdapter() == null) {
      mTabSpinner.setAdapter(new ScrollingTabContainerView.TabAdapter(this, null));
    }
    if (mTabSelector != null)
    {
      removeCallbacks(mTabSelector);
      mTabSelector = null;
    }
    mTabSpinner.setSelection(mSelectedTabIndex);
  }
  
  private boolean performExpand()
  {
    if (!isCollapsed()) {
      return false;
    }
    removeView(mTabSpinner);
    addView(mTabLayout, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(mTabSpinner.getSelectedItemPosition());
    return false;
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    paramTab = createTabView(paramTab, false);
    mTabLayout.addView(paramTab, paramInt, new LinearLayout.LayoutParams(0, -1, 1.0F));
    if (mTabSpinner != null) {
      ((ScrollingTabContainerView.TabAdapter)mTabSpinner.getAdapter()).notifyDataSetChanged();
    }
    if (paramBoolean) {
      paramTab.setSelected(true);
    }
    if (mAllowCollapse) {
      requestLayout();
    }
  }
  
  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    paramTab = createTabView(paramTab, false);
    mTabLayout.addView(paramTab, new LinearLayout.LayoutParams(0, -1, 1.0F));
    if (mTabSpinner != null) {
      ((ScrollingTabContainerView.TabAdapter)mTabSpinner.getAdapter()).notifyDataSetChanged();
    }
    if (paramBoolean) {
      paramTab.setSelected(true);
    }
    if (mAllowCollapse) {
      requestLayout();
    }
  }
  
  public void animateToTab(int paramInt)
  {
    View localView = mTabLayout.getChildAt(paramInt);
    if (mTabSelector != null) {
      removeCallbacks(mTabSelector);
    }
    mTabSelector = new ScrollingTabContainerView.1(this, localView);
    post(mTabSelector);
  }
  
  public void animateToVisibility(int paramInt)
  {
    if (mVisibilityAnim != null) {
      mVisibilityAnim.cancel();
    }
    if (paramInt == 0)
    {
      if (getVisibility() != 0) {
        setAlpha(0.0F);
      }
      localObjectAnimator = ObjectAnimator.ofFloat(this, "alpha", new float[] { 1.0F });
      localObjectAnimator.setDuration(200L);
      localObjectAnimator.setInterpolator(sAlphaInterpolator);
      localObjectAnimator.addListener(mVisAnimListener.withFinalVisibility(paramInt));
      localObjectAnimator.start();
      return;
    }
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(this, "alpha", new float[] { 0.0F });
    localObjectAnimator.setDuration(200L);
    localObjectAnimator.setInterpolator(sAlphaInterpolator);
    localObjectAnimator.addListener(mVisAnimListener.withFinalVisibility(paramInt));
    localObjectAnimator.start();
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (mTabSelector != null) {
      post(mTabSelector);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = getContext().obtainStyledAttributes(null, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
    setContentHeight(paramConfiguration.getLayoutDimension(4, 0));
    paramConfiguration.recycle();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (mTabSelector != null) {
      removeCallbacks(mTabSelector);
    }
  }
  
  public void onItemSelected(IcsAdapterView<?> paramIcsAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((ScrollingTabContainerView.TabView)paramView).getTab().select();
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 1;
    int i = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (i == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int j = mTabLayout.getChildCount();
      if ((j <= 1) || ((i != 1073741824) && (i != Integer.MIN_VALUE))) {
        break label180;
      }
      if (j <= 2) {
        break label167;
      }
      mMaxTabWidth = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      label72:
      i = View.MeasureSpec.makeMeasureSpec(mContentHeight, 1073741824);
      if ((bool) || (!mAllowCollapse)) {
        break label188;
      }
      label95:
      if (paramInt2 == 0) {
        break label201;
      }
      mTabLayout.measure(0, i);
      if (mTabLayout.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1)) {
        break label193;
      }
      performCollapse();
    }
    for (;;)
    {
      paramInt2 = getMeasuredWidth();
      super.onMeasure(paramInt1, i);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (paramInt2 != paramInt1)) {
        setTabSelected(mSelectedTabIndex);
      }
      return;
      bool = false;
      break;
      label167:
      mMaxTabWidth = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label72;
      label180:
      mMaxTabWidth = -1;
      break label72;
      label188:
      paramInt2 = 0;
      break label95;
      label193:
      performExpand();
      continue;
      label201:
      performExpand();
    }
  }
  
  public void onNothingSelected(IcsAdapterView<?> paramIcsAdapterView) {}
  
  public void removeAllTabs()
  {
    mTabLayout.removeAllViews();
    if (mTabSpinner != null) {
      ((ScrollingTabContainerView.TabAdapter)mTabSpinner.getAdapter()).notifyDataSetChanged();
    }
    if (mAllowCollapse) {
      requestLayout();
    }
  }
  
  public void removeTabAt(int paramInt)
  {
    mTabLayout.removeViewAt(paramInt);
    if (mTabSpinner != null) {
      ((ScrollingTabContainerView.TabAdapter)mTabSpinner.getAdapter()).notifyDataSetChanged();
    }
    if (mAllowCollapse) {
      requestLayout();
    }
  }
  
  public void setAllowCollapse(boolean paramBoolean)
  {
    mAllowCollapse = paramBoolean;
  }
  
  public void setContentHeight(int paramInt)
  {
    mContentHeight = paramInt;
    requestLayout();
  }
  
  public void setTabSelected(int paramInt)
  {
    mSelectedTabIndex = paramInt;
    int j = mTabLayout.getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = mTabLayout.getChildAt(i);
      if (i == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if (bool) {
          animateToTab(paramInt);
        }
        i += 1;
        break;
      }
    }
  }
  
  public void updateTab(int paramInt)
  {
    ((ScrollingTabContainerView.TabView)mTabLayout.getChildAt(paramInt)).update();
    if (mTabSpinner != null) {
      ((ScrollingTabContainerView.TabAdapter)mTabSpinner.getAdapter()).notifyDataSetChanged();
    }
    if (mAllowCollapse) {
      requestLayout();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ScrollingTabContainerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */