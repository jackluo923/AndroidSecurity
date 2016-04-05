package com.actionbarsherlock.internal.app;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.internal.view.menu.MenuPopupHelper;
import com.actionbarsherlock.internal.view.menu.SubMenuBuilder;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.internal.widget.ActionBarView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import java.lang.ref.WeakReference;

public class ActionBarImpl$ActionModeImpl
  extends ActionMode
  implements MenuBuilder.Callback
{
  private ActionMode.Callback mCallback;
  private WeakReference<View> mCustomView;
  private MenuBuilder mMenu;
  
  public ActionBarImpl$ActionModeImpl(ActionBarImpl paramActionBarImpl, ActionMode.Callback paramCallback)
  {
    mCallback = paramCallback;
    mMenu = new MenuBuilder(paramActionBarImpl.getThemedContext()).setDefaultShowAsAction(1);
    mMenu.setCallback(this);
  }
  
  public boolean dispatchOnCreate()
  {
    mMenu.stopDispatchingItemsChanged();
    try
    {
      boolean bool = mCallback.onCreateActionMode(this, mMenu);
      return bool;
    }
    finally
    {
      mMenu.startDispatchingItemsChanged();
    }
  }
  
  public void finish()
  {
    if (this$0.mActionMode != this) {
      return;
    }
    if (this$0.mWasHiddenBeforeMode)
    {
      this$0.mDeferredDestroyActionMode = this;
      this$0.mDeferredModeDestroyCallback = mCallback;
    }
    for (;;)
    {
      mCallback = null;
      this$0.animateToMode(false);
      ActionBarImpl.access$500(this$0).closeMode();
      ActionBarImpl.access$600(this$0).sendAccessibilityEvent(32);
      this$0.mActionMode = null;
      if (!this$0.mWasHiddenBeforeMode) {
        break;
      }
      this$0.hide();
      return;
      mCallback.onDestroyActionMode(this);
    }
  }
  
  public View getCustomView()
  {
    if (mCustomView != null) {
      return (View)mCustomView.get();
    }
    return null;
  }
  
  public Menu getMenu()
  {
    return mMenu;
  }
  
  public MenuInflater getMenuInflater()
  {
    return new MenuInflater(this$0.getThemedContext());
  }
  
  public CharSequence getSubtitle()
  {
    return ActionBarImpl.access$500(this$0).getSubtitle();
  }
  
  public CharSequence getTitle()
  {
    return ActionBarImpl.access$500(this$0).getTitle();
  }
  
  public void invalidate()
  {
    mMenu.stopDispatchingItemsChanged();
    try
    {
      mCallback.onPrepareActionMode(this, mMenu);
      return;
    }
    finally
    {
      mMenu.startDispatchingItemsChanged();
    }
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {}
  
  public void onCloseSubMenu(SubMenuBuilder paramSubMenuBuilder) {}
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    if (mCallback != null) {
      return mCallback.onActionItemClicked(this, paramMenuItem);
    }
    return false;
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder)
  {
    if (mCallback == null) {
      return;
    }
    invalidate();
    ActionBarImpl.access$500(this$0).showOverflowMenu();
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    boolean bool = true;
    if (mCallback == null) {
      bool = false;
    }
    while (!paramSubMenuBuilder.hasVisibleItems()) {
      return bool;
    }
    new MenuPopupHelper(this$0.getThemedContext(), paramSubMenuBuilder).show();
    return true;
  }
  
  public void setCustomView(View paramView)
  {
    ActionBarImpl.access$500(this$0).setCustomView(paramView);
    mCustomView = new WeakReference(paramView);
  }
  
  public void setSubtitle(int paramInt)
  {
    setSubtitle(ActionBarImpl.access$700(this$0).getResources().getString(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    ActionBarImpl.access$500(this$0).setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(ActionBarImpl.access$700(this$0).getResources().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    ActionBarImpl.access$500(this$0).setTitle(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl.ActionModeImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */