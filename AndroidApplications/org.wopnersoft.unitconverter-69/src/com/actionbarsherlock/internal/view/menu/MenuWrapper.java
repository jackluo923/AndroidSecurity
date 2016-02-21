package com.actionbarsherlock.internal.view.menu;

import android.content.ComponentName;
import android.content.Intent;
import android.view.KeyEvent;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.SubMenu;
import java.util.Map;
import java.util.WeakHashMap;

// compiled from: ProGuard
public class MenuWrapper implements Menu {
    private final WeakHashMap mNativeMap;
    private final android.view.Menu mNativeMenu;

    public MenuWrapper(android.view.Menu menu) {
        this.mNativeMap = new WeakHashMap();
        this.mNativeMenu = menu;
    }

    private MenuItem addInternal(android.view.MenuItem menuItem) {
        MenuItem menuItemWrapper = new MenuItemWrapper(menuItem);
        this.mNativeMap.put(menuItem, menuItemWrapper);
        return menuItemWrapper;
    }

    private SubMenu addInternal(android.view.SubMenu subMenu) {
        SubMenu subMenuWrapper = new SubMenuWrapper(subMenu);
        this.mNativeMap.put(subMenu.getItem(), subMenuWrapper.getItem());
        return subMenuWrapper;
    }

    public MenuItem add(int i) {
        return addInternal(this.mNativeMenu.add(i));
    }

    public MenuItem add(int i, int i2, int i3, int i4) {
        return addInternal(this.mNativeMenu.add(i, i2, i3, i4));
    }

    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return addInternal(this.mNativeMenu.add(i, i2, i3, charSequence));
    }

    public MenuItem add(CharSequence charSequence) {
        return addInternal(this.mNativeMenu.add(charSequence));
    }

    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        if (menuItemArr == null) {
            return this.mNativeMenu.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, null);
        }
        android.view.MenuItem[] menuItemArr2 = new android.view.MenuItem[menuItemArr.length];
        int addIntentOptions = this.mNativeMenu.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        int i5 = 0;
        int length = menuItemArr.length;
        while (i5 < length) {
            menuItemArr[i5] = new MenuItemWrapper(menuItemArr2[i5]);
            i5++;
        }
        return addIntentOptions;
    }

    public SubMenu addSubMenu(int i) {
        return addInternal(this.mNativeMenu.addSubMenu(i));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addInternal(this.mNativeMenu.addSubMenu(i, i2, i3, i4));
    }

    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return addInternal(this.mNativeMenu.addSubMenu(i, i2, i3, charSequence));
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return addInternal(this.mNativeMenu.addSubMenu(charSequence));
    }

    public void clear() {
        this.mNativeMap.clear();
        this.mNativeMenu.clear();
    }

    public void close() {
        this.mNativeMenu.close();
    }

    public MenuItem findItem(int i) {
        return findItem(this.mNativeMenu.findItem(i));
    }

    public MenuItem findItem(android.view.MenuItem menuItem) {
        if (menuItem == null) {
            return null;
        }
        MenuItem menuItem2 = (MenuItem) this.mNativeMap.get(menuItem);
        return menuItem2 == null ? addInternal(menuItem) : menuItem2;
    }

    public MenuItem getItem(int i) {
        return findItem(this.mNativeMenu.getItem(i));
    }

    public boolean hasVisibleItems() {
        return this.mNativeMenu.hasVisibleItems();
    }

    public void invalidate() {
        if (!this.mNativeMap.isEmpty()) {
            Map weakHashMap = new WeakHashMap(this.mNativeMap.size());
            int i = 0;
            while (i < this.mNativeMenu.size()) {
                android.view.MenuItem item = this.mNativeMenu.getItem(i);
                weakHashMap.put(item, (MenuItem) this.mNativeMap.get(item));
                i++;
            }
            this.mNativeMap.clear();
            this.mNativeMap.putAll(weakHashMap);
        }
    }

    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.mNativeMenu.isShortcutKey(i, keyEvent);
    }

    public boolean performIdentifierAction(int i, int i2) {
        return this.mNativeMenu.performIdentifierAction(i, i2);
    }

    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.mNativeMenu.performShortcut(i, keyEvent, i2);
    }

    public void removeGroup(int i) {
        int i2 = 0;
        while (i2 < this.mNativeMenu.size()) {
            android.view.MenuItem item = this.mNativeMenu.getItem(i2);
            if (item.getGroupId() == i) {
                this.mNativeMap.remove(item);
            }
            i2++;
        }
        this.mNativeMenu.removeGroup(i);
    }

    public void removeItem(int i) {
        this.mNativeMap.remove(this.mNativeMenu.findItem(i));
        this.mNativeMenu.removeItem(i);
    }

    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.mNativeMenu.setGroupCheckable(i, z, z2);
    }

    public void setGroupEnabled(int i, boolean z) {
        this.mNativeMenu.setGroupEnabled(i, z);
    }

    public void setGroupVisible(int i, boolean z) {
        this.mNativeMenu.setGroupVisible(i, z);
    }

    public void setQwertyMode(boolean z) {
        this.mNativeMenu.setQwertyMode(z);
    }

    public int size() {
        return this.mNativeMenu.size();
    }

    public android.view.Menu unwrap() {
        return this.mNativeMenu;
    }
}