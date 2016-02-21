package com.actionbarsherlock.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
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
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.SubMenu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// compiled from: ProGuard
public class MenuBuilder implements Menu {
    private static final String ACTION_VIEW_STATES_KEY = "android:menu:actionviewstates";
    private static final String EXPANDED_ACTION_VIEW_ID = "android:menu:expandedactionview";
    private static final String PRESENTER_KEY = "android:menu:presenters";
    private static final int[] sCategoryToOrder;
    private ArrayList mActionItems;
    private Callback mCallback;
    private final Context mContext;
    private ContextMenuInfo mCurrentMenuInfo;
    private int mDefaultShowAsAction;
    private MenuItemImpl mExpandedItem;
    Drawable mHeaderIcon;
    CharSequence mHeaderTitle;
    View mHeaderView;
    private boolean mIsActionItemsStale;
    private boolean mIsClosing;
    private boolean mIsVisibleItemsStale;
    private ArrayList mItems;
    private boolean mItemsChangedWhileDispatchPrevented;
    private ArrayList mNonActionItems;
    private boolean mOptionalIconsVisible;
    private CopyOnWriteArrayList mPresenters;
    private boolean mPreventDispatchingItemsChanged;
    private boolean mQwertyMode;
    private final Resources mResources;
    private boolean mShortcutsVisible;
    private ArrayList mTempShortcutItemList;
    private ArrayList mVisibleItems;

    // compiled from: ProGuard
    public interface Callback {
        boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem);

        void onMenuModeChange(MenuBuilder menuBuilder);
    }

    // compiled from: ProGuard
    public interface ItemInvoker {
        boolean invokeItem(MenuItemImpl menuItemImpl);
    }

    static {
        int[] iArr = new int[6];
        iArr[0] = 1;
        iArr[1] = 4;
        iArr[2] = 5;
        iArr[3] = 3;
        iArr[4] = 2;
        sCategoryToOrder = iArr;
    }

    public MenuBuilder(Context context) {
        this.mDefaultShowAsAction = 0;
        this.mPreventDispatchingItemsChanged = false;
        this.mItemsChangedWhileDispatchPrevented = false;
        this.mOptionalIconsVisible = false;
        this.mIsClosing = false;
        this.mTempShortcutItemList = new ArrayList();
        this.mPresenters = new CopyOnWriteArrayList();
        this.mContext = context;
        this.mResources = context.getResources();
        this.mItems = new ArrayList();
        this.mVisibleItems = new ArrayList();
        this.mIsVisibleItemsStale = true;
        this.mActionItems = new ArrayList();
        this.mNonActionItems = new ArrayList();
        this.mIsActionItemsStale = true;
        setShortcutsVisibleInner(true);
    }

    private MenuItem addInternal(int i, int i2, int i3, CharSequence charSequence) {
        int ordering = getOrdering(i3);
        MenuItem menuItemImpl = new MenuItemImpl(this, i, i2, i3, ordering, charSequence, this.mDefaultShowAsAction);
        if (this.mCurrentMenuInfo != null) {
            menuItemImpl.setMenuInfo(this.mCurrentMenuInfo);
        }
        this.mItems.add(findInsertIndex(this.mItems, ordering), menuItemImpl);
        onItemsChanged(true);
        return menuItemImpl;
    }

    private void dispatchPresenterUpdate(boolean z) {
        if (!this.mPresenters.isEmpty()) {
            stopDispatchingItemsChanged();
            Iterator it = this.mPresenters.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.mPresenters.remove(weakReference);
                } else {
                    menuPresenter.updateMenuView(z);
                }
            }
            startDispatchingItemsChanged();
        }
    }

    private void dispatchRestoreInstanceState(Bundle bundle) {
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(PRESENTER_KEY);
        if (sparseParcelableArray != null && !this.mPresenters.isEmpty()) {
            Iterator it = this.mPresenters.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.mPresenters.remove(weakReference);
                } else {
                    int id = menuPresenter.getId();
                    if (id > 0) {
                        Parcelable parcelable = (Parcelable) sparseParcelableArray.get(id);
                        if (parcelable != null) {
                            menuPresenter.onRestoreInstanceState(parcelable);
                        }
                    }
                }
            }
        }
    }

    private void dispatchSaveInstanceState(Bundle bundle) {
        if (!this.mPresenters.isEmpty()) {
            SparseArray sparseArray = new SparseArray();
            Iterator it = this.mPresenters.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.mPresenters.remove(weakReference);
                } else {
                    int id = menuPresenter.getId();
                    if (id > 0) {
                        Parcelable onSaveInstanceState = menuPresenter.onSaveInstanceState();
                        if (onSaveInstanceState != null) {
                            sparseArray.put(id, onSaveInstanceState);
                        }
                    }
                }
            }
            bundle.putSparseParcelableArray(PRESENTER_KEY, sparseArray);
        }
    }

    private boolean dispatchSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (this.mPresenters.isEmpty()) {
            return false;
        }
        Iterator it = this.mPresenters.iterator();
        boolean z = false;
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
            if (menuPresenter == null) {
                this.mPresenters.remove(weakReference);
            } else if (!z) {
                z = menuPresenter.onSubMenuSelected(subMenuBuilder);
            }
        }
        return z;
    }

    private static int findInsertIndex(ArrayList arrayList, int i) {
        int i2 = arrayList.size() - 1;
        while (i2 >= 0) {
            if (((MenuItemImpl) arrayList.get(i2)).getOrdering() <= i) {
                return i2 + 1;
            }
            i2--;
        }
        return 0;
    }

    private static int getOrdering(int i) {
        int i2 = (-65536 & i) >> 16;
        if (i2 >= 0 && i2 < sCategoryToOrder.length) {
            return (sCategoryToOrder[i2] << 16) | (65535 & i);
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    private void removeItemAtInt(int i, boolean z) {
        if (i >= 0 && i < this.mItems.size()) {
            this.mItems.remove(i);
            if (z) {
                onItemsChanged(true);
            }
        }
    }

    private void setHeaderInternal(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = getResources();
        if (view != null) {
            this.mHeaderView = view;
            this.mHeaderTitle = null;
            this.mHeaderIcon = null;
        } else {
            if (i > 0) {
                this.mHeaderTitle = resources.getText(i);
            } else if (charSequence != null) {
                this.mHeaderTitle = charSequence;
            }
            if (i2 > 0) {
                this.mHeaderIcon = resources.getDrawable(i2);
            } else if (drawable != null) {
                this.mHeaderIcon = drawable;
            }
            this.mHeaderView = null;
        }
        onItemsChanged(false);
    }

    private void setShortcutsVisibleInner(boolean z) {
        boolean z2 = true;
        if (!(z && this.mResources.getConfiguration().keyboard != 1 && this.mResources.getBoolean(R.bool.abs__config_showMenuShortcutsWhenKeyboardPresent))) {
            z2 = false;
        }
        this.mShortcutsVisible = z2;
    }

    public MenuItem add(int i) {
        return addInternal(0, 0, 0, this.mResources.getString(i));
    }

    public MenuItem add(int i, int i2, int i3, int i4) {
        return addInternal(i, i2, i3, this.mResources.getString(i4));
    }

    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return addInternal(i, i2, i3, charSequence);
    }

    public MenuItem add(CharSequence charSequence) {
        return addInternal(0, 0, 0, charSequence);
    }

    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int size;
        PackageManager packageManager = this.mContext.getPackageManager();
        List queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        int i5 = 0;
        while (i5 < size) {
            ResolveInfo resolveInfo = (ResolveInfo) queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
            i5++;
        }
        return size;
    }

    public void addMenuPresenter(MenuPresenter menuPresenter) {
        this.mPresenters.add(new WeakReference(menuPresenter));
        menuPresenter.initForMenu(this.mContext, this);
        this.mIsActionItemsStale = true;
    }

    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.mResources.getString(i));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.mResources.getString(i4));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) addInternal(i, i2, i3, charSequence);
        SubMenu subMenuBuilder = new SubMenuBuilder(this.mContext, this, menuItemImpl);
        menuItemImpl.setSubMenu(subMenuBuilder);
        return subMenuBuilder;
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public boolean bindNativeOverflow(android.view.Menu menu, OnMenuItemClickListener onMenuItemClickListener, HashMap hashMap) {
        List nonActionItems = getNonActionItems();
        if (nonActionItems == null || nonActionItems.size() == 0) {
            return false;
        }
        menu.clear();
        Iterator it = nonActionItems.iterator();
        boolean z = false;
        while (it.hasNext()) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) it.next();
            if (menuItemImpl.isVisible()) {
                android.view.MenuItem item;
                if (menuItemImpl.hasSubMenu()) {
                    android.view.SubMenu addSubMenu = menu.addSubMenu(menuItemImpl.getGroupId(), menuItemImpl.getItemId(), menuItemImpl.getOrder(), menuItemImpl.getTitle());
                    Iterator it2 = ((SubMenuBuilder) menuItemImpl.getSubMenu()).getVisibleItems().iterator();
                    while (it2.hasNext()) {
                        MenuItemImpl menuItemImpl2 = (MenuItemImpl) it2.next();
                        android.view.MenuItem add = addSubMenu.add(menuItemImpl2.getGroupId(), menuItemImpl2.getItemId(), menuItemImpl2.getOrder(), menuItemImpl2.getTitle());
                        add.setIcon(menuItemImpl2.getIcon());
                        add.setOnMenuItemClickListener(onMenuItemClickListener);
                        add.setEnabled(menuItemImpl2.isEnabled());
                        add.setIntent(menuItemImpl2.getIntent());
                        add.setNumericShortcut(menuItemImpl2.getNumericShortcut());
                        add.setAlphabeticShortcut(menuItemImpl2.getAlphabeticShortcut());
                        add.setTitleCondensed(menuItemImpl2.getTitleCondensed());
                        add.setCheckable(menuItemImpl2.isCheckable());
                        add.setChecked(menuItemImpl2.isChecked());
                        if (menuItemImpl2.isExclusiveCheckable()) {
                            addSubMenu.setGroupCheckable(menuItemImpl2.getGroupId(), true, true);
                        }
                        hashMap.put(add, menuItemImpl2);
                    }
                    item = addSubMenu.getItem();
                } else {
                    item = menu.add(menuItemImpl.getGroupId(), menuItemImpl.getItemId(), menuItemImpl.getOrder(), menuItemImpl.getTitle());
                }
                item.setIcon(menuItemImpl.getIcon());
                item.setOnMenuItemClickListener(onMenuItemClickListener);
                item.setEnabled(menuItemImpl.isEnabled());
                item.setIntent(menuItemImpl.getIntent());
                item.setNumericShortcut(menuItemImpl.getNumericShortcut());
                item.setAlphabeticShortcut(menuItemImpl.getAlphabeticShortcut());
                item.setTitleCondensed(menuItemImpl.getTitleCondensed());
                item.setCheckable(menuItemImpl.isCheckable());
                item.setChecked(menuItemImpl.isChecked());
                if (menuItemImpl.isExclusiveCheckable()) {
                    menu.setGroupCheckable(menuItemImpl.getGroupId(), true, true);
                }
                hashMap.put(item, menuItemImpl);
                z = true;
            }
        }
        return z;
    }

    public void changeMenuMode() {
        if (this.mCallback != null) {
            this.mCallback.onMenuModeChange(this);
        }
    }

    public void clear() {
        if (this.mExpandedItem != null) {
            collapseItemActionView(this.mExpandedItem);
        }
        this.mItems.clear();
        onItemsChanged(true);
    }

    public void clearAll() {
        this.mPreventDispatchingItemsChanged = true;
        clear();
        clearHeader();
        this.mPreventDispatchingItemsChanged = false;
        this.mItemsChangedWhileDispatchPrevented = false;
        onItemsChanged(true);
    }

    public void clearHeader() {
        this.mHeaderIcon = null;
        this.mHeaderTitle = null;
        this.mHeaderView = null;
        onItemsChanged(false);
    }

    public void close() {
        close(true);
    }

    final void close(boolean z) {
        if (!this.mIsClosing) {
            this.mIsClosing = true;
            Iterator it = this.mPresenters.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.mPresenters.remove(weakReference);
                } else {
                    menuPresenter.onCloseMenu(this, z);
                }
            }
            this.mIsClosing = false;
        }
    }

    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        boolean z = false;
        if (!this.mPresenters.isEmpty() && this.mExpandedItem == menuItemImpl) {
            stopDispatchingItemsChanged();
            Iterator it = this.mPresenters.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter != null) {
                    z = menuPresenter.collapseItemActionView(this, menuItemImpl);
                    if (z) {
                        break;
                    }
                    z2 = z;
                } else {
                    this.mPresenters.remove(weakReference);
                }
            }
            z = z2;
            startDispatchingItemsChanged();
            if (z) {
                this.mExpandedItem = null;
            }
        }
        return z;
    }

    boolean dispatchMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.mCallback != null && this.mCallback.onMenuItemSelected(menuBuilder, menuItem);
    }

    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        boolean z = false;
        if (!this.mPresenters.isEmpty()) {
            stopDispatchingItemsChanged();
            Iterator it = this.mPresenters.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter != null) {
                    z = menuPresenter.expandItemActionView(this, menuItemImpl);
                    if (z) {
                        break;
                    }
                    z2 = z;
                } else {
                    this.mPresenters.remove(weakReference);
                }
            }
            z = z2;
            startDispatchingItemsChanged();
            if (z) {
                this.mExpandedItem = menuItemImpl;
            }
        }
        return z;
    }

    public int findGroupIndex(int i) {
        return findGroupIndex(i, 0);
    }

    public int findGroupIndex(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = i2;
        while (i3 < size) {
            if (((MenuItemImpl) this.mItems.get(i3)).getGroupId() == i) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public MenuItem findItem(int i) {
        int size = size();
        int i2 = 0;
        while (i2 < size) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.mItems.get(i2);
            if (menuItemImpl.getItemId() == i) {
                return menuItemImpl;
            }
            if (menuItemImpl.hasSubMenu()) {
                MenuItem findItem = menuItemImpl.getSubMenu().findItem(i);
                if (findItem != null) {
                    return findItem;
                }
            }
            i2++;
        }
        return null;
    }

    public int findItemIndex(int i) {
        int size = size();
        int i2 = 0;
        while (i2 < size) {
            if (((MenuItemImpl) this.mItems.get(i2)).getItemId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    MenuItemImpl findItemWithShortcutForKey(int i, KeyEvent keyEvent) {
        ArrayList arrayList = this.mTempShortcutItemList;
        arrayList.clear();
        findItemsWithShortcutForKey(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyData keyData = new KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (MenuItemImpl) arrayList.get(0);
        }
        boolean isQwertyMode = isQwertyMode();
        int i2 = 0;
        while (i2 < size) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i2);
            char alphabeticShortcut = isQwertyMode ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
            if (alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) {
                return menuItemImpl;
            }
            if (alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) {
                return menuItemImpl;
            }
            if (isQwertyMode && alphabeticShortcut == '\b' && i == 67) {
                return menuItemImpl;
            }
            i2++;
        }
        return null;
    }

    void findItemsWithShortcutForKey(List list, int i, KeyEvent keyEvent) {
        boolean isQwertyMode = isQwertyMode();
        int metaState = keyEvent.getMetaState();
        KeyData keyData = new KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.mItems.size();
            int i2 = 0;
            while (i2 < size) {
                char alphabeticShortcut;
                MenuItemImpl menuItemImpl = (MenuItemImpl) this.mItems.get(i2);
                if (menuItemImpl.hasSubMenu()) {
                    ((MenuBuilder) menuItemImpl.getSubMenu()).findItemsWithShortcutForKey(list, i, keyEvent);
                }
                alphabeticShortcut = isQwertyMode ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
                if ((metaState & 5) == 0 && alphabeticShortcut != '\u0000') {
                    if ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (isQwertyMode && alphabeticShortcut == '\b' && i == 67)) && menuItemImpl.isEnabled()) {
                        list.add(menuItemImpl);
                    }
                }
                i2++;
            }
        }
    }

    public void flagActionItems() {
        if (this.mIsActionItemsStale) {
            Iterator it = this.mPresenters.iterator();
            int i = 0;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                MenuPresenter menuPresenter = (MenuPresenter) weakReference.get();
                if (menuPresenter == null) {
                    this.mPresenters.remove(weakReference);
                } else {
                    i = menuPresenter.flagActionItems() | i;
                }
            }
            if (i != 0) {
                this.mActionItems.clear();
                this.mNonActionItems.clear();
                ArrayList visibleItems = getVisibleItems();
                int size = visibleItems.size();
                int i2 = 0;
                while (i2 < size) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) visibleItems.get(i2);
                    if (menuItemImpl.isActionButton()) {
                        this.mActionItems.add(menuItemImpl);
                    } else {
                        this.mNonActionItems.add(menuItemImpl);
                    }
                    i2++;
                }
            } else {
                this.mActionItems.clear();
                this.mNonActionItems.clear();
                this.mNonActionItems.addAll(getVisibleItems());
            }
            this.mIsActionItemsStale = false;
        }
    }

    ArrayList getActionItems() {
        flagActionItems();
        return this.mActionItems;
    }

    protected String getActionViewStatesKey() {
        return ACTION_VIEW_STATES_KEY;
    }

    public Context getContext() {
        return this.mContext;
    }

    public MenuItemImpl getExpandedItem() {
        return this.mExpandedItem;
    }

    public Drawable getHeaderIcon() {
        return this.mHeaderIcon;
    }

    public CharSequence getHeaderTitle() {
        return this.mHeaderTitle;
    }

    public View getHeaderView() {
        return this.mHeaderView;
    }

    public MenuItem getItem(int i) {
        return (MenuItem) this.mItems.get(i);
    }

    ArrayList getNonActionItems() {
        flagActionItems();
        return this.mNonActionItems;
    }

    boolean getOptionalIconsVisible() {
        return this.mOptionalIconsVisible;
    }

    Resources getResources() {
        return this.mResources;
    }

    public MenuBuilder getRootMenu() {
        return this;
    }

    ArrayList getVisibleItems() {
        if (!this.mIsVisibleItemsStale) {
            return this.mVisibleItems;
        }
        this.mVisibleItems.clear();
        int size = this.mItems.size();
        int i = 0;
        while (i < size) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.mItems.get(i);
            if (menuItemImpl.isVisible()) {
                this.mVisibleItems.add(menuItemImpl);
            }
            i++;
        }
        this.mIsVisibleItemsStale = false;
        this.mIsActionItemsStale = true;
        return this.mVisibleItems;
    }

    public boolean hasVisibleItems() {
        int size = size();
        int i = 0;
        while (i < size) {
            if (((MenuItemImpl) this.mItems.get(i)).isVisible()) {
                return true;
            }
            i++;
        }
        return false;
    }

    boolean isQwertyMode() {
        return this.mQwertyMode;
    }

    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return findItemWithShortcutForKey(i, keyEvent) != null;
    }

    public boolean isShortcutsVisible() {
        return this.mShortcutsVisible;
    }

    void onItemActionRequestChanged(MenuItemImpl menuItemImpl) {
        this.mIsActionItemsStale = true;
        onItemsChanged(true);
    }

    void onItemVisibleChanged(MenuItemImpl menuItemImpl) {
        this.mIsVisibleItemsStale = true;
        onItemsChanged(true);
    }

    void onItemsChanged(boolean z) {
        if (this.mPreventDispatchingItemsChanged) {
            this.mItemsChangedWhileDispatchPrevented = true;
        } else {
            if (z) {
                this.mIsVisibleItemsStale = true;
                this.mIsActionItemsStale = true;
            }
            dispatchPresenterUpdate(z);
        }
    }

    public boolean performIdentifierAction(int i, int i2) {
        return performItemAction(findItem(i), i2);
    }

    public boolean performItemAction(MenuItem menuItem, int i) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
        if (menuItemImpl == null || !menuItemImpl.isEnabled()) {
            return false;
        }
        boolean invoke = menuItemImpl.invoke();
        boolean expandActionView;
        if (menuItemImpl.hasCollapsibleActionView()) {
            expandActionView = menuItemImpl.expandActionView() | invoke;
            if (!expandActionView) {
                return expandActionView;
            }
            close(true);
            return expandActionView;
        } else if (menuItem.hasSubMenu()) {
            close(false);
            SubMenuBuilder subMenuBuilder = (SubMenuBuilder) menuItem.getSubMenu();
            ActionProvider actionProvider = menuItem.getActionProvider();
            if (actionProvider != null && actionProvider.hasSubMenu()) {
                actionProvider.onPrepareSubMenu(subMenuBuilder);
            }
            expandActionView = dispatchSubMenuSelected(subMenuBuilder) | invoke;
            if (expandActionView) {
                return expandActionView;
            }
            close(true);
            return expandActionView;
        } else {
            if ((i & 1) == 0) {
                close(true);
            }
            return invoke;
        }
    }

    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        MenuItem findItemWithShortcutForKey = findItemWithShortcutForKey(i, keyEvent);
        boolean z = false;
        if (findItemWithShortcutForKey != null) {
            z = performItemAction(findItemWithShortcutForKey, i2);
        }
        if ((i2 & 2) != 0) {
            close(true);
        }
        return z;
    }

    public void removeGroup(int i) {
        int findGroupIndex = findGroupIndex(i);
        if (findGroupIndex >= 0) {
            int size = this.mItems.size() - findGroupIndex;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 < size && ((MenuItemImpl) this.mItems.get(findGroupIndex)).getGroupId() == i) {
                    removeItemAtInt(findGroupIndex, false);
                    i2 = i3;
                }
                onItemsChanged(true);
                return;
            }
        }
    }

    public void removeItem(int i) {
        removeItemAtInt(findItemIndex(i), true);
    }

    public void removeItemAt(int i) {
        removeItemAtInt(i, true);
    }

    public void removeMenuPresenter(MenuPresenter menuPresenter) {
        Iterator it = this.mPresenters.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            MenuPresenter menuPresenter2 = (MenuPresenter) weakReference.get();
            if (menuPresenter2 == null || menuPresenter2 == menuPresenter) {
                this.mPresenters.remove(weakReference);
            }
        }
    }

    public void restoreActionViewStates(Bundle bundle) {
        if (bundle != null) {
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(getActionViewStatesKey());
            if (VERSION.SDK_INT >= 11 || sparseParcelableArray != null) {
                MenuItem item;
                int size = size();
                int i = 0;
                while (i < size) {
                    item = getItem(i);
                    View actionView = item.getActionView();
                    if (!(actionView == null || actionView.getId() == -1)) {
                        actionView.restoreHierarchyState(sparseParcelableArray);
                    }
                    if (item.hasSubMenu()) {
                        ((SubMenuBuilder) item.getSubMenu()).restoreActionViewStates(bundle);
                    }
                    i++;
                }
                int i2 = bundle.getInt(EXPANDED_ACTION_VIEW_ID);
                if (i2 > 0) {
                    item = findItem(i2);
                    if (item != null) {
                        item.expandActionView();
                    }
                }
            }
        }
    }

    public void restorePresenterStates(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveActionViewStates(Bundle bundle) {
        int size = size();
        int i = 0;
        SparseArray sparseArray = null;
        while (i < size) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (!(actionView == null || actionView.getId() == -1)) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt(EXPANDED_ACTION_VIEW_ID, item.getItemId());
                }
            }
            SparseArray sparseArray2 = sparseArray;
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).saveActionViewStates(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(getActionViewStatesKey(), sparseArray);
        }
    }

    public void savePresenterStates(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public void setCurrentMenuInfo(ContextMenuInfo contextMenuInfo) {
        this.mCurrentMenuInfo = contextMenuInfo;
    }

    public MenuBuilder setDefaultShowAsAction(int i) {
        this.mDefaultShowAsAction = i;
        return this;
    }

    void setExclusiveItemChecked(MenuItemImpl menuItemImpl) {
        int groupId = menuItemImpl.getGroupId();
        int size = this.mItems.size();
        int i = 0;
        while (i < size) {
            MenuItemImpl menuItemImpl2 = (MenuItemImpl) this.mItems.get(i);
            if (menuItemImpl2.getGroupId() == groupId && menuItemImpl2.isExclusiveCheckable() && menuItemImpl2.isCheckable()) {
                menuItemImpl2.setCheckedInt(menuItemImpl2 == menuItemImpl);
            }
            i++;
        }
    }

    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.mItems.size();
        int i2 = 0;
        while (i2 < size) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.mItems.get(i2);
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.setExclusiveCheckable(z2);
                menuItemImpl.setCheckable(z);
            }
            i2++;
        }
    }

    public void setGroupEnabled(int i, boolean z) {
        int size = this.mItems.size();
        int i2 = 0;
        while (i2 < size) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.mItems.get(i2);
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.setEnabled(z);
            }
            i2++;
        }
    }

    public void setGroupVisible(int i, boolean z) {
        int size = this.mItems.size();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            boolean z3;
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.mItems.get(i2);
            if (menuItemImpl.getGroupId() == i && menuItemImpl.setVisibleInt(z)) {
                z3 = true;
            } else {
                int i3 = i;
            }
            i2++;
            z2 = z3;
        }
        if (i != 0) {
            onItemsChanged(true);
        }
    }

    protected MenuBuilder setHeaderIconInt(int i) {
        setHeaderInternal(0, null, i, null, null);
        return this;
    }

    protected MenuBuilder setHeaderIconInt(Drawable drawable) {
        setHeaderInternal(0, null, 0, drawable, null);
        return this;
    }

    protected MenuBuilder setHeaderTitleInt(int i) {
        setHeaderInternal(i, null, 0, null, null);
        return this;
    }

    protected MenuBuilder setHeaderTitleInt(CharSequence charSequence) {
        setHeaderInternal(0, charSequence, 0, null, null);
        return this;
    }

    protected MenuBuilder setHeaderViewInt(View view) {
        setHeaderInternal(0, null, 0, null, view);
        return this;
    }

    void setOptionalIconsVisible(boolean z) {
        this.mOptionalIconsVisible = z;
    }

    public void setQwertyMode(boolean z) {
        this.mQwertyMode = z;
        onItemsChanged(false);
    }

    public void setShortcutsVisible(boolean z) {
        if (this.mShortcutsVisible != z) {
            setShortcutsVisibleInner(z);
            onItemsChanged(false);
        }
    }

    public int size() {
        return this.mItems.size();
    }

    public void startDispatchingItemsChanged() {
        this.mPreventDispatchingItemsChanged = false;
        if (this.mItemsChangedWhileDispatchPrevented) {
            this.mItemsChangedWhileDispatchPrevented = false;
            onItemsChanged(true);
        }
    }

    public void stopDispatchingItemsChanged() {
        if (!this.mPreventDispatchingItemsChanged) {
            this.mPreventDispatchingItemsChanged = true;
            this.mItemsChangedWhileDispatchPrevented = false;
        }
    }
}