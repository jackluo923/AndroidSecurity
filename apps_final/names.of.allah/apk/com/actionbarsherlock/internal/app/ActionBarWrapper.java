package com.actionbarsherlock.internal.app;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.SpinnerAdapter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ActionBarWrapper
  extends com.actionbarsherlock.app.ActionBar
  implements android.app.ActionBar.OnMenuVisibilityListener, android.app.ActionBar.OnNavigationListener
{
  private final android.app.ActionBar mActionBar;
  private final Activity mActivity;
  private FragmentTransaction mFragmentTransaction;
  private Set<com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener> mMenuVisibilityListeners = new HashSet(1);
  private com.actionbarsherlock.app.ActionBar.OnNavigationListener mNavigationListener;
  
  public ActionBarWrapper(Activity paramActivity)
  {
    mActivity = paramActivity;
    mActionBar = paramActivity.getActionBar();
    if (mActionBar != null)
    {
      mActionBar.addOnMenuVisibilityListener(this);
      int i = mActionBar.getDisplayOptions();
      paramActivity = mActionBar;
      if ((i & 0x4) == 0) {
        break label71;
      }
    }
    for (;;)
    {
      paramActivity.setHomeButtonEnabled(bool);
      return;
      label71:
      bool = false;
    }
  }
  
  public void addOnMenuVisibilityListener(com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    mMenuVisibilityListeners.add(paramOnMenuVisibilityListener);
  }
  
  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab)
  {
    mActionBar.addTab(mNativeTab);
  }
  
  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab, int paramInt)
  {
    mActionBar.addTab(mNativeTab, paramInt);
  }
  
  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    mActionBar.addTab(mNativeTab, paramInt, paramBoolean);
  }
  
  public void addTab(com.actionbarsherlock.app.ActionBar.Tab paramTab, boolean paramBoolean)
  {
    mActionBar.addTab(mNativeTab, paramBoolean);
  }
  
  public View getCustomView()
  {
    return mActionBar.getCustomView();
  }
  
  public int getDisplayOptions()
  {
    return mActionBar.getDisplayOptions();
  }
  
  public int getHeight()
  {
    return mActionBar.getHeight();
  }
  
  public int getNavigationItemCount()
  {
    return mActionBar.getNavigationItemCount();
  }
  
  public int getNavigationMode()
  {
    return mActionBar.getNavigationMode();
  }
  
  public int getSelectedNavigationIndex()
  {
    return mActionBar.getSelectedNavigationIndex();
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab getSelectedTab()
  {
    android.app.ActionBar.Tab localTab = mActionBar.getSelectedTab();
    if (localTab != null) {
      return (com.actionbarsherlock.app.ActionBar.Tab)localTab.getTag();
    }
    return null;
  }
  
  public CharSequence getSubtitle()
  {
    return mActionBar.getSubtitle();
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab getTabAt(int paramInt)
  {
    android.app.ActionBar.Tab localTab = mActionBar.getTabAt(paramInt);
    if (localTab != null) {
      return (com.actionbarsherlock.app.ActionBar.Tab)localTab.getTag();
    }
    return null;
  }
  
  public int getTabCount()
  {
    return mActionBar.getTabCount();
  }
  
  public Context getThemedContext()
  {
    return mActionBar.getThemedContext();
  }
  
  public CharSequence getTitle()
  {
    return mActionBar.getTitle();
  }
  
  public void hide()
  {
    mActionBar.hide();
  }
  
  public boolean isShowing()
  {
    return mActionBar.isShowing();
  }
  
  public com.actionbarsherlock.app.ActionBar.Tab newTab()
  {
    return new ActionBarWrapper.TabWrapper(this, mActionBar.newTab());
  }
  
  public void onMenuVisibilityChanged(boolean paramBoolean)
  {
    Iterator localIterator = mMenuVisibilityListeners.iterator();
    while (localIterator.hasNext()) {
      ((com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener)localIterator.next()).onMenuVisibilityChanged(paramBoolean);
    }
  }
  
  public boolean onNavigationItemSelected(int paramInt, long paramLong)
  {
    return mNavigationListener.onNavigationItemSelected(paramInt, paramLong);
  }
  
  public void removeAllTabs()
  {
    mActionBar.removeAllTabs();
  }
  
  public void removeOnMenuVisibilityListener(com.actionbarsherlock.app.ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    mMenuVisibilityListeners.remove(paramOnMenuVisibilityListener);
  }
  
  public void removeTab(com.actionbarsherlock.app.ActionBar.Tab paramTab)
  {
    mActionBar.removeTab(mNativeTab);
  }
  
  public void removeTabAt(int paramInt)
  {
    mActionBar.removeTabAt(paramInt);
  }
  
  public void selectTab(com.actionbarsherlock.app.ActionBar.Tab paramTab)
  {
    mActionBar.selectTab(mNativeTab);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    mActionBar.setBackgroundDrawable(paramDrawable);
  }
  
  public void setCustomView(int paramInt)
  {
    mActionBar.setCustomView(paramInt);
  }
  
  public void setCustomView(View paramView)
  {
    mActionBar.setCustomView(paramView);
  }
  
  public void setCustomView(View paramView, com.actionbarsherlock.app.ActionBar.LayoutParams paramLayoutParams)
  {
    android.app.ActionBar.LayoutParams localLayoutParams = new android.app.ActionBar.LayoutParams(paramLayoutParams);
    gravity = gravity;
    bottomMargin = bottomMargin;
    topMargin = topMargin;
    leftMargin = leftMargin;
    rightMargin = rightMargin;
    mActionBar.setCustomView(paramView, localLayoutParams);
  }
  
  public void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    mActionBar.setDisplayHomeAsUpEnabled(paramBoolean);
  }
  
  public void setDisplayOptions(int paramInt)
  {
    mActionBar.setDisplayOptions(paramInt);
    android.app.ActionBar localActionBar = mActionBar;
    if ((paramInt & 0x4) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      localActionBar.setHomeButtonEnabled(bool);
      return;
    }
  }
  
  public void setDisplayOptions(int paramInt1, int paramInt2)
  {
    mActionBar.setDisplayOptions(paramInt1, paramInt2);
    android.app.ActionBar localActionBar;
    if ((paramInt2 & 0x4) != 0)
    {
      localActionBar = mActionBar;
      if ((paramInt1 & 0x4) == 0) {
        break label36;
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      localActionBar.setHomeButtonEnabled(bool);
      return;
    }
  }
  
  public void setDisplayShowCustomEnabled(boolean paramBoolean)
  {
    mActionBar.setDisplayShowCustomEnabled(paramBoolean);
  }
  
  public void setDisplayShowHomeEnabled(boolean paramBoolean)
  {
    mActionBar.setDisplayShowHomeEnabled(paramBoolean);
  }
  
  public void setDisplayShowTitleEnabled(boolean paramBoolean)
  {
    mActionBar.setDisplayShowTitleEnabled(paramBoolean);
  }
  
  public void setDisplayUseLogoEnabled(boolean paramBoolean)
  {
    mActionBar.setDisplayUseLogoEnabled(paramBoolean);
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    mActionBar.setHomeButtonEnabled(paramBoolean);
  }
  
  public void setIcon(int paramInt)
  {
    mActionBar.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    mActionBar.setIcon(paramDrawable);
  }
  
  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, com.actionbarsherlock.app.ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    mNavigationListener = paramOnNavigationListener;
    android.app.ActionBar localActionBar = mActionBar;
    if (paramOnNavigationListener != null) {}
    for (paramOnNavigationListener = this;; paramOnNavigationListener = null)
    {
      localActionBar.setListNavigationCallbacks(paramSpinnerAdapter, paramOnNavigationListener);
      return;
    }
  }
  
  public void setLogo(int paramInt)
  {
    mActionBar.setLogo(paramInt);
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    mActionBar.setLogo(paramDrawable);
  }
  
  public void setNavigationMode(int paramInt)
  {
    mActionBar.setNavigationMode(paramInt);
  }
  
  public void setSelectedNavigationItem(int paramInt)
  {
    mActionBar.setSelectedNavigationItem(paramInt);
  }
  
  public void setSplitBackgroundDrawable(Drawable paramDrawable)
  {
    mActionBar.setSplitBackgroundDrawable(paramDrawable);
  }
  
  public void setStackedBackgroundDrawable(Drawable paramDrawable)
  {
    mActionBar.setStackedBackgroundDrawable(paramDrawable);
  }
  
  public void setSubtitle(int paramInt)
  {
    mActionBar.setSubtitle(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    mActionBar.setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt)
  {
    mActionBar.setTitle(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    mActionBar.setTitle(paramCharSequence);
  }
  
  public void show()
  {
    mActionBar.show();
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */