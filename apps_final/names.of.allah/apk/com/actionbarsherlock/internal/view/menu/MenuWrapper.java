package com.actionbarsherlock.internal.view.menu;

import android.content.ComponentName;
import android.content.Intent;
import android.view.KeyEvent;
import java.util.WeakHashMap;

public class MenuWrapper
  implements com.actionbarsherlock.view.Menu
{
  private final WeakHashMap<android.view.MenuItem, com.actionbarsherlock.view.MenuItem> mNativeMap = new WeakHashMap();
  private final android.view.Menu mNativeMenu;
  
  public MenuWrapper(android.view.Menu paramMenu)
  {
    mNativeMenu = paramMenu;
  }
  
  private com.actionbarsherlock.view.MenuItem addInternal(android.view.MenuItem paramMenuItem)
  {
    MenuItemWrapper localMenuItemWrapper = new MenuItemWrapper(paramMenuItem);
    mNativeMap.put(paramMenuItem, localMenuItemWrapper);
    return localMenuItemWrapper;
  }
  
  private com.actionbarsherlock.view.SubMenu addInternal(android.view.SubMenu paramSubMenu)
  {
    SubMenuWrapper localSubMenuWrapper = new SubMenuWrapper(paramSubMenu);
    paramSubMenu = paramSubMenu.getItem();
    com.actionbarsherlock.view.MenuItem localMenuItem = localSubMenuWrapper.getItem();
    mNativeMap.put(paramSubMenu, localMenuItem);
    return localSubMenuWrapper;
  }
  
  public com.actionbarsherlock.view.MenuItem add(int paramInt)
  {
    return addInternal(mNativeMenu.add(paramInt));
  }
  
  public com.actionbarsherlock.view.MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addInternal(mNativeMenu.add(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public com.actionbarsherlock.view.MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return addInternal(mNativeMenu.add(paramInt1, paramInt2, paramInt3, paramCharSequence));
  }
  
  public com.actionbarsherlock.view.MenuItem add(CharSequence paramCharSequence)
  {
    return addInternal(mNativeMenu.add(paramCharSequence));
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, com.actionbarsherlock.view.MenuItem[] paramArrayOfMenuItem)
  {
    if (paramArrayOfMenuItem != null)
    {
      android.view.MenuItem[] arrayOfMenuItem = new android.view.MenuItem[paramArrayOfMenuItem.length];
      paramInt3 = mNativeMenu.addIntentOptions(paramInt1, paramInt2, paramInt3, paramComponentName, paramArrayOfIntent, paramIntent, paramInt4, arrayOfMenuItem);
      paramInt1 = 0;
      paramInt4 = paramArrayOfMenuItem.length;
      for (;;)
      {
        paramInt2 = paramInt3;
        if (paramInt1 >= paramInt4) {
          break;
        }
        paramArrayOfMenuItem[paramInt1] = new MenuItemWrapper(arrayOfMenuItem[paramInt1]);
        paramInt1 += 1;
      }
    }
    paramInt2 = mNativeMenu.addIntentOptions(paramInt1, paramInt2, paramInt3, paramComponentName, paramArrayOfIntent, paramIntent, paramInt4, null);
    return paramInt2;
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(int paramInt)
  {
    return addInternal(mNativeMenu.addSubMenu(paramInt));
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addInternal(mNativeMenu.addSubMenu(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return addInternal(mNativeMenu.addSubMenu(paramInt1, paramInt2, paramInt3, paramCharSequence));
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addInternal(mNativeMenu.addSubMenu(paramCharSequence));
  }
  
  public void clear()
  {
    mNativeMap.clear();
    mNativeMenu.clear();
  }
  
  public void close()
  {
    mNativeMenu.close();
  }
  
  public com.actionbarsherlock.view.MenuItem findItem(int paramInt)
  {
    return findItem(mNativeMenu.findItem(paramInt));
  }
  
  public com.actionbarsherlock.view.MenuItem findItem(android.view.MenuItem paramMenuItem)
  {
    Object localObject;
    if (paramMenuItem == null) {
      localObject = null;
    }
    com.actionbarsherlock.view.MenuItem localMenuItem;
    do
    {
      return (com.actionbarsherlock.view.MenuItem)localObject;
      localMenuItem = (com.actionbarsherlock.view.MenuItem)mNativeMap.get(paramMenuItem);
      localObject = localMenuItem;
    } while (localMenuItem != null);
    return addInternal(paramMenuItem);
  }
  
  public com.actionbarsherlock.view.MenuItem getItem(int paramInt)
  {
    return findItem(mNativeMenu.getItem(paramInt));
  }
  
  public boolean hasVisibleItems()
  {
    return mNativeMenu.hasVisibleItems();
  }
  
  public void invalidate()
  {
    if (mNativeMap.isEmpty()) {
      return;
    }
    WeakHashMap localWeakHashMap = new WeakHashMap(mNativeMap.size());
    int i = 0;
    while (i < mNativeMenu.size())
    {
      android.view.MenuItem localMenuItem = mNativeMenu.getItem(i);
      localWeakHashMap.put(localMenuItem, mNativeMap.get(localMenuItem));
      i += 1;
    }
    mNativeMap.clear();
    mNativeMap.putAll(localWeakHashMap);
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return mNativeMenu.isShortcutKey(paramInt, paramKeyEvent);
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return mNativeMenu.performIdentifierAction(paramInt1, paramInt2);
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    return mNativeMenu.performShortcut(paramInt1, paramKeyEvent, paramInt2);
  }
  
  public void removeGroup(int paramInt)
  {
    int i = 0;
    while (i < mNativeMenu.size())
    {
      android.view.MenuItem localMenuItem = mNativeMenu.getItem(i);
      if (localMenuItem.getGroupId() == paramInt) {
        mNativeMap.remove(localMenuItem);
      }
      i += 1;
    }
    mNativeMenu.removeGroup(paramInt);
  }
  
  public void removeItem(int paramInt)
  {
    mNativeMap.remove(mNativeMenu.findItem(paramInt));
    mNativeMenu.removeItem(paramInt);
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    mNativeMenu.setGroupCheckable(paramInt, paramBoolean1, paramBoolean2);
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    mNativeMenu.setGroupEnabled(paramInt, paramBoolean);
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    mNativeMenu.setGroupVisible(paramInt, paramBoolean);
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    mNativeMenu.setQwertyMode(paramBoolean);
  }
  
  public int size()
  {
    return mNativeMenu.size();
  }
  
  public android.view.Menu unwrap()
  {
    return mNativeMenu;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */