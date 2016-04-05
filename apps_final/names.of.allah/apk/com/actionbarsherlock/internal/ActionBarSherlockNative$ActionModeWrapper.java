package com.actionbarsherlock.internal;

import android.view.View;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;
import com.actionbarsherlock.view.MenuInflater;

class ActionBarSherlockNative$ActionModeWrapper
  extends com.actionbarsherlock.view.ActionMode
{
  private final android.view.ActionMode mActionMode;
  private MenuWrapper mMenu = null;
  
  ActionBarSherlockNative$ActionModeWrapper(ActionBarSherlockNative paramActionBarSherlockNative, android.view.ActionMode paramActionMode)
  {
    mActionMode = paramActionMode;
  }
  
  public void finish()
  {
    mActionMode.finish();
  }
  
  public View getCustomView()
  {
    return mActionMode.getCustomView();
  }
  
  public MenuWrapper getMenu()
  {
    if (mMenu == null) {
      mMenu = new MenuWrapper(mActionMode.getMenu());
    }
    return mMenu;
  }
  
  public MenuInflater getMenuInflater()
  {
    return this$0.getMenuInflater();
  }
  
  public CharSequence getSubtitle()
  {
    return mActionMode.getSubtitle();
  }
  
  public Object getTag()
  {
    return mActionMode.getTag();
  }
  
  public CharSequence getTitle()
  {
    return mActionMode.getTitle();
  }
  
  public void invalidate()
  {
    mActionMode.invalidate();
    if (mMenu != null) {
      mMenu.invalidate();
    }
  }
  
  public void setCustomView(View paramView)
  {
    mActionMode.setCustomView(paramView);
  }
  
  public void setSubtitle(int paramInt)
  {
    mActionMode.setSubtitle(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    mActionMode.setSubtitle(paramCharSequence);
  }
  
  public void setTag(Object paramObject)
  {
    mActionMode.setTag(paramObject);
  }
  
  public void setTitle(int paramInt)
  {
    mActionMode.setTitle(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    mActionMode.setTitle(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockNative.ActionModeWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */