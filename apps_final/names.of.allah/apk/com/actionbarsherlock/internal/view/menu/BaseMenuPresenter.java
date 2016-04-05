package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class BaseMenuPresenter
  implements MenuPresenter
{
  private static final boolean IS_HONEYCOMB;
  private MenuPresenter.Callback mCallback;
  protected Context mContext;
  private int mId;
  protected LayoutInflater mInflater;
  private int mItemLayoutRes;
  protected MenuBuilder mMenu;
  private int mMenuLayoutRes;
  protected MenuView mMenuView;
  protected Context mSystemContext;
  protected LayoutInflater mSystemInflater;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      IS_HONEYCOMB = bool;
      return;
    }
  }
  
  public BaseMenuPresenter(Context paramContext, int paramInt1, int paramInt2)
  {
    mSystemContext = paramContext;
    mSystemInflater = LayoutInflater.from(paramContext);
    mMenuLayoutRes = paramInt1;
    mItemLayoutRes = paramInt2;
  }
  
  protected void addItemView(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)mMenuView).addView(paramView, paramInt);
  }
  
  public abstract void bindItemView(MenuItemImpl paramMenuItemImpl, MenuView.ItemView paramItemView);
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public MenuView.ItemView createItemView(ViewGroup paramViewGroup)
  {
    return (MenuView.ItemView)mSystemInflater.inflate(mItemLayoutRes, paramViewGroup, false);
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  protected boolean filterLeftoverView(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return mId;
  }
  
  public View getItemView(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof MenuView.ItemView)) {}
    for (paramView = (MenuView.ItemView)paramView;; paramView = createItemView(paramViewGroup))
    {
      bindItemView(paramMenuItemImpl, paramView);
      return (View)paramView;
    }
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    if (mMenuView == null)
    {
      mMenuView = ((MenuView)mSystemInflater.inflate(mMenuLayoutRes, paramViewGroup, false));
      mMenuView.initialize(mMenu);
      updateMenuView(true);
    }
    return mMenuView;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    mContext = paramContext;
    mInflater = LayoutInflater.from(mContext);
    mMenu = paramMenuBuilder;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (mCallback != null) {
      mCallback.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    if (mCallback != null) {
      return mCallback.onOpenSubMenu(paramSubMenuBuilder);
    }
    return false;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback)
  {
    mCallback = paramCallback;
  }
  
  public void setId(int paramInt)
  {
    mId = paramInt;
  }
  
  public boolean shouldIncludeItem(int paramInt, MenuItemImpl paramMenuItemImpl)
  {
    return true;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)mMenuView;
    if (localViewGroup == null) {}
    label207:
    label214:
    for (;;)
    {
      return;
      int j;
      if (mMenu != null)
      {
        mMenu.flagActionItems();
        ArrayList localArrayList = mMenu.getVisibleItems();
        int m = localArrayList.size();
        int k = 0;
        int i = 0;
        j = i;
        if (k < m)
        {
          MenuItemImpl localMenuItemImpl2 = (MenuItemImpl)localArrayList.get(k);
          if (!shouldIncludeItem(i, localMenuItemImpl2)) {
            break label207;
          }
          View localView1 = localViewGroup.getChildAt(i);
          if ((localView1 instanceof MenuView.ItemView)) {}
          for (MenuItemImpl localMenuItemImpl1 = ((MenuView.ItemView)localView1).getItemData();; localMenuItemImpl1 = null)
          {
            View localView2 = getItemView(localMenuItemImpl2, localView1, localViewGroup);
            if (localMenuItemImpl2 != localMenuItemImpl1)
            {
              localView2.setPressed(false);
              if (IS_HONEYCOMB) {
                localView2.jumpDrawablesToCurrentState();
              }
            }
            if (localView2 != localView1) {
              addItemView(localView2, i);
            }
            i += 1;
            k += 1;
            break;
          }
        }
      }
      for (;;)
      {
        if (j >= localViewGroup.getChildCount()) {
          break label214;
        }
        if (!filterLeftoverView(localViewGroup, j))
        {
          j += 1;
          continue;
          break;
          j = 0;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.BaseMenuPresenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */