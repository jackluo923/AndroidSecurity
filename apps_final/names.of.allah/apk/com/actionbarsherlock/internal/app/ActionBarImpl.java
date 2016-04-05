package com.actionbarsherlock.internal.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.SpinnerAdapter;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.ActionBar.LayoutParams;
import com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener;
import com.actionbarsherlock.app.ActionBar.OnNavigationListener;
import com.actionbarsherlock.app.ActionBar.Tab;
import com.actionbarsherlock.app.ActionBar.TabListener;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineFrameLayout;
import com.actionbarsherlock.internal.widget.ActionBarContainer;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.internal.widget.ActionBarView;
import com.actionbarsherlock.internal.widget.ScrollingTabContainerView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import java.util.ArrayList;

public class ActionBarImpl
  extends ActionBar
{
  private static final int CONTEXT_DISPLAY_NORMAL = 0;
  private static final int CONTEXT_DISPLAY_SPLIT = 1;
  private static final int INVALID_POSITION = -1;
  ActionBarImpl.ActionModeImpl mActionMode;
  private ActionBarView mActionView;
  private Activity mActivity;
  private ActionBarContainer mContainerView;
  private NineFrameLayout mContentView;
  private Context mContext;
  private int mContextDisplayMode;
  private ActionBarContextView mContextView;
  private Animator mCurrentModeAnim;
  private Animator mCurrentShowAnim;
  ActionMode mDeferredDestroyActionMode;
  ActionMode.Callback mDeferredModeDestroyCallback;
  final Handler mHandler = new Handler();
  private boolean mHasEmbeddedTabs;
  final Animator.AnimatorListener mHideListener = new ActionBarImpl.1(this);
  private boolean mLastMenuVisibility;
  private ArrayList<ActionBar.OnMenuVisibilityListener> mMenuVisibilityListeners = new ArrayList();
  private int mSavedTabPosition = -1;
  private ActionBarImpl.TabImpl mSelectedTab;
  private boolean mShowHideAnimationEnabled;
  final Animator.AnimatorListener mShowListener = new ActionBarImpl.2(this);
  private ActionBarContainer mSplitView;
  private ScrollingTabContainerView mTabScrollView;
  Runnable mTabSelector;
  private ArrayList<ActionBarImpl.TabImpl> mTabs = new ArrayList();
  private Context mThemedContext;
  boolean mWasHiddenBeforeMode;
  
  public ActionBarImpl(Activity paramActivity, int paramInt)
  {
    mActivity = paramActivity;
    paramActivity = paramActivity.getWindow().getDecorView();
    init(paramActivity);
    if ((paramInt & 0x200) == 0) {
      mContentView = ((NineFrameLayout)paramActivity.findViewById(16908290));
    }
  }
  
  public ActionBarImpl(Dialog paramDialog)
  {
    init(paramDialog.getWindow().getDecorView());
  }
  
  private void cleanupTabs()
  {
    if (mSelectedTab != null) {
      selectTab(null);
    }
    mTabs.clear();
    if (mTabScrollView != null) {
      mTabScrollView.removeAllTabs();
    }
    mSavedTabPosition = -1;
  }
  
  private void configureTab(ActionBar.Tab paramTab, int paramInt)
  {
    paramTab = (ActionBarImpl.TabImpl)paramTab;
    if (paramTab.getCallback() == null) {
      throw new IllegalStateException("Action Bar Tab must have a Callback");
    }
    paramTab.setPosition(paramInt);
    mTabs.add(paramInt, paramTab);
    int i = mTabs.size();
    paramInt += 1;
    while (paramInt < i)
    {
      ((ActionBarImpl.TabImpl)mTabs.get(paramInt)).setPosition(paramInt);
      paramInt += 1;
    }
  }
  
  private void ensureTabsExist()
  {
    int i = 0;
    if (mTabScrollView != null) {
      return;
    }
    ScrollingTabContainerView localScrollingTabContainerView = new ScrollingTabContainerView(mContext);
    if (mHasEmbeddedTabs)
    {
      localScrollingTabContainerView.setVisibility(0);
      mActionView.setEmbeddedTabView(localScrollingTabContainerView);
      mTabScrollView = localScrollingTabContainerView;
      return;
    }
    if (getNavigationMode() == 2) {}
    for (;;)
    {
      localScrollingTabContainerView.setVisibility(i);
      mContainerView.setTabContainer(localScrollingTabContainerView);
      break;
      i = 8;
    }
  }
  
  private void init(View paramView)
  {
    int j = 1;
    mContext = paramView.getContext();
    mActionView = ((ActionBarView)paramView.findViewById(R.id.abs__action_bar));
    mContextView = ((ActionBarContextView)paramView.findViewById(R.id.abs__action_context_bar));
    mContainerView = ((ActionBarContainer)paramView.findViewById(R.id.abs__action_bar_container));
    mSplitView = ((ActionBarContainer)paramView.findViewById(R.id.abs__split_action_bar));
    if ((mActionView == null) || (mContextView == null) || (mContainerView == null)) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
    }
    mActionView.setContextView(mContextView);
    int i;
    if (mActionView.isSplitActionBar())
    {
      i = 1;
      mContextDisplayMode = i;
      if (mContext.getApplicationInfo().targetSdkVersion >= 14) {
        break label205;
      }
      i = 1;
      label166:
      if ((mActionView.getDisplayOptions() & 0x4) == 0) {
        break label210;
      }
    }
    for (;;)
    {
      setHomeButtonEnabled(i | j);
      setHasEmbeddedTabs(ResourcesCompat.getResources_getBoolean(mContext, R.bool.abs__action_bar_embed_tabs));
      return;
      i = 0;
      break;
      label205:
      i = 0;
      break label166;
      label210:
      j = 0;
    }
  }
  
  private void setHasEmbeddedTabs(boolean paramBoolean)
  {
    boolean bool = true;
    mHasEmbeddedTabs = paramBoolean;
    int i;
    label44:
    Object localObject;
    int j;
    if (!mHasEmbeddedTabs)
    {
      mActionView.setEmbeddedTabView(null);
      mContainerView.setTabContainer(mTabScrollView);
      if (getNavigationMode() != 2) {
        break label116;
      }
      i = 1;
      if (mTabScrollView != null)
      {
        localObject = mTabScrollView;
        if (i == 0) {
          break label121;
        }
        j = 0;
        label63:
        ((ScrollingTabContainerView)localObject).setVisibility(j);
      }
      localObject = mActionView;
      if ((mHasEmbeddedTabs) || (i == 0)) {
        break label128;
      }
    }
    label116:
    label121:
    label128:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((ActionBarView)localObject).setCollapsable(paramBoolean);
      return;
      mContainerView.setTabContainer(null);
      mActionView.setEmbeddedTabView(mTabScrollView);
      break;
      i = 0;
      break label44;
      j = 8;
      break label63;
    }
  }
  
  public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    mMenuVisibilityListeners.add(paramOnMenuVisibilityListener);
  }
  
  public void addTab(ActionBar.Tab paramTab)
  {
    addTab(paramTab, mTabs.isEmpty());
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt)
  {
    addTab(paramTab, paramInt, mTabs.isEmpty());
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    ensureTabsExist();
    mTabScrollView.addTab(paramTab, paramInt, paramBoolean);
    configureTab(paramTab, paramInt);
    if (paramBoolean) {
      selectTab(paramTab);
    }
  }
  
  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    ensureTabsExist();
    mTabScrollView.addTab(paramTab, paramBoolean);
    configureTab(paramTab, mTabs.size());
    if (paramBoolean) {
      selectTab(paramTab);
    }
  }
  
  void animateToMode(boolean paramBoolean)
  {
    int j = 8;
    if (paramBoolean) {
      show(false);
    }
    if (mCurrentModeAnim != null) {
      mCurrentModeAnim.end();
    }
    Object localObject = mActionView;
    if (paramBoolean)
    {
      i = 8;
      ((ActionBarView)localObject).animateToVisibility(i);
      localObject = mContextView;
      if (!paramBoolean) {
        break label110;
      }
      i = 0;
      label55:
      ((ActionBarContextView)localObject).animateToVisibility(i);
      if ((mTabScrollView != null) && (!mActionView.hasEmbeddedTabs()) && (mActionView.isCollapsed()))
      {
        localObject = mTabScrollView;
        if (!paramBoolean) {
          break label116;
        }
      }
    }
    label110:
    label116:
    for (int i = j;; i = 0)
    {
      ((ScrollingTabContainerView)localObject).animateToVisibility(i);
      return;
      i = 0;
      break;
      i = 8;
      break label55;
    }
  }
  
  void completeDeferredDestroyActionMode()
  {
    if (mDeferredModeDestroyCallback != null)
    {
      mDeferredModeDestroyCallback.onDestroyActionMode(mDeferredDestroyActionMode);
      mDeferredDestroyActionMode = null;
      mDeferredModeDestroyCallback = null;
    }
  }
  
  public void dispatchMenuVisibilityChanged(boolean paramBoolean)
  {
    if (paramBoolean == mLastMenuVisibility) {}
    for (;;)
    {
      return;
      mLastMenuVisibility = paramBoolean;
      int j = mMenuVisibilityListeners.size();
      int i = 0;
      while (i < j)
      {
        ((ActionBar.OnMenuVisibilityListener)mMenuVisibilityListeners.get(i)).onMenuVisibilityChanged(paramBoolean);
        i += 1;
      }
    }
  }
  
  public View getCustomView()
  {
    return mActionView.getCustomNavigationView();
  }
  
  public int getDisplayOptions()
  {
    return mActionView.getDisplayOptions();
  }
  
  public int getHeight()
  {
    return mContainerView.getHeight();
  }
  
  public int getNavigationItemCount()
  {
    switch (mActionView.getNavigationMode())
    {
    }
    SpinnerAdapter localSpinnerAdapter;
    do
    {
      return 0;
      return mTabs.size();
      localSpinnerAdapter = mActionView.getDropdownAdapter();
    } while (localSpinnerAdapter == null);
    return localSpinnerAdapter.getCount();
  }
  
  public int getNavigationMode()
  {
    return mActionView.getNavigationMode();
  }
  
  public int getSelectedNavigationIndex()
  {
    switch (mActionView.getNavigationMode())
    {
    default: 
    case 2: 
      do
      {
        return -1;
      } while (mSelectedTab == null);
      return mSelectedTab.getPosition();
    }
    return mActionView.getDropdownSelectedPosition();
  }
  
  public ActionBar.Tab getSelectedTab()
  {
    return mSelectedTab;
  }
  
  public CharSequence getSubtitle()
  {
    return mActionView.getSubtitle();
  }
  
  public ActionBar.Tab getTabAt(int paramInt)
  {
    return (ActionBar.Tab)mTabs.get(paramInt);
  }
  
  public int getTabCount()
  {
    return mTabs.size();
  }
  
  public Context getThemedContext()
  {
    int i;
    if (mThemedContext == null)
    {
      TypedValue localTypedValue = new TypedValue();
      mContext.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
      i = resourceId;
      if (i == 0) {
        break label61;
      }
    }
    label61:
    for (mThemedContext = new ContextThemeWrapper(mContext, i);; mThemedContext = mContext) {
      return mThemedContext;
    }
  }
  
  public CharSequence getTitle()
  {
    return mActionView.getTitle();
  }
  
  public void hide()
  {
    if (mCurrentShowAnim != null) {
      mCurrentShowAnim.end();
    }
    if (mContainerView.getVisibility() == 8) {
      return;
    }
    if (mShowHideAnimationEnabled)
    {
      mContainerView.setAlpha(1.0F);
      mContainerView.setTransitioning(true);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      AnimatorSet.Builder localBuilder = localAnimatorSet.play(ObjectAnimator.ofFloat(mContainerView, "alpha", new float[] { 0.0F }));
      if (mContentView != null)
      {
        localBuilder.with(ObjectAnimator.ofFloat(mContentView, "translationY", new float[] { 0.0F, -mContainerView.getHeight() }));
        localBuilder.with(ObjectAnimator.ofFloat(mContainerView, "translationY", new float[] { -mContainerView.getHeight() }));
      }
      if ((mSplitView != null) && (mSplitView.getVisibility() == 0))
      {
        mSplitView.setAlpha(1.0F);
        localBuilder.with(ObjectAnimator.ofFloat(mSplitView, "alpha", new float[] { 0.0F }));
      }
      localAnimatorSet.addListener(mHideListener);
      mCurrentShowAnim = localAnimatorSet;
      localAnimatorSet.start();
      return;
    }
    mHideListener.onAnimationEnd(null);
  }
  
  public boolean isShowing()
  {
    return mContainerView.getVisibility() == 0;
  }
  
  public ActionBar.Tab newTab()
  {
    return new ActionBarImpl.TabImpl(this);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    setHasEmbeddedTabs(ResourcesCompat.getResources_getBoolean(mContext, R.bool.abs__action_bar_embed_tabs));
    if (Build.VERSION.SDK_INT < 8)
    {
      mActionView.onConfigurationChanged(paramConfiguration);
      if (mContextView != null) {
        mContextView.onConfigurationChanged(paramConfiguration);
      }
    }
  }
  
  public void removeAllTabs()
  {
    cleanupTabs();
  }
  
  public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    mMenuVisibilityListeners.remove(paramOnMenuVisibilityListener);
  }
  
  public void removeTab(ActionBar.Tab paramTab)
  {
    removeTabAt(paramTab.getPosition());
  }
  
  public void removeTabAt(int paramInt)
  {
    if (mTabScrollView == null) {}
    int i;
    do
    {
      return;
      if (mSelectedTab != null) {}
      for (i = mSelectedTab.getPosition();; i = mSavedTabPosition)
      {
        mTabScrollView.removeTabAt(paramInt);
        localTabImpl = (ActionBarImpl.TabImpl)mTabs.remove(paramInt);
        if (localTabImpl != null) {
          localTabImpl.setPosition(-1);
        }
        int k = mTabs.size();
        int j = paramInt;
        while (j < k)
        {
          ((ActionBarImpl.TabImpl)mTabs.get(j)).setPosition(j);
          j += 1;
        }
      }
    } while (i != paramInt);
    if (mTabs.isEmpty()) {}
    for (ActionBarImpl.TabImpl localTabImpl = null;; localTabImpl = (ActionBarImpl.TabImpl)mTabs.get(Math.max(0, paramInt - 1)))
    {
      selectTab(localTabImpl);
      return;
    }
  }
  
  public void selectTab(ActionBar.Tab paramTab)
  {
    int i = -1;
    if (getNavigationMode() != 2) {
      if (paramTab != null)
      {
        i = paramTab.getPosition();
        mSavedTabPosition = i;
      }
    }
    for (;;)
    {
      return;
      i = -1;
      break;
      FragmentTransaction localFragmentTransaction = null;
      if ((mActivity instanceof FragmentActivity)) {
        localFragmentTransaction = ((FragmentActivity)mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
      }
      if (mSelectedTab == paramTab) {
        if (mSelectedTab != null)
        {
          mSelectedTab.getCallback().onTabReselected(mSelectedTab, localFragmentTransaction);
          mTabScrollView.animateToTab(paramTab.getPosition());
        }
      }
      while ((localFragmentTransaction != null) && (!localFragmentTransaction.isEmpty()))
      {
        localFragmentTransaction.commit();
        return;
        ScrollingTabContainerView localScrollingTabContainerView = mTabScrollView;
        if (paramTab != null) {
          i = paramTab.getPosition();
        }
        localScrollingTabContainerView.setTabSelected(i);
        if (mSelectedTab != null) {
          mSelectedTab.getCallback().onTabUnselected(mSelectedTab, localFragmentTransaction);
        }
        mSelectedTab = ((ActionBarImpl.TabImpl)paramTab);
        if (mSelectedTab != null) {
          mSelectedTab.getCallback().onTabSelected(mSelectedTab, localFragmentTransaction);
        }
      }
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    mContainerView.setPrimaryBackground(paramDrawable);
  }
  
  public void setCustomView(int paramInt)
  {
    setCustomView(LayoutInflater.from(getThemedContext()).inflate(paramInt, mActionView, false));
  }
  
  public void setCustomView(View paramView)
  {
    mActionView.setCustomNavigationView(paramView);
  }
  
  public void setCustomView(View paramView, ActionBar.LayoutParams paramLayoutParams)
  {
    paramView.setLayoutParams(paramLayoutParams);
    mActionView.setCustomNavigationView(paramView);
  }
  
  public void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 4;; i = 0)
    {
      setDisplayOptions(i, 4);
      return;
    }
  }
  
  public void setDisplayOptions(int paramInt)
  {
    mActionView.setDisplayOptions(paramInt);
  }
  
  public void setDisplayOptions(int paramInt1, int paramInt2)
  {
    int i = mActionView.getDisplayOptions();
    mActionView.setDisplayOptions(i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void setDisplayShowCustomEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 16;; i = 0)
    {
      setDisplayOptions(i, 16);
      return;
    }
  }
  
  public void setDisplayShowHomeEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 2;; i = 0)
    {
      setDisplayOptions(i, 2);
      return;
    }
  }
  
  public void setDisplayShowTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 8;; i = 0)
    {
      setDisplayOptions(i, 8);
      return;
    }
  }
  
  public void setDisplayUseLogoEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      setDisplayOptions(i, 1);
      return;
    }
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    mActionView.setHomeButtonEnabled(paramBoolean);
  }
  
  public void setIcon(int paramInt)
  {
    mActionView.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    mActionView.setIcon(paramDrawable);
  }
  
  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    mActionView.setDropdownAdapter(paramSpinnerAdapter);
    mActionView.setCallback(paramOnNavigationListener);
  }
  
  public void setLogo(int paramInt)
  {
    mActionView.setLogo(paramInt);
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    mActionView.setLogo(paramDrawable);
  }
  
  public void setNavigationMode(int paramInt)
  {
    boolean bool2 = false;
    switch (mActionView.getNavigationMode())
    {
    default: 
      mActionView.setNavigationMode(paramInt);
      switch (paramInt)
      {
      }
      break;
    }
    for (;;)
    {
      ActionBarView localActionBarView = mActionView;
      boolean bool1 = bool2;
      if (paramInt == 2)
      {
        bool1 = bool2;
        if (!mHasEmbeddedTabs) {
          bool1 = true;
        }
      }
      localActionBarView.setCollapsable(bool1);
      return;
      mSavedTabPosition = getSelectedNavigationIndex();
      selectTab(null);
      mTabScrollView.setVisibility(8);
      break;
      ensureTabsExist();
      mTabScrollView.setVisibility(0);
      if (mSavedTabPosition != -1)
      {
        setSelectedNavigationItem(mSavedTabPosition);
        mSavedTabPosition = -1;
      }
    }
  }
  
  public void setSelectedNavigationItem(int paramInt)
  {
    switch (mActionView.getNavigationMode())
    {
    default: 
      throw new IllegalStateException("setSelectedNavigationItem not valid for current navigation mode");
    case 2: 
      selectTab((ActionBar.Tab)mTabs.get(paramInt));
      return;
    }
    mActionView.setDropdownSelectedPosition(paramInt);
  }
  
  public void setShowHideAnimationEnabled(boolean paramBoolean)
  {
    mShowHideAnimationEnabled = paramBoolean;
    if ((!paramBoolean) && (mCurrentShowAnim != null)) {
      mCurrentShowAnim.end();
    }
  }
  
  public void setSplitBackgroundDrawable(Drawable paramDrawable)
  {
    if (mSplitView != null) {
      mSplitView.setSplitBackground(paramDrawable);
    }
  }
  
  public void setStackedBackgroundDrawable(Drawable paramDrawable)
  {
    mContainerView.setStackedBackground(paramDrawable);
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(mContext.getString(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    mActionView.setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(mContext.getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    mActionView.setTitle(paramCharSequence);
  }
  
  public void show()
  {
    show(true);
  }
  
  void show(boolean paramBoolean)
  {
    if (mCurrentShowAnim != null) {
      mCurrentShowAnim.end();
    }
    if (mContainerView.getVisibility() == 0)
    {
      if (paramBoolean) {
        mWasHiddenBeforeMode = false;
      }
      return;
    }
    mContainerView.setVisibility(0);
    if (mShowHideAnimationEnabled)
    {
      mContainerView.setAlpha(0.0F);
      AnimatorSet localAnimatorSet = new AnimatorSet();
      AnimatorSet.Builder localBuilder = localAnimatorSet.play(ObjectAnimator.ofFloat(mContainerView, "alpha", new float[] { 1.0F }));
      if (mContentView != null)
      {
        localBuilder.with(ObjectAnimator.ofFloat(mContentView, "translationY", new float[] { -mContainerView.getHeight(), 0.0F }));
        mContainerView.setTranslationY(-mContainerView.getHeight());
        localBuilder.with(ObjectAnimator.ofFloat(mContainerView, "translationY", new float[] { 0.0F }));
      }
      if ((mSplitView != null) && (mContextDisplayMode == 1))
      {
        mSplitView.setAlpha(0.0F);
        mSplitView.setVisibility(0);
        localBuilder.with(ObjectAnimator.ofFloat(mSplitView, "alpha", new float[] { 1.0F }));
      }
      localAnimatorSet.addListener(mShowListener);
      mCurrentShowAnim = localAnimatorSet;
      localAnimatorSet.start();
      return;
    }
    mContainerView.setAlpha(1.0F);
    mContainerView.setTranslationY(0.0F);
    mShowListener.onAnimationEnd(null);
  }
  
  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    boolean bool;
    if (mActionMode != null)
    {
      bool = mWasHiddenBeforeMode;
      mActionMode.finish();
    }
    for (;;)
    {
      mContextView.killMode();
      paramCallback = new ActionBarImpl.ActionModeImpl(this, paramCallback);
      if (paramCallback.dispatchOnCreate())
      {
        if ((!isShowing()) || (bool)) {}
        for (bool = true;; bool = false)
        {
          mWasHiddenBeforeMode = bool;
          paramCallback.invalidate();
          mContextView.initForMode(paramCallback);
          animateToMode(true);
          if ((mSplitView != null) && (mContextDisplayMode == 1)) {
            mSplitView.setVisibility(0);
          }
          mContextView.sendAccessibilityEvent(32);
          mActionMode = paramCallback;
          return paramCallback;
        }
      }
      return null;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */