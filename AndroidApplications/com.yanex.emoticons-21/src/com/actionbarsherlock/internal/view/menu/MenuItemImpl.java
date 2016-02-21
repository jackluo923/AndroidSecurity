package com.actionbarsherlock.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;
import com.actionbarsherlock.internal.view.menu.MenuView.ItemView;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnActionExpandListener;
import com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener;
import com.actionbarsherlock.view.SubMenu;

public final class MenuItemImpl implements MenuItem {
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
    private OnMenuItemClickListener mClickListener;
    private int mFlags;
    private final int mGroup;
    private Drawable mIconDrawable;
    private int mIconResId;
    private final int mId;
    private Intent mIntent;
    private boolean mIsActionViewExpanded;
    private Runnable mItemCallback;
    private MenuBuilder mMenu;
    private ContextMenuInfo mMenuInfo;
    private OnActionExpandListener mOnActionExpandListener;
    private final int mOrdering;
    private char mShortcutAlphabeticChar;
    private char mShortcutNumericChar;
    private int mShowAsAction;
    private SubMenuBuilder mSubMenu;
    private CharSequence mTitle;
    private CharSequence mTitleCondensed;

    MenuItemImpl(MenuBuilder menuBuilder, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.mIconResId = 0;
        this.mFlags = 16;
        this.mShowAsAction = 0;
        this.mIsActionViewExpanded = false;
        this.mMenu = menuBuilder;
        this.mId = i2;
        this.mGroup = i;
        this.mCategoryOrder = i3;
        this.mOrdering = i4;
        this.mTitle = charSequence;
        this.mShowAsAction = i5;
    }

    public final void actionFormatChanged() {
        this.mMenu.onItemActionRequestChanged(this);
    }

    public final boolean collapseActionView() {
        if ((this.mShowAsAction & 8) == 0) {
            return false;
        }
        if (this.mActionView == null) {
            return true;
        }
        return (this.mOnActionExpandListener == null || this.mOnActionExpandListener.onMenuItemActionCollapse(this)) ? this.mMenu.collapseItemActionView(this) : false;
    }

    public final boolean expandActionView() {
        if ((this.mShowAsAction & 8) == 0 || this.mActionView == null) {
            return false;
        }
        return (this.mOnActionExpandListener == null || this.mOnActionExpandListener.onMenuItemActionExpand(this)) ? this.mMenu.expandItemActionView(this) : false;
    }

    public final ActionProvider getActionProvider() {
        return this.mActionProvider;
    }

    public final View getActionView() {
        if (this.mActionView != null) {
            return this.mActionView;
        }
        if (this.mActionProvider == null) {
            return null;
        }
        this.mActionView = this.mActionProvider.onCreateActionView();
        return this.mActionView;
    }

    public final char getAlphabeticShortcut() {
        return this.mShortcutAlphabeticChar;
    }

    final Runnable getCallback() {
        return this.mItemCallback;
    }

    public final int getGroupId() {
        return this.mGroup;
    }

    public final Drawable getIcon() {
        if (this.mIconDrawable != null) {
            return this.mIconDrawable;
        }
        return this.mIconResId != 0 ? this.mMenu.getResources().getDrawable(this.mIconResId) : null;
    }

    public final Intent getIntent() {
        return this.mIntent;
    }

    @CapturedViewProperty
    public final int getItemId() {
        return this.mId;
    }

    public final ContextMenuInfo getMenuInfo() {
        return this.mMenuInfo;
    }

    public final char getNumericShortcut() {
        return this.mShortcutNumericChar;
    }

    public final int getOrder() {
        return this.mCategoryOrder;
    }

    public final int getOrdering() {
        return this.mOrdering;
    }

    final char getShortcut() {
        return this.mMenu.isQwertyMode() ? this.mShortcutAlphabeticChar : this.mShortcutNumericChar;
    }

    final String getShortcutLabel() {
        char shortcut = getShortcut();
        if (shortcut == '\u0000') {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder(sPrependShortcutLabel);
        switch (shortcut) {
            case HIDDEN:
                stringBuilder.append(sDeleteShortcutLabel);
                break;
            case '\n':
                stringBuilder.append(sEnterShortcutLabel);
                break;
            case IS_ACTION:
                stringBuilder.append(sSpaceShortcutLabel);
                break;
            default:
                stringBuilder.append(shortcut);
                break;
        }
        return stringBuilder.toString();
    }

    public final SubMenu getSubMenu() {
        return this.mSubMenu;
    }

    @CapturedViewProperty
    public final CharSequence getTitle() {
        return this.mTitle;
    }

    public final CharSequence getTitleCondensed() {
        return this.mTitleCondensed != null ? this.mTitleCondensed : this.mTitle;
    }

    final CharSequence getTitleForItemView(ItemView itemView) {
        return (itemView == null || !itemView.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    public final boolean hasCollapsibleActionView() {
        return (this.mShowAsAction & 8) != 0 && this.mActionView != null;
    }

    public final boolean hasSubMenu() {
        return this.mSubMenu != null;
    }

    public final boolean invoke() {
        if ((this.mClickListener != null && this.mClickListener.onMenuItemClick(this)) || this.mMenu.dispatchMenuItemSelected(this.mMenu.getRootMenu(), this)) {
            return true;
        }
        if (this.mItemCallback != null) {
            this.mItemCallback.run();
            return true;
        } else {
            if (this.mIntent != null) {
                try {
                    this.mMenu.getContext().startActivity(this.mIntent);
                    return true;
                } catch (ActivityNotFoundException e) {
                    Log.e(TAG, "Can't find activity to handle intent; ignoring", e);
                }
            }
            return this.mActionProvider != null && this.mActionProvider.onPerformDefaultAction();
        }
    }

    public final boolean isActionButton() {
        return (this.mFlags & 32) == 32;
    }

    public final boolean isActionViewExpanded() {
        return this.mIsActionViewExpanded;
    }

    public final boolean isCheckable() {
        return (this.mFlags & 1) == 1;
    }

    public final boolean isChecked() {
        return (this.mFlags & 2) == 2;
    }

    public final boolean isEnabled() {
        return (this.mFlags & 16) != 0;
    }

    public final boolean isExclusiveCheckable() {
        return (this.mFlags & 4) != 0;
    }

    public final boolean isVisible() {
        return (this.mFlags & 8) == 0;
    }

    public final boolean requestsActionButton() {
        return (this.mShowAsAction & 1) == 1;
    }

    public final boolean requiresActionButton() {
        return (this.mShowAsAction & 2) == 2;
    }

    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        this.mActionView = null;
        this.mActionProvider = actionProvider;
        this.mMenu.onItemsChanged(true);
        return this;
    }

    public final MenuItem setActionView(int i) {
        Context context = this.mMenu.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, new LinearLayout(context), false));
        return this;
    }

    public final MenuItem setActionView(View view) {
        this.mActionView = view;
        this.mActionProvider = null;
        if (view != null && view.getId() == -1 && this.mId > 0) {
            view.setId(this.mId);
        }
        this.mMenu.onItemActionRequestChanged(this);
        return this;
    }

    public final void setActionViewExpanded(boolean z) {
        this.mIsActionViewExpanded = z;
        this.mMenu.onItemsChanged(false);
    }

    public final MenuItem setAlphabeticShortcut(char c) {
        if (this.mShortcutAlphabeticChar != c) {
            this.mShortcutAlphabeticChar = Character.toLowerCase(c);
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    public final MenuItem setCallback(Runnable runnable) {
        this.mItemCallback = runnable;
        return this;
    }

    public final MenuItem setCheckable(boolean z) {
        int i = this.mFlags;
        this.mFlags = (z ? CHECKABLE : 0) | (this.mFlags & -2);
        if (i != this.mFlags) {
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    public final MenuItem setChecked(boolean z) {
        if ((this.mFlags & 4) != 0) {
            this.mMenu.setExclusiveItemChecked(this);
        } else {
            setCheckedInt(z);
        }
        return this;
    }

    final void setCheckedInt(boolean z) {
        int i = this.mFlags;
        this.mFlags = (z ? CHECKED : 0) | (this.mFlags & -3);
        if (i != this.mFlags) {
            this.mMenu.onItemsChanged(false);
        }
    }

    public final MenuItem setEnabled(boolean z) {
        if (z) {
            this.mFlags |= 16;
        } else {
            this.mFlags &= -17;
        }
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public final void setExclusiveCheckable(boolean z) {
        this.mFlags = (z ? EXCLUSIVE : NO_ICON) | (this.mFlags & -5);
    }

    public final MenuItem setIcon(int i) {
        this.mIconDrawable = null;
        this.mIconResId = i;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public final MenuItem setIcon(Drawable drawable) {
        this.mIconResId = 0;
        this.mIconDrawable = drawable;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public final MenuItem setIntent(Intent intent) {
        this.mIntent = intent;
        return this;
    }

    public final void setIsActionButton(boolean z) {
        if (z) {
            this.mFlags |= 32;
        } else {
            this.mFlags &= -33;
        }
    }

    final void setMenuInfo(ContextMenuInfo contextMenuInfo) {
        this.mMenuInfo = contextMenuInfo;
    }

    public final MenuItem setNumericShortcut(char c) {
        if (this.mShortcutNumericChar != c) {
            this.mShortcutNumericChar = c;
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    public final MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        this.mOnActionExpandListener = onActionExpandListener;
        return this;
    }

    public final MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.mClickListener = onMenuItemClickListener;
        return this;
    }

    public final MenuItem setShortcut(char c, char c2) {
        this.mShortcutNumericChar = c;
        this.mShortcutAlphabeticChar = Character.toLowerCase(c2);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public final void setShowAsAction(int i) {
        switch (i & 3) {
            case NO_ICON:
            case CHECKABLE:
            case CHECKED:
                this.mShowAsAction = i;
                this.mMenu.onItemActionRequestChanged(this);
            default:
                throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
    }

    public final MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    final void setSubMenu(SubMenuBuilder subMenuBuilder) {
        this.mSubMenu = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    public final MenuItem setTitle(int i) {
        return setTitle(this.mMenu.getContext().getString(i));
    }

    public final MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.mMenu.onItemsChanged(false);
        if (this.mSubMenu != null) {
            this.mSubMenu.setHeaderTitle(charSequence);
        }
        return this;
    }

    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mTitleCondensed = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.mTitle;
        }
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public final MenuItem setVisible(boolean z) {
        if (setVisibleInt(z)) {
            this.mMenu.onItemVisibleChanged(this);
        }
        return this;
    }

    final boolean setVisibleInt(boolean z) {
        int i = this.mFlags;
        this.mFlags = (z ? 0 : HIDDEN) | (this.mFlags & -9);
        return i != this.mFlags;
    }

    public final boolean shouldShowIcon() {
        return this.mMenu.getOptionalIconsVisible();
    }

    final boolean shouldShowShortcut() {
        return this.mMenu.isShortcutsVisible() && getShortcut() != '\u0000';
    }

    public final boolean showsTextAsAction() {
        return (this.mShowAsAction & 4) == 4;
    }

    public final String toString() {
        return this.mTitle.toString();
    }
}