package com.actionbarsherlock.internal.view.menu;

import android.view.MenuItem;

class MenuItemWrapper$1
  implements android.view.MenuItem.OnActionExpandListener
{
  MenuItemWrapper$1(MenuItemWrapper paramMenuItemWrapper) {}
  
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    if (MenuItemWrapper.access$000(this$0) != null) {
      return MenuItemWrapper.access$000(this$0).onMenuItemActionCollapse(this$0);
    }
    return false;
  }
  
  public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    if (MenuItemWrapper.access$000(this$0) != null) {
      return MenuItemWrapper.access$000(this$0).onMenuItemActionExpand(this$0);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuItemWrapper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */