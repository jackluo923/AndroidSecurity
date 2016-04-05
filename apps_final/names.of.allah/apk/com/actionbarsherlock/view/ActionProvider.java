package com.actionbarsherlock.view;

import android.content.Context;
import android.view.View;

public abstract class ActionProvider
{
  private ActionProvider.SubUiVisibilityListener mSubUiVisibilityListener;
  
  public ActionProvider(Context paramContext) {}
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public abstract View onCreateActionView();
  
  public boolean onPerformDefaultAction()
  {
    return false;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu) {}
  
  public void setSubUiVisibilityListener(ActionProvider.SubUiVisibilityListener paramSubUiVisibilityListener)
  {
    mSubUiVisibilityListener = paramSubUiVisibilityListener;
  }
  
  public void subUiVisibilityChanged(boolean paramBoolean)
  {
    if (mSubUiVisibilityListener != null) {
      mSubUiVisibilityListener.onSubUiVisibilityChanged(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.view.ActionProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */