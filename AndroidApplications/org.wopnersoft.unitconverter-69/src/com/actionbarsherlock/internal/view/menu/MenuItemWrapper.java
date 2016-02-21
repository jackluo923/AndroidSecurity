package com.actionbarsherlock.internal.view.menu;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import com.actionbarsherlock.internal.view.ActionProviderWrapper;
import com.actionbarsherlock.internal.widget.CollapsibleActionViewWrapper;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.CollapsibleActionView;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnActionExpandListener;
import com.actionbarsherlock.view.SubMenu;

// compiled from: ProGuard
public class MenuItemWrapper implements OnMenuItemClickListener, MenuItem {
    private OnActionExpandListener mActionExpandListener;
    private MenuItem.OnMenuItemClickListener mMenuItemClickListener;
    private android.view.MenuItem.OnActionExpandListener mNativeActionExpandListener;
    private final android.view.MenuItem mNativeItem;
    private SubMenu mSubMenu;

    public MenuItemWrapper(android.view.MenuItem menuItem) {
        this.mSubMenu = null;
        this.mMenuItemClickListener = null;
        this.mActionExpandListener = null;
        this.mNativeActionExpandListener = null;
        if (menuItem == null) {
            throw new IllegalStateException("Wrapped menu item cannot be null.");
        }
        this.mNativeItem = menuItem;
    }

    public boolean collapseActionView() {
        return this.mNativeItem.collapseActionView();
    }

    public boolean expandActionView() {
        return this.mNativeItem.expandActionView();
    }

    public ActionProvider getActionProvider() {
        android.view.ActionProvider actionProvider = this.mNativeItem.getActionProvider();
        return (actionProvider == null || !(actionProvider instanceof ActionProviderWrapper)) ? null : ((ActionProviderWrapper) actionProvider).unwrap();
    }

    public View getActionView() {
        View actionView = this.mNativeItem.getActionView();
        return actionView instanceof CollapsibleActionViewWrapper ? ((CollapsibleActionViewWrapper) actionView).unwrap() : actionView;
    }

    public char getAlphabeticShortcut() {
        return this.mNativeItem.getAlphabeticShortcut();
    }

    public int getGroupId() {
        return this.mNativeItem.getGroupId();
    }

    public Drawable getIcon() {
        return this.mNativeItem.getIcon();
    }

    public Intent getIntent() {
        return this.mNativeItem.getIntent();
    }

    public int getItemId() {
        return this.mNativeItem.getItemId();
    }

    public ContextMenuInfo getMenuInfo() {
        return this.mNativeItem.getMenuInfo();
    }

    public char getNumericShortcut() {
        return this.mNativeItem.getNumericShortcut();
    }

    public int getOrder() {
        return this.mNativeItem.getOrder();
    }

    public SubMenu getSubMenu() {
        if (hasSubMenu() && this.mSubMenu == null) {
            this.mSubMenu = new SubMenuWrapper(this.mNativeItem.getSubMenu());
        }
        return this.mSubMenu;
    }

    public CharSequence getTitle() {
        return this.mNativeItem.getTitle();
    }

    public CharSequence getTitleCondensed() {
        return this.mNativeItem.getTitleCondensed();
    }

    public boolean hasSubMenu() {
        return this.mNativeItem.hasSubMenu();
    }

    public boolean isActionViewExpanded() {
        return this.mNativeItem.isActionViewExpanded();
    }

    public boolean isCheckable() {
        return this.mNativeItem.isCheckable();
    }

    public boolean isChecked() {
        return this.mNativeItem.isChecked();
    }

    public boolean isEnabled() {
        return this.mNativeItem.isEnabled();
    }

    public boolean isVisible() {
        return this.mNativeItem.isVisible();
    }

    public boolean onMenuItemClick(android.view.MenuItem menuItem) {
        return this.mMenuItemClickListener != null ? this.mMenuItemClickListener.onMenuItemClick(this) : false;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        this.mNativeItem.setActionProvider(new ActionProviderWrapper(actionProvider));
        return this;
    }

    public MenuItem setActionView(int i) {
        this.mNativeItem.setActionView(i);
        if (i != 0) {
            View actionView = this.mNativeItem.getActionView();
            if (actionView instanceof CollapsibleActionView) {
                this.mNativeItem.setActionView(new CollapsibleActionViewWrapper(actionView));
            }
        }
        return this;
    }

    public MenuItem setActionView(View view) {
        if (view != null && view instanceof CollapsibleActionView) {
            view = new CollapsibleActionViewWrapper(view);
        }
        this.mNativeItem.setActionView(view);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c) {
        this.mNativeItem.setAlphabeticShortcut(c);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.mNativeItem.setCheckable(z);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.mNativeItem.setChecked(z);
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.mNativeItem.setEnabled(z);
        return this;
    }

    public MenuItem setIcon(int i) {
        this.mNativeItem.setIcon(i);
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.mNativeItem.setIcon(drawable);
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.mNativeItem.setIntent(intent);
        return this;
    }

    public MenuItem setNumericShortcut(char c) {
        this.mNativeItem.setNumericShortcut(c);
        return this;
    }

    public MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        this.mActionExpandListener = onActionExpandListener;
        if (this.mNativeActionExpandListener == null) {
            this.mNativeActionExpandListener = new android.view.MenuItem.OnActionExpandListener() {
                public boolean onMenuItemActionCollapse(android.view.MenuItem menuItem) {
                    return MenuItemWrapper.this.mActionExpandListener != null ? MenuItemWrapper.this.mActionExpandListener.onMenuItemActionCollapse(MenuItemWrapper.this) : false;
                }

                public boolean onMenuItemActionExpand(android.view.MenuItem menuItem) {
                    return MenuItemWrapper.this.mActionExpandListener != null ? MenuItemWrapper.this.mActionExpandListener.onMenuItemActionExpand(MenuItemWrapper.this) : false;
                }
            };
            this.mNativeItem.setOnActionExpandListener(this.mNativeActionExpandListener);
        }
        return this;
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.mMenuItemClickListener = onMenuItemClickListener;
        this.mNativeItem.setOnMenuItemClickListener(this);
        return this;
    }

    public MenuItem setShortcut(char c, char c2) {
        this.mNativeItem.setShortcut(c, c2);
        return this;
    }

    public void setShowAsAction(int i) {
        this.mNativeItem.setShowAsAction(i);
    }

    public MenuItem setShowAsActionFlags(int i) {
        this.mNativeItem.setShowAsActionFlags(i);
        return this;
    }

    public MenuItem setTitle(int i) {
        this.mNativeItem.setTitle(i);
        return this;
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.mNativeItem.setTitle(charSequence);
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mNativeItem.setTitleCondensed(charSequence);
        return this;
    }

    public MenuItem setVisible(boolean z) {
        this.mNativeItem.setVisible(z);
        return this;
    }
}