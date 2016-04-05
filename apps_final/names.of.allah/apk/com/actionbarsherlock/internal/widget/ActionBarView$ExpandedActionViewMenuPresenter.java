package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.internal.view.menu.MenuView;
import com.actionbarsherlock.internal.view.menu.SubMenuBuilder;
import com.actionbarsherlock.view.CollapsibleActionView;

class ActionBarView$ExpandedActionViewMenuPresenter
  implements MenuPresenter
{
  MenuItemImpl mCurrentExpandedItem;
  MenuBuilder mMenu;
  
  private ActionBarView$ExpandedActionViewMenuPresenter(ActionBarView paramActionBarView) {}
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    if ((this$0.mExpandedActionView instanceof CollapsibleActionView)) {
      ((CollapsibleActionView)this$0.mExpandedActionView).onActionViewCollapsed();
    }
    this$0.removeView(this$0.mExpandedActionView);
    this$0.removeView(ActionBarView.access$600(this$0));
    this$0.mExpandedActionView = null;
    if ((ActionBarView.access$1200(this$0) & 0x2) != 0) {
      ActionBarView.access$700(this$0).setVisibility(0);
    }
    if ((ActionBarView.access$1200(this$0) & 0x8) != 0)
    {
      if (ActionBarView.access$800(this$0) != null) {
        break label245;
      }
      ActionBarView.access$1300(this$0);
    }
    for (;;)
    {
      if ((ActionBarView.access$900(this$0) != null) && (ActionBarView.access$1400(this$0) == 2)) {
        ActionBarView.access$900(this$0).setVisibility(0);
      }
      if ((ActionBarView.access$1000(this$0) != null) && (ActionBarView.access$1400(this$0) == 1)) {
        ActionBarView.access$1000(this$0).setVisibility(0);
      }
      if ((ActionBarView.access$1100(this$0) != null) && ((ActionBarView.access$1200(this$0) & 0x10) != 0)) {
        ActionBarView.access$1100(this$0).setVisibility(0);
      }
      ActionBarView.access$600(this$0).setIcon(null);
      mCurrentExpandedItem = null;
      this$0.requestLayout();
      paramMenuItemImpl.setActionViewExpanded(false);
      return true;
      label245:
      ActionBarView.access$800(this$0).setVisibility(0);
    }
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    this$0.mExpandedActionView = paramMenuItemImpl.getActionView();
    ActionBarView.access$600(this$0).setIcon(ActionBarView.access$500(this$0).getConstantState().newDrawable());
    mCurrentExpandedItem = paramMenuItemImpl;
    if (this$0.mExpandedActionView.getParent() != this$0) {
      this$0.addView(this$0.mExpandedActionView);
    }
    if (ActionBarView.access$600(this$0).getParent() != this$0) {
      this$0.addView(ActionBarView.access$600(this$0));
    }
    ActionBarView.access$700(this$0).setVisibility(8);
    if (ActionBarView.access$800(this$0) != null) {
      ActionBarView.access$800(this$0).setVisibility(8);
    }
    if (ActionBarView.access$900(this$0) != null) {
      ActionBarView.access$900(this$0).setVisibility(8);
    }
    if (ActionBarView.access$1000(this$0) != null) {
      ActionBarView.access$1000(this$0).setVisibility(8);
    }
    if (ActionBarView.access$1100(this$0) != null) {
      ActionBarView.access$1100(this$0).setVisibility(8);
    }
    this$0.requestLayout();
    paramMenuItemImpl.setActionViewExpanded(true);
    if ((this$0.mExpandedActionView instanceof CollapsibleActionView)) {
      ((CollapsibleActionView)this$0.mExpandedActionView).onActionViewExpanded();
    }
    return true;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return 0;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    return null;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    if ((mMenu != null) && (mCurrentExpandedItem != null)) {
      mMenu.collapseItemActionView(mCurrentExpandedItem);
    }
    mMenu = paramMenuBuilder;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState()
  {
    return null;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    return false;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback) {}
  
  public void updateMenuView(boolean paramBoolean)
  {
    int k = 0;
    int j;
    int m;
    int i;
    if (mCurrentExpandedItem != null)
    {
      j = k;
      if (mMenu != null)
      {
        m = mMenu.size();
        i = 0;
      }
    }
    for (;;)
    {
      j = k;
      if (i < m)
      {
        if (mMenu.getItem(i) == mCurrentExpandedItem) {
          j = 1;
        }
      }
      else
      {
        if (j == 0) {
          collapseItemActionView(mMenu, mCurrentExpandedItem);
        }
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.ExpandedActionViewMenuPresenter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */