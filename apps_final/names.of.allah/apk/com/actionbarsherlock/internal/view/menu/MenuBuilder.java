package com.actionbarsherlock.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.view.ActionProvider;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class MenuBuilder
  implements com.actionbarsherlock.view.Menu
{
  private static final String ACTION_VIEW_STATES_KEY = "android:menu:actionviewstates";
  private static final String EXPANDED_ACTION_VIEW_ID = "android:menu:expandedactionview";
  private static final String PRESENTER_KEY = "android:menu:presenters";
  private static final int[] sCategoryToOrder = { 1, 4, 5, 3, 2, 0 };
  private ArrayList<MenuItemImpl> mActionItems;
  private MenuBuilder.Callback mCallback;
  private final Context mContext;
  private ContextMenu.ContextMenuInfo mCurrentMenuInfo;
  private int mDefaultShowAsAction = 0;
  private MenuItemImpl mExpandedItem;
  Drawable mHeaderIcon;
  CharSequence mHeaderTitle;
  View mHeaderView;
  private boolean mIsActionItemsStale;
  private boolean mIsClosing = false;
  private boolean mIsVisibleItemsStale;
  private ArrayList<MenuItemImpl> mItems;
  private boolean mItemsChangedWhileDispatchPrevented = false;
  private ArrayList<MenuItemImpl> mNonActionItems;
  private boolean mOptionalIconsVisible = false;
  private CopyOnWriteArrayList<WeakReference<MenuPresenter>> mPresenters = new CopyOnWriteArrayList();
  private boolean mPreventDispatchingItemsChanged = false;
  private boolean mQwertyMode;
  private final Resources mResources;
  private boolean mShortcutsVisible;
  private ArrayList<MenuItemImpl> mTempShortcutItemList = new ArrayList();
  private ArrayList<MenuItemImpl> mVisibleItems;
  
  public MenuBuilder(Context paramContext)
  {
    mContext = paramContext;
    mResources = paramContext.getResources();
    mItems = new ArrayList();
    mVisibleItems = new ArrayList();
    mIsVisibleItemsStale = true;
    mActionItems = new ArrayList();
    mNonActionItems = new ArrayList();
    mIsActionItemsStale = true;
    setShortcutsVisibleInner(true);
  }
  
  private com.actionbarsherlock.view.MenuItem addInternal(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i = getOrdering(paramInt3);
    paramCharSequence = new MenuItemImpl(this, paramInt1, paramInt2, paramInt3, i, paramCharSequence, mDefaultShowAsAction);
    if (mCurrentMenuInfo != null) {
      paramCharSequence.setMenuInfo(mCurrentMenuInfo);
    }
    mItems.add(findInsertIndex(mItems, i), paramCharSequence);
    onItemsChanged(true);
    return paramCharSequence;
  }
  
  private void dispatchPresenterUpdate(boolean paramBoolean)
  {
    if (mPresenters.isEmpty()) {
      return;
    }
    stopDispatchingItemsChanged();
    Iterator localIterator = mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if (localMenuPresenter == null) {
        mPresenters.remove(localWeakReference);
      } else {
        localMenuPresenter.updateMenuView(paramBoolean);
      }
    }
    startDispatchingItemsChanged();
  }
  
  private void dispatchRestoreInstanceState(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:presenters");
    if ((paramBundle == null) || (mPresenters.isEmpty())) {}
    for (;;)
    {
      return;
      Iterator localIterator = mPresenters.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (WeakReference)localIterator.next();
        MenuPresenter localMenuPresenter = (MenuPresenter)((WeakReference)localObject).get();
        if (localMenuPresenter == null)
        {
          mPresenters.remove(localObject);
        }
        else
        {
          int i = localMenuPresenter.getId();
          if (i > 0)
          {
            localObject = (Parcelable)paramBundle.get(i);
            if (localObject != null) {
              localMenuPresenter.onRestoreInstanceState((Parcelable)localObject);
            }
          }
        }
      }
    }
  }
  
  private void dispatchSaveInstanceState(Bundle paramBundle)
  {
    if (mPresenters.isEmpty()) {
      return;
    }
    SparseArray localSparseArray = new SparseArray();
    Iterator localIterator = mPresenters.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)((WeakReference)localObject).get();
      if (localMenuPresenter == null)
      {
        mPresenters.remove(localObject);
      }
      else
      {
        int i = localMenuPresenter.getId();
        if (i > 0)
        {
          localObject = localMenuPresenter.onSaveInstanceState();
          if (localObject != null) {
            localSparseArray.put(i, localObject);
          }
        }
      }
    }
    paramBundle.putSparseParcelableArray("android:menu:presenters", localSparseArray);
  }
  
  private boolean dispatchSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    if (mPresenters.isEmpty()) {
      return false;
    }
    Iterator localIterator = mPresenters.iterator();
    boolean bool = false;
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if (localMenuPresenter == null)
      {
        mPresenters.remove(localWeakReference);
      }
      else
      {
        if (bool) {
          break label89;
        }
        bool = localMenuPresenter.onSubMenuSelected(paramSubMenuBuilder);
      }
    }
    label89:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  private static int findInsertIndex(ArrayList<MenuItemImpl> paramArrayList, int paramInt)
  {
    int i = paramArrayList.size() - 1;
    while (i >= 0)
    {
      if (((MenuItemImpl)paramArrayList.get(i)).getOrdering() <= paramInt) {
        return i + 1;
      }
      i -= 1;
    }
    return 0;
  }
  
  private static int getOrdering(int paramInt)
  {
    int i = (0xFFFF0000 & paramInt) >> 16;
    if ((i < 0) || (i >= sCategoryToOrder.length)) {
      throw new IllegalArgumentException("order does not contain a valid category.");
    }
    return sCategoryToOrder[i] << 16 | 0xFFFF & paramInt;
  }
  
  private void removeItemAtInt(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= mItems.size())) {}
    do
    {
      return;
      mItems.remove(paramInt);
    } while (!paramBoolean);
    onItemsChanged(true);
  }
  
  private void setHeaderInternal(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    Resources localResources = getResources();
    if (paramView != null)
    {
      mHeaderView = paramView;
      mHeaderTitle = null;
      mHeaderIcon = null;
      onItemsChanged(false);
      return;
    }
    if (paramInt1 > 0)
    {
      mHeaderTitle = localResources.getText(paramInt1);
      label47:
      if (paramInt2 <= 0) {
        break label81;
      }
      mHeaderIcon = localResources.getDrawable(paramInt2);
    }
    for (;;)
    {
      mHeaderView = null;
      break;
      if (paramCharSequence == null) {
        break label47;
      }
      mHeaderTitle = paramCharSequence;
      break label47;
      label81:
      if (paramDrawable != null) {
        mHeaderIcon = paramDrawable;
      }
    }
  }
  
  private void setShortcutsVisibleInner(boolean paramBoolean)
  {
    boolean bool = true;
    if ((paramBoolean) && (mResources.getConfiguration().keyboard != 1) && (mResources.getBoolean(R.bool.abs__config_showMenuShortcutsWhenKeyboardPresent))) {}
    for (paramBoolean = bool;; paramBoolean = false)
    {
      mShortcutsVisible = paramBoolean;
      return;
    }
  }
  
  public com.actionbarsherlock.view.MenuItem add(int paramInt)
  {
    return addInternal(0, 0, 0, mResources.getString(paramInt));
  }
  
  public com.actionbarsherlock.view.MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addInternal(paramInt1, paramInt2, paramInt3, mResources.getString(paramInt4));
  }
  
  public com.actionbarsherlock.view.MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public com.actionbarsherlock.view.MenuItem add(CharSequence paramCharSequence)
  {
    return addInternal(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, com.actionbarsherlock.view.MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = mContext.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i;
    label52:
    ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i = localList.size();
      if ((paramInt4 & 0x1) == 0) {
        removeGroup(paramInt1);
      }
      paramInt4 = 0;
      if (paramInt4 >= i) {
        break label214;
      }
      localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (specificIndex >= 0) {
        break label201;
      }
    }
    label201:
    for (paramComponentName = paramIntent;; paramComponentName = paramArrayOfIntent[specificIndex])
    {
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (specificIndex >= 0)) {
        paramArrayOfMenuItem[specificIndex] = paramComponentName;
      }
      paramInt4 += 1;
      break label52;
      i = 0;
      break;
    }
    label214:
    return i;
  }
  
  public void addMenuPresenter(MenuPresenter paramMenuPresenter)
  {
    mPresenters.add(new WeakReference(paramMenuPresenter));
    paramMenuPresenter.initForMenu(mContext, this);
    mIsActionItemsStale = true;
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, mResources.getString(paramInt));
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, mResources.getString(paramInt4));
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (MenuItemImpl)addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
    SubMenuBuilder localSubMenuBuilder = new SubMenuBuilder(mContext, this, paramCharSequence);
    paramCharSequence.setSubMenu(localSubMenuBuilder);
    return localSubMenuBuilder;
  }
  
  public com.actionbarsherlock.view.SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public boolean bindNativeOverflow(android.view.Menu paramMenu, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener, HashMap<android.view.MenuItem, MenuItemImpl> paramHashMap)
  {
    Object localObject = getNonActionItems();
    boolean bool2;
    if ((localObject == null) || (((List)localObject).size() == 0))
    {
      bool2 = false;
      return bool2;
    }
    paramMenu.clear();
    Iterator localIterator1 = ((List)localObject).iterator();
    boolean bool1 = false;
    MenuItemImpl localMenuItemImpl1;
    do
    {
      bool2 = bool1;
      if (!localIterator1.hasNext()) {
        break;
      }
      localMenuItemImpl1 = (MenuItemImpl)localIterator1.next();
    } while (!localMenuItemImpl1.isVisible());
    if (localMenuItemImpl1.hasSubMenu())
    {
      localObject = paramMenu.addSubMenu(localMenuItemImpl1.getGroupId(), localMenuItemImpl1.getItemId(), localMenuItemImpl1.getOrder(), localMenuItemImpl1.getTitle());
      Iterator localIterator2 = ((SubMenuBuilder)localMenuItemImpl1.getSubMenu()).getVisibleItems().iterator();
      while (localIterator2.hasNext())
      {
        MenuItemImpl localMenuItemImpl2 = (MenuItemImpl)localIterator2.next();
        android.view.MenuItem localMenuItem = ((android.view.SubMenu)localObject).add(localMenuItemImpl2.getGroupId(), localMenuItemImpl2.getItemId(), localMenuItemImpl2.getOrder(), localMenuItemImpl2.getTitle());
        localMenuItem.setIcon(localMenuItemImpl2.getIcon());
        localMenuItem.setOnMenuItemClickListener(paramOnMenuItemClickListener);
        localMenuItem.setEnabled(localMenuItemImpl2.isEnabled());
        localMenuItem.setIntent(localMenuItemImpl2.getIntent());
        localMenuItem.setNumericShortcut(localMenuItemImpl2.getNumericShortcut());
        localMenuItem.setAlphabeticShortcut(localMenuItemImpl2.getAlphabeticShortcut());
        localMenuItem.setTitleCondensed(localMenuItemImpl2.getTitleCondensed());
        localMenuItem.setCheckable(localMenuItemImpl2.isCheckable());
        localMenuItem.setChecked(localMenuItemImpl2.isChecked());
        if (localMenuItemImpl2.isExclusiveCheckable()) {
          ((android.view.SubMenu)localObject).setGroupCheckable(localMenuItemImpl2.getGroupId(), true, true);
        }
        paramHashMap.put(localMenuItem, localMenuItemImpl2);
      }
    }
    for (localObject = ((android.view.SubMenu)localObject).getItem();; localObject = paramMenu.add(localMenuItemImpl1.getGroupId(), localMenuItemImpl1.getItemId(), localMenuItemImpl1.getOrder(), localMenuItemImpl1.getTitle()))
    {
      ((android.view.MenuItem)localObject).setIcon(localMenuItemImpl1.getIcon());
      ((android.view.MenuItem)localObject).setOnMenuItemClickListener(paramOnMenuItemClickListener);
      ((android.view.MenuItem)localObject).setEnabled(localMenuItemImpl1.isEnabled());
      ((android.view.MenuItem)localObject).setIntent(localMenuItemImpl1.getIntent());
      ((android.view.MenuItem)localObject).setNumericShortcut(localMenuItemImpl1.getNumericShortcut());
      ((android.view.MenuItem)localObject).setAlphabeticShortcut(localMenuItemImpl1.getAlphabeticShortcut());
      ((android.view.MenuItem)localObject).setTitleCondensed(localMenuItemImpl1.getTitleCondensed());
      ((android.view.MenuItem)localObject).setCheckable(localMenuItemImpl1.isCheckable());
      ((android.view.MenuItem)localObject).setChecked(localMenuItemImpl1.isChecked());
      if (localMenuItemImpl1.isExclusiveCheckable()) {
        paramMenu.setGroupCheckable(localMenuItemImpl1.getGroupId(), true, true);
      }
      paramHashMap.put(localObject, localMenuItemImpl1);
      bool1 = true;
      break;
    }
  }
  
  public void changeMenuMode()
  {
    if (mCallback != null) {
      mCallback.onMenuModeChange(this);
    }
  }
  
  public void clear()
  {
    if (mExpandedItem != null) {
      collapseItemActionView(mExpandedItem);
    }
    mItems.clear();
    onItemsChanged(true);
  }
  
  public void clearAll()
  {
    mPreventDispatchingItemsChanged = true;
    clear();
    clearHeader();
    mPreventDispatchingItemsChanged = false;
    mItemsChangedWhileDispatchPrevented = false;
    onItemsChanged(true);
  }
  
  public void clearHeader()
  {
    mHeaderIcon = null;
    mHeaderTitle = null;
    mHeaderView = null;
    onItemsChanged(false);
  }
  
  public void close()
  {
    close(true);
  }
  
  final void close(boolean paramBoolean)
  {
    if (mIsClosing) {
      return;
    }
    mIsClosing = true;
    Iterator localIterator = mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if (localMenuPresenter == null) {
        mPresenters.remove(localWeakReference);
      } else {
        localMenuPresenter.onCloseMenu(this, paramBoolean);
      }
    }
    mIsClosing = false;
  }
  
  public boolean collapseItemActionView(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (!mPresenters.isEmpty())
    {
      if (mExpandedItem != paramMenuItemImpl) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    stopDispatchingItemsChanged();
    Iterator localIterator = mPresenters.iterator();
    bool1 = false;
    for (;;)
    {
      label47:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
        if (localMenuPresenter == null)
        {
          mPresenters.remove(localWeakReference);
        }
        else
        {
          bool1 = localMenuPresenter.collapseItemActionView(this, paramMenuItemImpl);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      startDispatchingItemsChanged();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      mExpandedItem = null;
      return bool1;
      break label47;
    }
  }
  
  boolean dispatchMenuItemSelected(MenuBuilder paramMenuBuilder, com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return (mCallback != null) && (mCallback.onMenuItemSelected(paramMenuBuilder, paramMenuItem));
  }
  
  public boolean expandItemActionView(MenuItemImpl paramMenuItemImpl)
  {
    boolean bool2 = false;
    if (mPresenters.isEmpty()) {
      return bool2;
    }
    stopDispatchingItemsChanged();
    Iterator localIterator = mPresenters.iterator();
    boolean bool1 = false;
    for (;;)
    {
      label31:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
        if (localMenuPresenter == null)
        {
          mPresenters.remove(localWeakReference);
        }
        else
        {
          bool1 = localMenuPresenter.expandItemActionView(this, paramMenuItemImpl);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      startDispatchingItemsChanged();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      mExpandedItem = paramMenuItemImpl;
      return bool1;
      break label31;
    }
  }
  
  public int findGroupIndex(int paramInt)
  {
    return findGroupIndex(paramInt, 0);
  }
  
  public int findGroupIndex(int paramInt1, int paramInt2)
  {
    int i = size();
    if (paramInt2 < 0) {
      paramInt2 = 0;
    }
    for (;;)
    {
      if (paramInt2 < i)
      {
        if (((MenuItemImpl)mItems.get(paramInt2)).getGroupId() == paramInt1) {
          return paramInt2;
        }
        paramInt2 += 1;
      }
      else
      {
        return -1;
      }
    }
  }
  
  public com.actionbarsherlock.view.MenuItem findItem(int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (MenuItemImpl)mItems.get(i);
      if (((MenuItemImpl)localObject).getItemId() == paramInt) {}
      com.actionbarsherlock.view.MenuItem localMenuItem;
      do
      {
        return (com.actionbarsherlock.view.MenuItem)localObject;
        if (!((MenuItemImpl)localObject).hasSubMenu()) {
          break;
        }
        localMenuItem = ((MenuItemImpl)localObject).getSubMenu().findItem(paramInt);
        localObject = localMenuItem;
      } while (localMenuItem != null);
      i += 1;
    }
    return null;
  }
  
  public int findItemIndex(int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      if (((MenuItemImpl)mItems.get(i)).getItemId() == paramInt) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  MenuItemImpl findItemWithShortcutForKey(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = mTempShortcutItemList;
    localArrayList.clear();
    findItemsWithShortcutForKey(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty())
    {
      paramKeyEvent = null;
      return paramKeyEvent;
    }
    int k = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int m = localArrayList.size();
    if (m == 1) {
      return (MenuItemImpl)localArrayList.get(0);
    }
    boolean bool = isQwertyMode();
    int i = 0;
    label85:
    if (i < m)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)localArrayList.get(i);
      if (bool) {}
      for (int j = localMenuItemImpl.getAlphabeticShortcut();; j = localMenuItemImpl.getNumericShortcut())
      {
        if (j == meta[0])
        {
          paramKeyEvent = localMenuItemImpl;
          if ((k & 0x2) == 0) {
            break;
          }
        }
        if (j == meta[2])
        {
          paramKeyEvent = localMenuItemImpl;
          if ((k & 0x2) != 0) {
            break;
          }
        }
        if ((bool) && (j == 8))
        {
          paramKeyEvent = localMenuItemImpl;
          if (paramInt == 67) {
            break;
          }
        }
        i += 1;
        break label85;
      }
    }
    return null;
  }
  
  void findItemsWithShortcutForKey(List<MenuItemImpl> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = isQwertyMode();
    int k = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int m = mItems.size();
    int i = 0;
    label49:
    MenuItemImpl localMenuItemImpl;
    if (i < m)
    {
      localMenuItemImpl = (MenuItemImpl)mItems.get(i);
      if (localMenuItemImpl.hasSubMenu()) {
        ((MenuBuilder)localMenuItemImpl.getSubMenu()).findItemsWithShortcutForKey(paramList, paramInt, paramKeyEvent);
      }
      if (!bool) {
        break label184;
      }
    }
    label184:
    for (int j = localMenuItemImpl.getAlphabeticShortcut();; j = localMenuItemImpl.getNumericShortcut())
    {
      if (((k & 0x5) == 0) && (j != 0) && ((j == meta[0]) || (j == meta[2]) || ((bool) && (j == 8) && (paramInt == 67))) && (localMenuItemImpl.isEnabled())) {
        paramList.add(localMenuItemImpl);
      }
      i += 1;
      break label49;
      break;
    }
  }
  
  public void flagActionItems()
  {
    if (!mIsActionItemsStale) {
      return;
    }
    Object localObject1 = mPresenters.iterator();
    int i = 0;
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (WeakReference)((Iterator)localObject1).next();
      MenuPresenter localMenuPresenter = (MenuPresenter)((WeakReference)localObject2).get();
      if (localMenuPresenter == null) {
        mPresenters.remove(localObject2);
      } else {
        i = localMenuPresenter.flagActionItems() | i;
      }
    }
    if (i != 0)
    {
      mActionItems.clear();
      mNonActionItems.clear();
      localObject1 = getVisibleItems();
      int k = ((ArrayList)localObject1).size();
      i = 0;
      if (i < k)
      {
        localObject2 = (MenuItemImpl)((ArrayList)localObject1).get(i);
        if (((MenuItemImpl)localObject2).isActionButton()) {
          mActionItems.add(localObject2);
        }
        for (;;)
        {
          int j;
          i += 1;
          break;
          mNonActionItems.add(localObject2);
        }
      }
    }
    else
    {
      mActionItems.clear();
      mNonActionItems.clear();
      mNonActionItems.addAll(getVisibleItems());
    }
    mIsActionItemsStale = false;
  }
  
  ArrayList<MenuItemImpl> getActionItems()
  {
    flagActionItems();
    return mActionItems;
  }
  
  protected String getActionViewStatesKey()
  {
    return "android:menu:actionviewstates";
  }
  
  public Context getContext()
  {
    return mContext;
  }
  
  public MenuItemImpl getExpandedItem()
  {
    return mExpandedItem;
  }
  
  public Drawable getHeaderIcon()
  {
    return mHeaderIcon;
  }
  
  public CharSequence getHeaderTitle()
  {
    return mHeaderTitle;
  }
  
  public View getHeaderView()
  {
    return mHeaderView;
  }
  
  public com.actionbarsherlock.view.MenuItem getItem(int paramInt)
  {
    return (com.actionbarsherlock.view.MenuItem)mItems.get(paramInt);
  }
  
  ArrayList<MenuItemImpl> getNonActionItems()
  {
    flagActionItems();
    return mNonActionItems;
  }
  
  boolean getOptionalIconsVisible()
  {
    return mOptionalIconsVisible;
  }
  
  Resources getResources()
  {
    return mResources;
  }
  
  public MenuBuilder getRootMenu()
  {
    return this;
  }
  
  ArrayList<MenuItemImpl> getVisibleItems()
  {
    if (!mIsVisibleItemsStale) {
      return mVisibleItems;
    }
    mVisibleItems.clear();
    int j = mItems.size();
    int i = 0;
    while (i < j)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)mItems.get(i);
      if (localMenuItemImpl.isVisible()) {
        mVisibleItems.add(localMenuItemImpl);
      }
      i += 1;
    }
    mIsVisibleItemsStale = false;
    mIsActionItemsStale = true;
    return mVisibleItems;
  }
  
  public boolean hasVisibleItems()
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      if (((MenuItemImpl)mItems.get(i)).isVisible()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  boolean isQwertyMode()
  {
    return mQwertyMode;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return findItemWithShortcutForKey(paramInt, paramKeyEvent) != null;
  }
  
  public boolean isShortcutsVisible()
  {
    return mShortcutsVisible;
  }
  
  void onItemActionRequestChanged(MenuItemImpl paramMenuItemImpl)
  {
    mIsActionItemsStale = true;
    onItemsChanged(true);
  }
  
  void onItemVisibleChanged(MenuItemImpl paramMenuItemImpl)
  {
    mIsVisibleItemsStale = true;
    onItemsChanged(true);
  }
  
  void onItemsChanged(boolean paramBoolean)
  {
    if (!mPreventDispatchingItemsChanged)
    {
      if (paramBoolean)
      {
        mIsVisibleItemsStale = true;
        mIsActionItemsStale = true;
      }
      dispatchPresenterUpdate(paramBoolean);
      return;
    }
    mItemsChangedWhileDispatchPrevented = true;
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return performItemAction(findItem(paramInt1), paramInt2);
  }
  
  public boolean performItemAction(com.actionbarsherlock.view.MenuItem paramMenuItem, int paramInt)
  {
    Object localObject = (MenuItemImpl)paramMenuItem;
    boolean bool1;
    if ((localObject == null) || (!((MenuItemImpl)localObject).isEnabled())) {
      bool1 = false;
    }
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        bool1 = ((MenuItemImpl)localObject).invoke();
        if (!((MenuItemImpl)localObject).hasCollapsibleActionView()) {
          break;
        }
        bool2 = ((MenuItemImpl)localObject).expandActionView() | bool1;
        bool1 = bool2;
      } while (!bool2);
      close(true);
      return bool2;
      if (!paramMenuItem.hasSubMenu()) {
        break;
      }
      close(false);
      localObject = (SubMenuBuilder)paramMenuItem.getSubMenu();
      paramMenuItem = paramMenuItem.getActionProvider();
      if ((paramMenuItem != null) && (paramMenuItem.hasSubMenu())) {
        paramMenuItem.onPrepareSubMenu((com.actionbarsherlock.view.SubMenu)localObject);
      }
      bool2 = dispatchSubMenuSelected((SubMenuBuilder)localObject) | bool1;
      bool1 = bool2;
    } while (bool2);
    close(true);
    return bool2;
    if ((paramInt & 0x1) == 0) {
      close(true);
    }
    return bool1;
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = findItemWithShortcutForKey(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null) {
      bool = performItemAction(paramKeyEvent, paramInt2);
    }
    if ((paramInt2 & 0x2) != 0) {
      close(true);
    }
    return bool;
  }
  
  public void removeGroup(int paramInt)
  {
    int j = findGroupIndex(paramInt);
    if (j >= 0)
    {
      int k = mItems.size();
      int i = 0;
      while ((i < k - j) && (((MenuItemImpl)mItems.get(j)).getGroupId() == paramInt))
      {
        removeItemAtInt(j, false);
        i += 1;
      }
      onItemsChanged(true);
    }
  }
  
  public void removeItem(int paramInt)
  {
    removeItemAtInt(findItemIndex(paramInt), true);
  }
  
  public void removeItemAt(int paramInt)
  {
    removeItemAtInt(paramInt, true);
  }
  
  public void removeMenuPresenter(MenuPresenter paramMenuPresenter)
  {
    Iterator localIterator = mPresenters.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      MenuPresenter localMenuPresenter = (MenuPresenter)localWeakReference.get();
      if ((localMenuPresenter == null) || (localMenuPresenter == paramMenuPresenter)) {
        mPresenters.remove(localWeakReference);
      }
    }
  }
  
  public void restoreActionViewStates(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      int i;
      do
      {
        SparseArray localSparseArray;
        do
        {
          return;
          localSparseArray = paramBundle.getSparseParcelableArray(getActionViewStatesKey());
        } while ((Build.VERSION.SDK_INT < 11) && (localSparseArray == null));
        int j = size();
        i = 0;
        while (i < j)
        {
          com.actionbarsherlock.view.MenuItem localMenuItem = getItem(i);
          View localView = localMenuItem.getActionView();
          if ((localView != null) && (localView.getId() != -1)) {
            localView.restoreHierarchyState(localSparseArray);
          }
          if (localMenuItem.hasSubMenu()) {
            ((SubMenuBuilder)localMenuItem.getSubMenu()).restoreActionViewStates(paramBundle);
          }
          i += 1;
        }
        i = paramBundle.getInt("android:menu:expandedactionview");
      } while (i <= 0);
      paramBundle = findItem(i);
    } while (paramBundle == null);
    paramBundle.expandActionView();
  }
  
  public void restorePresenterStates(Bundle paramBundle)
  {
    dispatchRestoreInstanceState(paramBundle);
  }
  
  public void saveActionViewStates(Bundle paramBundle)
  {
    int j = size();
    int i = 0;
    Object localObject3;
    for (Object localObject1 = null; i < j; localObject1 = localObject3)
    {
      com.actionbarsherlock.view.MenuItem localMenuItem = getItem(i);
      View localView = localMenuItem.getActionView();
      localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (localMenuItem.isActionViewExpanded())
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((SubMenuBuilder)localMenuItem.getSubMenu()).saveActionViewStates(paramBundle);
      }
      i += 1;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(getActionViewStatesKey(), (SparseArray)localObject1);
    }
  }
  
  public void savePresenterStates(Bundle paramBundle)
  {
    dispatchSaveInstanceState(paramBundle);
  }
  
  public void setCallback(MenuBuilder.Callback paramCallback)
  {
    mCallback = paramCallback;
  }
  
  public void setCurrentMenuInfo(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    mCurrentMenuInfo = paramContextMenuInfo;
  }
  
  public MenuBuilder setDefaultShowAsAction(int paramInt)
  {
    mDefaultShowAsAction = paramInt;
    return this;
  }
  
  void setExclusiveItemChecked(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    int j = paramMenuItem.getGroupId();
    int k = mItems.size();
    int i = 0;
    if (i < k)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)mItems.get(i);
      if ((localMenuItemImpl.getGroupId() == j) && (localMenuItemImpl.isExclusiveCheckable()) && (localMenuItemImpl.isCheckable())) {
        if (localMenuItemImpl != paramMenuItem) {
          break label81;
        }
      }
      label81:
      for (boolean bool = true;; bool = false)
      {
        localMenuItemImpl.setCheckedInt(bool);
        i += 1;
        break;
      }
    }
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = mItems.size();
    int i = 0;
    while (i < j)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)mItems.get(i);
      if (localMenuItemImpl.getGroupId() == paramInt)
      {
        localMenuItemImpl.setExclusiveCheckable(paramBoolean2);
        localMenuItemImpl.setCheckable(paramBoolean1);
      }
      i += 1;
    }
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int j = mItems.size();
    int i = 0;
    while (i < j)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)mItems.get(i);
      if (localMenuItemImpl.getGroupId() == paramInt) {
        localMenuItemImpl.setEnabled(paramBoolean);
      }
      i += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int k = mItems.size();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      MenuItemImpl localMenuItemImpl = (MenuItemImpl)mItems.get(j);
      if ((localMenuItemImpl.getGroupId() != paramInt) || (!localMenuItemImpl.setVisibleInt(paramBoolean))) {
        break label74;
      }
      i = 1;
    }
    label74:
    for (;;)
    {
      j += 1;
      break;
      if (i != 0) {
        onItemsChanged(true);
      }
      return;
    }
  }
  
  protected MenuBuilder setHeaderIconInt(int paramInt)
  {
    setHeaderInternal(0, null, paramInt, null, null);
    return this;
  }
  
  protected MenuBuilder setHeaderIconInt(Drawable paramDrawable)
  {
    setHeaderInternal(0, null, 0, paramDrawable, null);
    return this;
  }
  
  protected MenuBuilder setHeaderTitleInt(int paramInt)
  {
    setHeaderInternal(paramInt, null, 0, null, null);
    return this;
  }
  
  protected MenuBuilder setHeaderTitleInt(CharSequence paramCharSequence)
  {
    setHeaderInternal(0, paramCharSequence, 0, null, null);
    return this;
  }
  
  protected MenuBuilder setHeaderViewInt(View paramView)
  {
    setHeaderInternal(0, null, 0, null, paramView);
    return this;
  }
  
  void setOptionalIconsVisible(boolean paramBoolean)
  {
    mOptionalIconsVisible = paramBoolean;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    mQwertyMode = paramBoolean;
    onItemsChanged(false);
  }
  
  public void setShortcutsVisible(boolean paramBoolean)
  {
    if (mShortcutsVisible == paramBoolean) {
      return;
    }
    setShortcutsVisibleInner(paramBoolean);
    onItemsChanged(false);
  }
  
  public int size()
  {
    return mItems.size();
  }
  
  public void startDispatchingItemsChanged()
  {
    mPreventDispatchingItemsChanged = false;
    if (mItemsChangedWhileDispatchPrevented)
    {
      mItemsChangedWhileDispatchPrevented = false;
      onItemsChanged(true);
    }
  }
  
  public void stopDispatchingItemsChanged()
  {
    if (!mPreventDispatchingItemsChanged)
    {
      mPreventDispatchingItemsChanged = true;
      mItemsChangedWhileDispatchPrevented = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */