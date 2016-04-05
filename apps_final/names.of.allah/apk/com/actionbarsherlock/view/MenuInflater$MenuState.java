package com.actionbarsherlock.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import java.lang.reflect.Constructor;

class MenuInflater$MenuState
{
  private static final int defaultGroupId = 0;
  private static final int defaultItemCategory = 0;
  private static final int defaultItemCheckable = 0;
  private static final boolean defaultItemChecked = false;
  private static final boolean defaultItemEnabled = true;
  private static final int defaultItemId = 0;
  private static final int defaultItemOrder = 0;
  private static final boolean defaultItemVisible = true;
  private int groupCategory;
  private int groupCheckable;
  private boolean groupEnabled;
  private int groupId;
  private int groupOrder;
  private boolean groupVisible;
  private ActionProvider itemActionProvider;
  private String itemActionProviderClassName;
  private String itemActionViewClassName;
  private int itemActionViewLayout;
  private boolean itemAdded;
  private char itemAlphabeticShortcut;
  private int itemCategoryOrder;
  private int itemCheckable;
  private boolean itemChecked;
  private boolean itemEnabled;
  private int itemIconResId;
  private int itemId;
  private String itemListenerMethodName;
  private char itemNumericShortcut;
  private int itemShowAsAction;
  private CharSequence itemTitle;
  private CharSequence itemTitleCondensed;
  private boolean itemVisible;
  private Menu menu;
  
  public MenuInflater$MenuState(MenuInflater paramMenuInflater, Menu paramMenu)
  {
    menu = paramMenu;
    resetGroup();
  }
  
  private char getShortcut(String paramString)
  {
    if (paramString == null) {
      return '\000';
    }
    return paramString.charAt(0);
  }
  
  private <T> T newInstance(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramArrayOfClass = MenuInflater.access$100(this$0).getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
      return paramArrayOfClass;
    }
    catch (Exception paramArrayOfClass)
    {
      Log.w("MenuInflater", "Cannot instantiate class: " + paramString, paramArrayOfClass);
    }
    return null;
  }
  
  private void setItem(MenuItem paramMenuItem)
  {
    int i = 1;
    MenuItem localMenuItem = paramMenuItem.setChecked(itemChecked).setVisible(itemVisible).setEnabled(itemEnabled);
    if (itemCheckable > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localMenuItem.setCheckable(bool).setTitleCondensed(itemTitleCondensed).setIcon(itemIconResId).setAlphabeticShortcut(itemAlphabeticShortcut).setNumericShortcut(itemNumericShortcut);
      if (itemShowAsAction >= 0) {
        paramMenuItem.setShowAsAction(itemShowAsAction);
      }
      if (itemListenerMethodName == null) {
        break label164;
      }
      if (!MenuInflater.access$100(this$0).isRestricted()) {
        break;
      }
      throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
    }
    paramMenuItem.setOnMenuItemClickListener(new MenuInflater.InflatedOnMenuItemClickListener(MenuInflater.access$400(this$0), itemListenerMethodName));
    label164:
    if (itemCheckable >= 2)
    {
      if ((paramMenuItem instanceof MenuItemImpl)) {
        ((MenuItemImpl)paramMenuItem).setExclusiveCheckable(true);
      }
    }
    else
    {
      if (itemActionViewClassName == null) {
        break label292;
      }
      paramMenuItem.setActionView((View)newInstance(itemActionViewClassName, MenuInflater.access$500(), MenuInflater.access$600(this$0)));
    }
    for (;;)
    {
      if (itemActionViewLayout > 0)
      {
        if (i != 0) {
          break label281;
        }
        paramMenuItem.setActionView(itemActionViewLayout);
      }
      for (;;)
      {
        if (itemActionProvider != null) {
          paramMenuItem.setActionProvider(itemActionProvider);
        }
        return;
        menu.setGroupCheckable(groupId, true, true);
        break;
        label281:
        Log.w("MenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
      }
      label292:
      i = 0;
    }
  }
  
  public void addItem()
  {
    itemAdded = true;
    setItem(menu.add(groupId, itemId, itemCategoryOrder, itemTitle));
  }
  
  public SubMenu addSubMenuItem()
  {
    itemAdded = true;
    SubMenu localSubMenu = menu.addSubMenu(groupId, itemId, itemCategoryOrder, itemTitle);
    setItem(localSubMenu.getItem());
    return localSubMenu;
  }
  
  public boolean hasAddedItem()
  {
    return itemAdded;
  }
  
  public void readGroup(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = MenuInflater.access$100(this$0).obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockMenuGroup);
    groupId = paramAttributeSet.getResourceId(1, 0);
    groupCategory = paramAttributeSet.getInt(3, 0);
    groupOrder = paramAttributeSet.getInt(4, 0);
    groupCheckable = paramAttributeSet.getInt(5, 0);
    groupVisible = paramAttributeSet.getBoolean(2, true);
    groupEnabled = paramAttributeSet.getBoolean(0, true);
    paramAttributeSet.recycle();
  }
  
  public void readItem(AttributeSet paramAttributeSet)
  {
    int j = 1;
    TypedArray localTypedArray = MenuInflater.access$100(this$0).obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockMenuItem);
    itemId = localTypedArray.getResourceId(2, 0);
    itemCategoryOrder = (localTypedArray.getInt(5, groupCategory) & 0xFFFF0000 | localTypedArray.getInt(6, groupOrder) & 0xFFFF);
    itemTitle = localTypedArray.getText(7);
    itemTitleCondensed = localTypedArray.getText(8);
    itemIconResId = localTypedArray.getResourceId(0, 0);
    itemAlphabeticShortcut = getShortcut(localTypedArray.getString(9));
    itemNumericShortcut = getShortcut(localTypedArray.getString(10));
    int i;
    if (localTypedArray.hasValue(11)) {
      if (localTypedArray.getBoolean(11, false))
      {
        i = 1;
        itemCheckable = i;
        label144:
        itemChecked = localTypedArray.getBoolean(3, false);
        itemVisible = localTypedArray.getBoolean(4, groupVisible);
        itemEnabled = localTypedArray.getBoolean(1, groupEnabled);
        paramAttributeSet = new TypedValue();
        localTypedArray.getValue(13, paramAttributeSet);
        if (type != 17) {
          break label393;
        }
        i = data;
        label210:
        itemShowAsAction = i;
        itemListenerMethodName = localTypedArray.getString(12);
        itemActionViewLayout = localTypedArray.getResourceId(14, 0);
        paramAttributeSet = new TypedValue();
        localTypedArray.getValue(15, paramAttributeSet);
        if (type != 3) {
          break label398;
        }
        paramAttributeSet = string.toString();
        label270:
        itemActionViewClassName = paramAttributeSet;
        paramAttributeSet = new TypedValue();
        localTypedArray.getValue(16, paramAttributeSet);
        if (type != 3) {
          break label403;
        }
        paramAttributeSet = string.toString();
        label309:
        itemActionProviderClassName = paramAttributeSet;
        if (itemActionProviderClassName == null) {
          break label408;
        }
        i = j;
        label324:
        if ((i == 0) || (itemActionViewLayout != 0) || (itemActionViewClassName != null)) {
          break label413;
        }
      }
    }
    for (itemActionProvider = ((ActionProvider)newInstance(itemActionProviderClassName, MenuInflater.access$200(), MenuInflater.access$300(this$0)));; itemActionProvider = null)
    {
      localTypedArray.recycle();
      itemAdded = false;
      return;
      i = 0;
      break;
      itemCheckable = groupCheckable;
      break label144;
      label393:
      i = -1;
      break label210;
      label398:
      paramAttributeSet = null;
      break label270;
      label403:
      paramAttributeSet = null;
      break label309;
      label408:
      i = 0;
      break label324;
      label413:
      if (i != 0) {
        Log.w("MenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
      }
    }
  }
  
  public void resetGroup()
  {
    groupId = 0;
    groupCategory = 0;
    groupOrder = 0;
    groupCheckable = 0;
    groupVisible = true;
    groupEnabled = true;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.view.MenuInflater.MenuState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */