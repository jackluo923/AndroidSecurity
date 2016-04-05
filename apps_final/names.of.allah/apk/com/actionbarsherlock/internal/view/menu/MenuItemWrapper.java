package com.actionbarsherlock.internal.view.menu;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import com.actionbarsherlock.internal.view.ActionProviderWrapper;
import com.actionbarsherlock.internal.widget.CollapsibleActionViewWrapper;
import com.actionbarsherlock.view.CollapsibleActionView;
import com.actionbarsherlock.view.SubMenu;

public class MenuItemWrapper
  implements android.view.MenuItem.OnMenuItemClickListener, com.actionbarsherlock.view.MenuItem
{
  private com.actionbarsherlock.view.MenuItem.OnActionExpandListener mActionExpandListener = null;
  private com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener mMenuItemClickListener = null;
  private android.view.MenuItem.OnActionExpandListener mNativeActionExpandListener = null;
  private final android.view.MenuItem mNativeItem;
  private SubMenu mSubMenu = null;
  
  public MenuItemWrapper(android.view.MenuItem paramMenuItem)
  {
    if (paramMenuItem == null) {
      throw new IllegalStateException("Wrapped menu item cannot be null.");
    }
    mNativeItem = paramMenuItem;
  }
  
  public boolean collapseActionView()
  {
    return mNativeItem.collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return mNativeItem.expandActionView();
  }
  
  public com.actionbarsherlock.view.ActionProvider getActionProvider()
  {
    android.view.ActionProvider localActionProvider = mNativeItem.getActionProvider();
    if ((localActionProvider != null) && ((localActionProvider instanceof ActionProviderWrapper))) {
      return ((ActionProviderWrapper)localActionProvider).unwrap();
    }
    return null;
  }
  
  public View getActionView()
  {
    View localView2 = mNativeItem.getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof CollapsibleActionViewWrapper)) {
      localView1 = ((CollapsibleActionViewWrapper)localView2).unwrap();
    }
    return localView1;
  }
  
  public char getAlphabeticShortcut()
  {
    return mNativeItem.getAlphabeticShortcut();
  }
  
  public int getGroupId()
  {
    return mNativeItem.getGroupId();
  }
  
  public Drawable getIcon()
  {
    return mNativeItem.getIcon();
  }
  
  public Intent getIntent()
  {
    return mNativeItem.getIntent();
  }
  
  public int getItemId()
  {
    return mNativeItem.getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return mNativeItem.getMenuInfo();
  }
  
  public char getNumericShortcut()
  {
    return mNativeItem.getNumericShortcut();
  }
  
  public int getOrder()
  {
    return mNativeItem.getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    if ((hasSubMenu()) && (mSubMenu == null)) {
      mSubMenu = new SubMenuWrapper(mNativeItem.getSubMenu());
    }
    return mSubMenu;
  }
  
  public CharSequence getTitle()
  {
    return mNativeItem.getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return mNativeItem.getTitleCondensed();
  }
  
  public boolean hasSubMenu()
  {
    return mNativeItem.hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return mNativeItem.isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return mNativeItem.isCheckable();
  }
  
  public boolean isChecked()
  {
    return mNativeItem.isChecked();
  }
  
  public boolean isEnabled()
  {
    return mNativeItem.isEnabled();
  }
  
  public boolean isVisible()
  {
    return mNativeItem.isVisible();
  }
  
  public boolean onMenuItemClick(android.view.MenuItem paramMenuItem)
  {
    if (mMenuItemClickListener != null) {
      return mMenuItemClickListener.onMenuItemClick(this);
    }
    return false;
  }
  
  public com.actionbarsherlock.view.MenuItem setActionProvider(com.actionbarsherlock.view.ActionProvider paramActionProvider)
  {
    mNativeItem.setActionProvider(new ActionProviderWrapper(paramActionProvider));
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setActionView(int paramInt)
  {
    mNativeItem.setActionView(paramInt);
    if (paramInt != 0)
    {
      View localView = mNativeItem.getActionView();
      if ((localView instanceof CollapsibleActionView)) {
        mNativeItem.setActionView(new CollapsibleActionViewWrapper(localView));
      }
    }
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if (paramView != null)
    {
      localObject = paramView;
      if ((paramView instanceof CollapsibleActionView)) {
        localObject = new CollapsibleActionViewWrapper(paramView);
      }
    }
    mNativeItem.setActionView((View)localObject);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setAlphabeticShortcut(char paramChar)
  {
    mNativeItem.setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setCheckable(boolean paramBoolean)
  {
    mNativeItem.setCheckable(paramBoolean);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setChecked(boolean paramBoolean)
  {
    mNativeItem.setChecked(paramBoolean);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setEnabled(boolean paramBoolean)
  {
    mNativeItem.setEnabled(paramBoolean);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setIcon(int paramInt)
  {
    mNativeItem.setIcon(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setIcon(Drawable paramDrawable)
  {
    mNativeItem.setIcon(paramDrawable);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setIntent(Intent paramIntent)
  {
    mNativeItem.setIntent(paramIntent);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setNumericShortcut(char paramChar)
  {
    mNativeItem.setNumericShortcut(paramChar);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setOnActionExpandListener(com.actionbarsherlock.view.MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    mActionExpandListener = paramOnActionExpandListener;
    if (mNativeActionExpandListener == null)
    {
      mNativeActionExpandListener = new MenuItemWrapper.1(this);
      mNativeItem.setOnActionExpandListener(mNativeActionExpandListener);
    }
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setOnMenuItemClickListener(com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    mMenuItemClickListener = paramOnMenuItemClickListener;
    mNativeItem.setOnMenuItemClickListener(this);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    mNativeItem.setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    mNativeItem.setShowAsAction(paramInt);
  }
  
  public com.actionbarsherlock.view.MenuItem setShowAsActionFlags(int paramInt)
  {
    mNativeItem.setShowAsActionFlags(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setTitle(int paramInt)
  {
    mNativeItem.setTitle(paramInt);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setTitle(CharSequence paramCharSequence)
  {
    mNativeItem.setTitle(paramCharSequence);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    mNativeItem.setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public com.actionbarsherlock.view.MenuItem setVisible(boolean paramBoolean)
  {
    mNativeItem.setVisible(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuItemWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */