package com.actionbarsherlock.internal.view.menu;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.actionbarsherlock.view.MenuItem;

public class SubMenuWrapper
  extends MenuWrapper
  implements com.actionbarsherlock.view.SubMenu
{
  private MenuItem mItem = null;
  private final android.view.SubMenu mNativeSubMenu;
  
  public SubMenuWrapper(android.view.SubMenu paramSubMenu)
  {
    super(paramSubMenu);
    mNativeSubMenu = paramSubMenu;
  }
  
  public void clearHeader()
  {
    mNativeSubMenu.clearHeader();
  }
  
  public MenuItem getItem()
  {
    if (mItem == null) {
      mItem = new MenuItemWrapper(mNativeSubMenu.getItem());
    }
    return mItem;
  }
  
  public com.actionbarsherlock.view.SubMenu setHeaderIcon(int paramInt)
  {
    mNativeSubMenu.setHeaderIcon(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.view.SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    mNativeSubMenu.setHeaderIcon(paramDrawable);
    return this;
  }
  
  public com.actionbarsherlock.view.SubMenu setHeaderTitle(int paramInt)
  {
    mNativeSubMenu.setHeaderTitle(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.view.SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    mNativeSubMenu.setHeaderTitle(paramCharSequence);
    return this;
  }
  
  public com.actionbarsherlock.view.SubMenu setHeaderView(View paramView)
  {
    mNativeSubMenu.setHeaderView(paramView);
    return this;
  }
  
  public com.actionbarsherlock.view.SubMenu setIcon(int paramInt)
  {
    mNativeSubMenu.setIcon(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.view.SubMenu setIcon(Drawable paramDrawable)
  {
    mNativeSubMenu.setIcon(paramDrawable);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.SubMenuWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */