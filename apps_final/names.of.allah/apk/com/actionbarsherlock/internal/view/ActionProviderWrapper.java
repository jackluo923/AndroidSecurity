package com.actionbarsherlock.internal.view;

import android.view.SubMenu;
import android.view.View;
import com.actionbarsherlock.internal.view.menu.SubMenuWrapper;

public class ActionProviderWrapper
  extends android.view.ActionProvider
{
  private final com.actionbarsherlock.view.ActionProvider mProvider;
  
  public ActionProviderWrapper(com.actionbarsherlock.view.ActionProvider paramActionProvider)
  {
    super(null);
    mProvider = paramActionProvider;
  }
  
  public boolean hasSubMenu()
  {
    return mProvider.hasSubMenu();
  }
  
  public View onCreateActionView()
  {
    return mProvider.onCreateActionView();
  }
  
  public boolean onPerformDefaultAction()
  {
    return mProvider.onPerformDefaultAction();
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    mProvider.onPrepareSubMenu(new SubMenuWrapper(paramSubMenu));
  }
  
  public com.actionbarsherlock.view.ActionProvider unwrap()
  {
    return mProvider;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.ActionProviderWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */