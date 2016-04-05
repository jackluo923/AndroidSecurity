package com.actionbarsherlock.internal;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.Implementation;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeStartedListener;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.app.ActionBarWrapper;
import com.actionbarsherlock.internal.view.menu.MenuItemWrapper;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;

@ActionBarSherlock.Implementation(api=14)
public class ActionBarSherlockNative
  extends ActionBarSherlock
{
  private ActionBarWrapper mActionBar;
  private ActionBarSherlockNative.ActionModeWrapper mActionMode;
  private MenuWrapper mMenu;
  
  public ActionBarSherlockNative(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
  }
  
  private void initActionBar()
  {
    if ((mActionBar != null) || (mActivity.getActionBar() == null)) {
      return;
    }
    mActionBar = new ActionBarWrapper(mActivity);
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    mActivity.getWindow().addContentView(paramView, paramLayoutParams);
    initActionBar();
  }
  
  public boolean dispatchCreateOptionsMenu(Menu paramMenu)
  {
    if ((mMenu == null) || (paramMenu != mMenu.unwrap())) {
      mMenu = new MenuWrapper(paramMenu);
    }
    return callbackCreateOptionsMenu(mMenu);
  }
  
  public void dispatchInvalidateOptionsMenu()
  {
    mActivity.getWindow().invalidatePanelMenu(0);
    if (mMenu != null) {
      mMenu.invalidate();
    }
  }
  
  public boolean dispatchOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (mMenu == null) {
      if (paramMenuItem.getItemId() != 16908332) {
        throw new IllegalStateException("Non-home action item clicked before onCreateOptionsMenu with ID " + paramMenuItem.getItemId());
      }
    }
    for (paramMenuItem = new MenuItemWrapper(paramMenuItem);; paramMenuItem = mMenu.findItem(paramMenuItem)) {
      return callbackOptionsItemSelected(paramMenuItem);
    }
  }
  
  public boolean dispatchPrepareOptionsMenu(Menu paramMenu)
  {
    return callbackPrepareOptionsMenu(mMenu);
  }
  
  public ActionBar getActionBar()
  {
    initActionBar();
    return mActionBar;
  }
  
  protected Context getThemedContext()
  {
    Activity localActivity = mActivity;
    TypedValue localTypedValue = new TypedValue();
    mActivity.getTheme().resolveAttribute(16843671, localTypedValue, true);
    if (resourceId != 0) {
      return new ContextThemeWrapper(localActivity, resourceId);
    }
    return localActivity;
  }
  
  public boolean hasFeature(int paramInt)
  {
    return mActivity.getWindow().hasFeature(paramInt);
  }
  
  public boolean requestFeature(int paramInt)
  {
    return mActivity.getWindow().requestFeature(paramInt);
  }
  
  public void setContentView(int paramInt)
  {
    mActivity.getWindow().setContentView(paramInt);
    initActionBar();
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    mActivity.getWindow().setContentView(paramView, paramLayoutParams);
    initActionBar();
  }
  
  public void setProgress(int paramInt)
  {
    mActivity.setProgress(paramInt);
  }
  
  public void setProgressBarIndeterminate(boolean paramBoolean)
  {
    mActivity.setProgressBarIndeterminate(paramBoolean);
  }
  
  public void setProgressBarIndeterminateVisibility(boolean paramBoolean)
  {
    mActivity.setProgressBarIndeterminateVisibility(paramBoolean);
  }
  
  public void setProgressBarVisibility(boolean paramBoolean)
  {
    mActivity.setProgressBarVisibility(paramBoolean);
  }
  
  public void setSecondaryProgress(int paramInt)
  {
    mActivity.setSecondaryProgress(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    mActivity.getWindow().setTitle(paramCharSequence);
  }
  
  public void setUiOptions(int paramInt)
  {
    mActivity.getWindow().setUiOptions(paramInt);
  }
  
  public void setUiOptions(int paramInt1, int paramInt2)
  {
    mActivity.getWindow().setUiOptions(paramInt1, paramInt2);
  }
  
  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    if (mActionMode != null) {
      mActionMode.finish();
    }
    if (paramCallback != null) {}
    for (paramCallback = new ActionBarSherlockNative.ActionModeCallbackWrapper(this, paramCallback);; paramCallback = null)
    {
      if (mActivity.startActionMode(paramCallback) == null) {
        mActionMode = null;
      }
      if (((mActivity instanceof ActionBarSherlock.OnActionModeStartedListener)) && (mActionMode != null)) {
        ((ActionBarSherlock.OnActionModeStartedListener)mActivity).onActionModeStarted(mActionMode);
      }
      return mActionMode;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockNative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */