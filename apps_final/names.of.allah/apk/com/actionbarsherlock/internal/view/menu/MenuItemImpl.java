package com.actionbarsherlock.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnActionExpandListener;
import com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener;
import com.actionbarsherlock.view.SubMenu;

public final class MenuItemImpl
  implements MenuItem
{
  private static final int CHECKABLE = 1;
  private static final int CHECKED = 2;
  private static final int ENABLED = 16;
  private static final int EXCLUSIVE = 4;
  private static final int HIDDEN = 8;
  private static final int IS_ACTION = 32;
  static final int NO_ICON = 0;
  private static final int SHOW_AS_ACTION_MASK = 3;
  private static final String TAG = "MenuItemImpl";
  private static String sDeleteShortcutLabel;
  private static String sEnterShortcutLabel;
  private static String sPrependShortcutLabel;
  private static String sSpaceShortcutLabel;
  private ActionProvider mActionProvider;
  private View mActionView;
  private final int mCategoryOrder;
  private MenuItem.OnMenuItemClickListener mClickListener;
  private int mFlags = 16;
  private final int mGroup;
  private Drawable mIconDrawable;
  private int mIconResId = 0;
  private final int mId;
  private Intent mIntent;
  private boolean mIsActionViewExpanded = false;
  private Runnable mItemCallback;
  private MenuBuilder mMenu;
  private ContextMenu.ContextMenuInfo mMenuInfo;
  private MenuItem.OnActionExpandListener mOnActionExpandListener;
  private final int mOrdering;
  private char mShortcutAlphabeticChar;
  private char mShortcutNumericChar;
  private int mShowAsAction = 0;
  private SubMenuBuilder mSubMenu;
  private CharSequence mTitle;
  private CharSequence mTitleCondensed;
  
  MenuItemImpl(MenuBuilder paramMenuBuilder, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    mMenu = paramMenuBuilder;
    mId = paramInt2;
    mGroup = paramInt1;
    mCategoryOrder = paramInt3;
    mOrdering = paramInt4;
    mTitle = paramCharSequence;
    mShowAsAction = paramInt5;
  }
  
  public final void actionFormatChanged()
  {
    mMenu.onItemActionRequestChanged(this);
  }
  
  public final boolean collapseActionView()
  {
    if ((mShowAsAction & 0x8) == 0) {}
    do
    {
      return false;
      if (mActionView == null) {
        return true;
      }
    } while ((mOnActionExpandListener != null) && (!mOnActionExpandListener.onMenuItemActionCollapse(this)));
    return mMenu.collapseItemActionView(this);
  }
  
  public final boolean expandActionView()
  {
    if (((mShowAsAction & 0x8) == 0) || (mActionView == null)) {}
    while ((mOnActionExpandListener != null) && (!mOnActionExpandListener.onMenuItemActionExpand(this))) {
      return false;
    }
    return mMenu.expandItemActionView(this);
  }
  
  public final ActionProvider getActionProvider()
  {
    return mActionProvider;
  }
  
  public final View getActionView()
  {
    if (mActionView != null) {
      return mActionView;
    }
    if (mActionProvider != null)
    {
      mActionView = mActionProvider.onCreateActionView();
      return mActionView;
    }
    return null;
  }
  
  public final char getAlphabeticShortcut()
  {
    return mShortcutAlphabeticChar;
  }
  
  final Runnable getCallback()
  {
    return mItemCallback;
  }
  
  public final int getGroupId()
  {
    return mGroup;
  }
  
  public final Drawable getIcon()
  {
    if (mIconDrawable != null) {
      return mIconDrawable;
    }
    if (mIconResId != 0) {
      return mMenu.getResources().getDrawable(mIconResId);
    }
    return null;
  }
  
  public final Intent getIntent()
  {
    return mIntent;
  }
  
  @ViewDebug.CapturedViewProperty
  public final int getItemId()
  {
    return mId;
  }
  
  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return mMenuInfo;
  }
  
  public final char getNumericShortcut()
  {
    return mShortcutNumericChar;
  }
  
  public final int getOrder()
  {
    return mCategoryOrder;
  }
  
  public final int getOrdering()
  {
    return mOrdering;
  }
  
  final char getShortcut()
  {
    if (mMenu.isQwertyMode()) {
      return mShortcutAlphabeticChar;
    }
    return mShortcutNumericChar;
  }
  
  final String getShortcutLabel()
  {
    char c = getShortcut();
    if (c == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(sPrependShortcutLabel);
    switch (c)
    {
    default: 
      localStringBuilder.append(c);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append(sEnterShortcutLabel);
      continue;
      localStringBuilder.append(sDeleteShortcutLabel);
      continue;
      localStringBuilder.append(sSpaceShortcutLabel);
    }
  }
  
  public final SubMenu getSubMenu()
  {
    return mSubMenu;
  }
  
  @ViewDebug.CapturedViewProperty
  public final CharSequence getTitle()
  {
    return mTitle;
  }
  
  public final CharSequence getTitleCondensed()
  {
    if (mTitleCondensed != null) {
      return mTitleCondensed;
    }
    return mTitle;
  }
  
  final CharSequence getTitleForItemView(MenuView.ItemView paramItemView)
  {
    if ((paramItemView != null) && (paramItemView.prefersCondensedTitle())) {
      return getTitleCondensed();
    }
    return getTitle();
  }
  
  public final boolean hasCollapsibleActionView()
  {
    return ((mShowAsAction & 0x8) != 0) && (mActionView != null);
  }
  
  public final boolean hasSubMenu()
  {
    return mSubMenu != null;
  }
  
  public final boolean invoke()
  {
    if ((mClickListener != null) && (mClickListener.onMenuItemClick(this))) {}
    do
    {
      do
      {
        return true;
      } while (mMenu.dispatchMenuItemSelected(mMenu.getRootMenu(), this));
      if (mItemCallback != null)
      {
        mItemCallback.run();
        return true;
      }
      if (mIntent != null) {
        try
        {
          mMenu.getContext().startActivity(mIntent);
          return true;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
        }
      }
    } while ((mActionProvider != null) && (mActionProvider.onPerformDefaultAction()));
    return false;
  }
  
  public final boolean isActionButton()
  {
    return (mFlags & 0x20) == 32;
  }
  
  public final boolean isActionViewExpanded()
  {
    return mIsActionViewExpanded;
  }
  
  public final boolean isCheckable()
  {
    return (mFlags & 0x1) == 1;
  }
  
  public final boolean isChecked()
  {
    return (mFlags & 0x2) == 2;
  }
  
  public final boolean isEnabled()
  {
    return (mFlags & 0x10) != 0;
  }
  
  public final boolean isExclusiveCheckable()
  {
    return (mFlags & 0x4) != 0;
  }
  
  public final boolean isVisible()
  {
    return (mFlags & 0x8) == 0;
  }
  
  public final boolean requestsActionButton()
  {
    return (mShowAsAction & 0x1) == 1;
  }
  
  public final boolean requiresActionButton()
  {
    return (mShowAsAction & 0x2) == 2;
  }
  
  public final MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    mActionView = null;
    mActionProvider = paramActionProvider;
    mMenu.onItemsChanged(true);
    return this;
  }
  
  public final MenuItem setActionView(int paramInt)
  {
    Context localContext = mMenu.getContext();
    setActionView(LayoutInflater.from(localContext).inflate(paramInt, new LinearLayout(localContext), false));
    return this;
  }
  
  public final MenuItem setActionView(View paramView)
  {
    mActionView = paramView;
    mActionProvider = null;
    if ((paramView != null) && (paramView.getId() == -1) && (mId > 0)) {
      paramView.setId(mId);
    }
    mMenu.onItemActionRequestChanged(this);
    return this;
  }
  
  public final void setActionViewExpanded(boolean paramBoolean)
  {
    mIsActionViewExpanded = paramBoolean;
    mMenu.onItemsChanged(false);
  }
  
  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (mShortcutAlphabeticChar == paramChar) {
      return this;
    }
    mShortcutAlphabeticChar = Character.toLowerCase(paramChar);
    mMenu.onItemsChanged(false);
    return this;
  }
  
  public final MenuItem setCallback(Runnable paramRunnable)
  {
    mItemCallback = paramRunnable;
    return this;
  }
  
  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int j = mFlags;
    int k = mFlags;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      mFlags = (i | k & 0xFFFFFFFE);
      if (j != mFlags) {
        mMenu.onItemsChanged(false);
      }
      return this;
    }
  }
  
  public final MenuItem setChecked(boolean paramBoolean)
  {
    if ((mFlags & 0x4) != 0)
    {
      mMenu.setExclusiveItemChecked(this);
      return this;
    }
    setCheckedInt(paramBoolean);
    return this;
  }
  
  final void setCheckedInt(boolean paramBoolean)
  {
    int j = mFlags;
    int k = mFlags;
    if (paramBoolean) {}
    for (int i = 2;; i = 0)
    {
      mFlags = (i | k & 0xFFFFFFFD);
      if (j != mFlags) {
        mMenu.onItemsChanged(false);
      }
      return;
    }
  }
  
  public final MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (mFlags |= 0x10;; mFlags &= 0xFFFFFFEF)
    {
      mMenu.onItemsChanged(false);
      return this;
    }
  }
  
  public final void setExclusiveCheckable(boolean paramBoolean)
  {
    int j = mFlags;
    if (paramBoolean) {}
    for (int i = 4;; i = 0)
    {
      mFlags = (i | j & 0xFFFFFFFB);
      return;
    }
  }
  
  public final MenuItem setIcon(int paramInt)
  {
    mIconDrawable = null;
    mIconResId = paramInt;
    mMenu.onItemsChanged(false);
    return this;
  }
  
  public final MenuItem setIcon(Drawable paramDrawable)
  {
    mIconResId = 0;
    mIconDrawable = paramDrawable;
    mMenu.onItemsChanged(false);
    return this;
  }
  
  public final MenuItem setIntent(Intent paramIntent)
  {
    mIntent = paramIntent;
    return this;
  }
  
  public final void setIsActionButton(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mFlags |= 0x20;
      return;
    }
    mFlags &= 0xFFFFFFDF;
  }
  
  final void setMenuInfo(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    mMenuInfo = paramContextMenuInfo;
  }
  
  public final MenuItem setNumericShortcut(char paramChar)
  {
    if (mShortcutNumericChar == paramChar) {
      return this;
    }
    mShortcutNumericChar = paramChar;
    mMenu.onItemsChanged(false);
    return this;
  }
  
  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    mOnActionExpandListener = paramOnActionExpandListener;
    return this;
  }
  
  public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    mClickListener = paramOnMenuItemClickListener;
    return this;
  }
  
  public final MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    mShortcutNumericChar = paramChar1;
    mShortcutAlphabeticChar = Character.toLowerCase(paramChar2);
    mMenu.onItemsChanged(false);
    return this;
  }
  
  public final void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default: 
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }
    mShowAsAction = paramInt;
    mMenu.onItemActionRequestChanged(this);
  }
  
  public final MenuItem setShowAsActionFlags(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }
  
  final void setSubMenu(SubMenuBuilder paramSubMenuBuilder)
  {
    mSubMenu = paramSubMenuBuilder;
    paramSubMenuBuilder.setHeaderTitle(getTitle());
  }
  
  public final MenuItem setTitle(int paramInt)
  {
    return setTitle(mMenu.getContext().getString(paramInt));
  }
  
  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    mTitle = paramCharSequence;
    mMenu.onItemsChanged(false);
    if (mSubMenu != null) {
      mSubMenu.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    mTitleCondensed = paramCharSequence;
    if (paramCharSequence == null) {
      paramCharSequence = mTitle;
    }
    mMenu.onItemsChanged(false);
    return this;
  }
  
  public final MenuItem setVisible(boolean paramBoolean)
  {
    if (setVisibleInt(paramBoolean)) {
      mMenu.onItemVisibleChanged(this);
    }
    return this;
  }
  
  final boolean setVisibleInt(boolean paramBoolean)
  {
    boolean bool = false;
    int j = mFlags;
    int k = mFlags;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      mFlags = (i | k & 0xFFFFFFF7);
      paramBoolean = bool;
      if (j != mFlags) {
        paramBoolean = true;
      }
      return paramBoolean;
    }
  }
  
  public final boolean shouldShowIcon()
  {
    return mMenu.getOptionalIconsVisible();
  }
  
  final boolean shouldShowShortcut()
  {
    return (mMenu.isShortcutsVisible()) && (getShortcut() != 0);
  }
  
  public final boolean showsTextAsAction()
  {
    return (mShowAsAction & 0x4) == 4;
  }
  
  public final String toString()
  {
    return mTitle.toString();
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuItemImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */