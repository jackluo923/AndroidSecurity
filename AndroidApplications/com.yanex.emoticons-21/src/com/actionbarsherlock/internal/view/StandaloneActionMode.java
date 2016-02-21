package com.actionbarsherlock.internal.view;

import android.content.Context;
import android.view.View;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.internal.view.menu.MenuPopupHelper;
import com.actionbarsherlock.internal.view.menu.SubMenuBuilder;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import java.lang.ref.WeakReference;

public class StandaloneActionMode extends ActionMode implements Callback {
    private ActionMode.Callback mCallback;
    private Context mContext;
    private ActionBarContextView mContextView;
    private WeakReference mCustomView;
    private boolean mFinished;
    private boolean mFocusable;
    private MenuBuilder mMenu;

    public StandaloneActionMode(Context context, ActionBarContextView actionBarContextView, ActionMode.Callback callback, boolean z) {
        this.mContext = context;
        this.mContextView = actionBarContextView;
        this.mCallback = callback;
        this.mMenu = new MenuBuilder(context).setDefaultShowAsAction(1);
        this.mMenu.setCallback(this);
        this.mFocusable = z;
    }

    public void finish() {
        if (!this.mFinished) {
            this.mFinished = true;
            this.mContextView.sendAccessibilityEvent(32);
            this.mCallback.onDestroyActionMode(this);
        }
    }

    public View getCustomView() {
        return this.mCustomView != null ? (View) this.mCustomView.get() : null;
    }

    public Menu getMenu() {
        return this.mMenu;
    }

    public MenuInflater getMenuInflater() {
        return new MenuInflater(this.mContext);
    }

    public CharSequence getSubtitle() {
        return this.mContextView.getSubtitle();
    }

    public CharSequence getTitle() {
        return this.mContextView.getTitle();
    }

    public void invalidate() {
        this.mCallback.onPrepareActionMode(this, this.mMenu);
    }

    public boolean isUiFocusable() {
        return this.mFocusable;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.mCallback.onActionItemClicked(this, menuItem);
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
        invalidate();
        this.mContextView.showOverflowMenu();
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            new MenuPopupHelper(this.mContext, subMenuBuilder).show();
        }
        return true;
    }

    public void setCustomView(View view) {
        this.mContextView.setCustomView(view);
        this.mCustomView = view != null ? new WeakReference(view) : null;
    }

    public void setSubtitle(int i) {
        setSubtitle(this.mContext.getString(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        this.mContextView.setSubtitle(charSequence);
    }

    public void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    public void setTitle(CharSequence charSequence) {
        this.mContextView.setTitle(charSequence);
    }
}