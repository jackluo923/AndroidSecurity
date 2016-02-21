package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.SubMenu;

// compiled from: ProGuard
public class SubMenuBuilder extends MenuBuilder implements SubMenu {
    private MenuItemImpl mItem;
    private MenuBuilder mParentMenu;

    public SubMenuBuilder(Context context, MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        super(context);
        this.mParentMenu = menuBuilder;
        this.mItem = menuItemImpl;
    }

    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        return this.mParentMenu.collapseItemActionView(menuItemImpl);
    }

    boolean dispatchMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return super.dispatchMenuItemSelected(menuBuilder, menuItem) || this.mParentMenu.dispatchMenuItemSelected(menuBuilder, menuItem);
    }

    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        return this.mParentMenu.expandItemActionView(menuItemImpl);
    }

    public String getActionViewStatesKey() {
        int itemId = this.mItem != null ? this.mItem.getItemId() : 0;
        return itemId == 0 ? null : new StringBuilder(String.valueOf(super.getActionViewStatesKey())).append(":").append(itemId).toString();
    }

    public MenuItem getItem() {
        return this.mItem;
    }

    public Menu getParentMenu() {
        return this.mParentMenu;
    }

    public MenuBuilder getRootMenu() {
        return this.mParentMenu;
    }

    public boolean isQwertyMode() {
        return this.mParentMenu.isQwertyMode();
    }

    public boolean isShortcutsVisible() {
        return this.mParentMenu.isShortcutsVisible();
    }

    public void setCallback(Callback callback) {
        this.mParentMenu.setCallback(callback);
    }

    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.setHeaderIconInt(i);
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.setHeaderIconInt(drawable);
    }

    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.setHeaderTitleInt(i);
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.setHeaderTitleInt(charSequence);
    }

    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.setHeaderViewInt(view);
    }

    public SubMenu setIcon(int i) {
        this.mItem.setIcon(i);
        return this;
    }

    public SubMenu setIcon(Drawable drawable) {
        this.mItem.setIcon(drawable);
        return this;
    }

    public void setQwertyMode(boolean z) {
        this.mParentMenu.setQwertyMode(z);
    }

    public void setShortcutsVisible(boolean z) {
        this.mParentMenu.setShortcutsVisible(z);
    }
}