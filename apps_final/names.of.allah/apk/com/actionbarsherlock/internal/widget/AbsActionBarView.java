package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.view.NineViewGroup;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;

public abstract class AbsActionBarView
  extends NineViewGroup
{
  private static final int FADE_DURATION = 200;
  private static final Interpolator sAlphaInterpolator = new DecelerateInterpolator();
  protected ActionMenuPresenter mActionMenuPresenter;
  protected int mContentHeight;
  final Context mContext;
  protected ActionMenuView mMenuView;
  protected boolean mSplitActionBar;
  protected ActionBarContainer mSplitView;
  protected boolean mSplitWhenNarrow;
  protected final AbsActionBarView.VisibilityAnimListener mVisAnimListener = new AbsActionBarView.VisibilityAnimListener(this);
  protected Animator mVisibilityAnim;
  
  public AbsActionBarView(Context paramContext)
  {
    super(paramContext);
    mContext = paramContext;
  }
  
  public AbsActionBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mContext = paramContext;
  }
  
  public AbsActionBarView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    mContext = paramContext;
  }
  
  public void animateToVisibility(int paramInt)
  {
    if (mVisibilityAnim != null) {
      mVisibilityAnim.cancel();
    }
    AnimatorSet localAnimatorSet;
    ObjectAnimator localObjectAnimator2;
    if (paramInt == 0)
    {
      if (getVisibility() != 0)
      {
        setAlpha(0.0F);
        if ((mSplitView != null) && (mMenuView != null)) {
          mMenuView.setAlpha(0.0F);
        }
      }
      localObjectAnimator1 = ObjectAnimator.ofFloat(this, "alpha", new float[] { 1.0F });
      localObjectAnimator1.setDuration(200L);
      localObjectAnimator1.setInterpolator(sAlphaInterpolator);
      if ((mSplitView != null) && (mMenuView != null))
      {
        localAnimatorSet = new AnimatorSet();
        localObjectAnimator2 = ObjectAnimator.ofFloat(mMenuView, "alpha", new float[] { 1.0F });
        localObjectAnimator2.setDuration(200L);
        localAnimatorSet.addListener(mVisAnimListener.withFinalVisibility(paramInt));
        localAnimatorSet.play(localObjectAnimator1).with(localObjectAnimator2);
        localAnimatorSet.start();
        return;
      }
      localObjectAnimator1.addListener(mVisAnimListener.withFinalVisibility(paramInt));
      localObjectAnimator1.start();
      return;
    }
    ObjectAnimator localObjectAnimator1 = ObjectAnimator.ofFloat(this, "alpha", new float[] { 0.0F });
    localObjectAnimator1.setDuration(200L);
    localObjectAnimator1.setInterpolator(sAlphaInterpolator);
    if ((mSplitView != null) && (mMenuView != null))
    {
      localAnimatorSet = new AnimatorSet();
      localObjectAnimator2 = ObjectAnimator.ofFloat(mMenuView, "alpha", new float[] { 0.0F });
      localObjectAnimator2.setDuration(200L);
      localAnimatorSet.addListener(mVisAnimListener.withFinalVisibility(paramInt));
      localAnimatorSet.play(localObjectAnimator1).with(localObjectAnimator2);
      localAnimatorSet.start();
      return;
    }
    localObjectAnimator1.addListener(mVisAnimListener.withFinalVisibility(paramInt));
    localObjectAnimator1.start();
  }
  
  public void dismissPopupMenus()
  {
    if (mActionMenuPresenter != null) {
      mActionMenuPresenter.dismissPopupMenus();
    }
  }
  
  public int getAnimatedVisibility()
  {
    if (mVisibilityAnim != null) {
      return mVisAnimListener.mFinalVisibility;
    }
    return getVisibility();
  }
  
  public int getContentHeight()
  {
    return mContentHeight;
  }
  
  public boolean hideOverflowMenu()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.hideOverflowMenu();
    }
    return false;
  }
  
  public boolean isOverflowMenuShowing()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.isOverflowMenuShowing();
    }
    return false;
  }
  
  public boolean isOverflowReserved()
  {
    return (mActionMenuPresenter != null) && (mActionMenuPresenter.isOverflowReserved());
  }
  
  protected int measureChildView(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, Integer.MIN_VALUE), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() - paramInt3);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    for (;;)
    {
      TypedArray localTypedArray = getContext().obtainStyledAttributes(null, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
      setContentHeight(localTypedArray.getLayoutDimension(4, 0));
      localTypedArray.recycle();
      if (mSplitWhenNarrow) {
        setSplitActionBar(ResourcesCompat.getResources_getBoolean(getContext(), R.bool.abs__split_action_bar_is_narrow));
      }
      if (mActionMenuPresenter != null) {
        mActionMenuPresenter.onConfigurationChanged(paramConfiguration);
      }
      return;
      if (mMenuView != null) {
        mMenuView.onConfigurationChanged(paramConfiguration);
      }
    }
  }
  
  protected int positionChild(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - j) / 2 + paramInt2;
    paramView.layout(paramInt1, paramInt2, paramInt1 + i, j + paramInt2);
    return i;
  }
  
  protected int positionChildInverse(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - j) / 2 + paramInt2;
    paramView.layout(paramInt1 - i, paramInt2, paramInt1, j + paramInt2);
    return i;
  }
  
  public void postShowOverflowMenu()
  {
    post(new AbsActionBarView.1(this));
  }
  
  public void setContentHeight(int paramInt)
  {
    mContentHeight = paramInt;
    requestLayout();
  }
  
  public void setSplitActionBar(boolean paramBoolean)
  {
    mSplitActionBar = paramBoolean;
  }
  
  public void setSplitView(ActionBarContainer paramActionBarContainer)
  {
    mSplitView = paramActionBarContainer;
  }
  
  public void setSplitWhenNarrow(boolean paramBoolean)
  {
    mSplitWhenNarrow = paramBoolean;
  }
  
  public void setVisibility(int paramInt)
  {
    if (mVisibilityAnim != null) {
      mVisibilityAnim.end();
    }
    super.setVisibility(paramInt);
  }
  
  public boolean showOverflowMenu()
  {
    if (mActionMenuPresenter != null) {
      return mActionMenuPresenter.showOverflowMenu();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.AbsActionBarView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */