package com.actionbarsherlock.internal.app;

import android.app.ActionBar.OnMenuVisibilityListener;
import android.app.ActionBar.OnNavigationListener;
import android.app.ActionBar.TabListener;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.SpinnerAdapter;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.ActionBar.LayoutParams;
import com.actionbarsherlock.app.ActionBar.Tab;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// compiled from: ProGuard
public class ActionBarWrapper extends ActionBar implements OnMenuVisibilityListener, OnNavigationListener {
    private final android.app.ActionBar mActionBar;
    private final Activity mActivity;
    private FragmentTransaction mFragmentTransaction;
    private Set mMenuVisibilityListeners;
    private ActionBar.OnNavigationListener mNavigationListener;

    // compiled from: ProGuard
    public class TabWrapper extends Tab implements TabListener {
        private ActionBar.TabListener mListener;
        final android.app.ActionBar.Tab mNativeTab;
        private Object mTag;

        public TabWrapper(android.app.ActionBar.Tab tab) {
            this.mNativeTab = tab;
            this.mNativeTab.setTag(this);
        }

        public CharSequence getContentDescription() {
            return this.mNativeTab.getContentDescription();
        }

        public View getCustomView() {
            return this.mNativeTab.getCustomView();
        }

        public Drawable getIcon() {
            return this.mNativeTab.getIcon();
        }

        public int getPosition() {
            return this.mNativeTab.getPosition();
        }

        public Object getTag() {
            return this.mTag;
        }

        public CharSequence getText() {
            return this.mNativeTab.getText();
        }

        public void onTabReselected(android.app.ActionBar.Tab tab, android.app.FragmentTransaction fragmentTransaction) {
            if (this.mListener != null) {
                FragmentTransaction fragmentTransaction2 = null;
                if (ActionBarWrapper.this.mActivity instanceof FragmentActivity) {
                    fragmentTransaction2 = ((FragmentActivity) ActionBarWrapper.this.mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
                }
                this.mListener.onTabReselected(this, fragmentTransaction2);
                if (fragmentTransaction2 != null && !fragmentTransaction2.isEmpty()) {
                    fragmentTransaction2.commit();
                }
            }
        }

        public void onTabSelected(android.app.ActionBar.Tab tab, android.app.FragmentTransaction fragmentTransaction) {
            if (this.mListener != null) {
                if (ActionBarWrapper.this.mFragmentTransaction == null && ActionBarWrapper.this.mActivity instanceof FragmentActivity) {
                    ActionBarWrapper.this.mFragmentTransaction = ((FragmentActivity) ActionBarWrapper.this.mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
                }
                this.mListener.onTabSelected(this, ActionBarWrapper.this.mFragmentTransaction);
                if (ActionBarWrapper.this.mFragmentTransaction != null) {
                    if (!ActionBarWrapper.this.mFragmentTransaction.isEmpty()) {
                        ActionBarWrapper.this.mFragmentTransaction.commit();
                    }
                    ActionBarWrapper.this.mFragmentTransaction = null;
                }
            }
        }

        public void onTabUnselected(android.app.ActionBar.Tab tab, android.app.FragmentTransaction fragmentTransaction) {
            if (this.mListener != null) {
                FragmentTransaction fragmentTransaction2 = null;
                if (ActionBarWrapper.this.mActivity instanceof FragmentActivity) {
                    fragmentTransaction2 = ((FragmentActivity) ActionBarWrapper.this.mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
                    ActionBarWrapper.this.mFragmentTransaction = fragmentTransaction2;
                }
                this.mListener.onTabUnselected(this, fragmentTransaction2);
            }
        }

        public void select() {
            this.mNativeTab.select();
        }

        public Tab setContentDescription(int i) {
            this.mNativeTab.setContentDescription(i);
            return this;
        }

        public Tab setContentDescription(CharSequence charSequence) {
            this.mNativeTab.setContentDescription(charSequence);
            return this;
        }

        public Tab setCustomView(int i) {
            this.mNativeTab.setCustomView(i);
            return this;
        }

        public Tab setCustomView(View view) {
            this.mNativeTab.setCustomView(view);
            return this;
        }

        public Tab setIcon(int i) {
            this.mNativeTab.setIcon(i);
            return this;
        }

        public Tab setIcon(Drawable drawable) {
            this.mNativeTab.setIcon(drawable);
            return this;
        }

        public Tab setTabListener(ActionBar.TabListener tabListener) {
            TabListener tabListener2;
            android.app.ActionBar.Tab tab = this.mNativeTab;
            if (tabListener != null) {
                com.actionbarsherlock.internal.app.ActionBarWrapper.TabWrapper tabWrapper = this;
            } else {
                tabListener2 = null;
            }
            tab.setTabListener(tabListener2);
            this.mListener = tabListener;
            return this;
        }

        public Tab setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public Tab setText(int i) {
            this.mNativeTab.setText(i);
            return this;
        }

        public Tab setText(CharSequence charSequence) {
            this.mNativeTab.setText(charSequence);
            return this;
        }
    }

    public ActionBarWrapper(Activity activity) {
        boolean z = true;
        this.mMenuVisibilityListeners = new HashSet(1);
        this.mActivity = activity;
        this.mActionBar = activity.getActionBar();
        if (this.mActionBar != null) {
            this.mActionBar.addOnMenuVisibilityListener(this);
            int displayOptions = this.mActionBar.getDisplayOptions();
            android.app.ActionBar actionBar = this.mActionBar;
            if ((displayOptions & 4) == 0) {
                z = false;
            }
            actionBar.setHomeButtonEnabled(z);
        }
    }

    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.mMenuVisibilityListeners.add(onMenuVisibilityListener);
    }

    public void addTab(Tab tab) {
        this.mActionBar.addTab(((TabWrapper) tab).mNativeTab);
    }

    public void addTab(Tab tab, int i) {
        this.mActionBar.addTab(((TabWrapper) tab).mNativeTab, i);
    }

    public void addTab(Tab tab, int i, boolean z) {
        this.mActionBar.addTab(((TabWrapper) tab).mNativeTab, i, z);
    }

    public void addTab(Tab tab, boolean z) {
        this.mActionBar.addTab(((TabWrapper) tab).mNativeTab, z);
    }

    public View getCustomView() {
        return this.mActionBar.getCustomView();
    }

    public int getDisplayOptions() {
        return this.mActionBar.getDisplayOptions();
    }

    public int getHeight() {
        return this.mActionBar.getHeight();
    }

    public int getNavigationItemCount() {
        return this.mActionBar.getNavigationItemCount();
    }

    public int getNavigationMode() {
        return this.mActionBar.getNavigationMode();
    }

    public int getSelectedNavigationIndex() {
        return this.mActionBar.getSelectedNavigationIndex();
    }

    public Tab getSelectedTab() {
        android.app.ActionBar.Tab selectedTab = this.mActionBar.getSelectedTab();
        return selectedTab != null ? (Tab) selectedTab.getTag() : null;
    }

    public CharSequence getSubtitle() {
        return this.mActionBar.getSubtitle();
    }

    public Tab getTabAt(int i) {
        android.app.ActionBar.Tab tabAt = this.mActionBar.getTabAt(i);
        return tabAt != null ? (Tab) tabAt.getTag() : null;
    }

    public int getTabCount() {
        return this.mActionBar.getTabCount();
    }

    public Context getThemedContext() {
        return this.mActionBar.getThemedContext();
    }

    public CharSequence getTitle() {
        return this.mActionBar.getTitle();
    }

    public void hide() {
        this.mActionBar.hide();
    }

    public boolean isShowing() {
        return this.mActionBar.isShowing();
    }

    public Tab newTab() {
        return new TabWrapper(this.mActionBar.newTab());
    }

    public void onMenuVisibilityChanged(boolean z) {
        Iterator it = this.mMenuVisibilityListeners.iterator();
        while (it.hasNext()) {
            ((ActionBar.OnMenuVisibilityListener) it.next()).onMenuVisibilityChanged(z);
        }
    }

    public boolean onNavigationItemSelected(int i, long j) {
        return this.mNavigationListener.onNavigationItemSelected(i, j);
    }

    public void removeAllTabs() {
        this.mActionBar.removeAllTabs();
    }

    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.mMenuVisibilityListeners.remove(onMenuVisibilityListener);
    }

    public void removeTab(Tab tab) {
        this.mActionBar.removeTab(((TabWrapper) tab).mNativeTab);
    }

    public void removeTabAt(int i) {
        this.mActionBar.removeTabAt(i);
    }

    public void selectTab(Tab tab) {
        this.mActionBar.selectTab(((TabWrapper) tab).mNativeTab);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.mActionBar.setBackgroundDrawable(drawable);
    }

    public void setCustomView(int i) {
        this.mActionBar.setCustomView(i);
    }

    public void setCustomView(View view) {
        this.mActionBar.setCustomView(view);
    }

    public void setCustomView(View view, LayoutParams layoutParams) {
        android.app.ActionBar.LayoutParams layoutParams2 = new android.app.ActionBar.LayoutParams(layoutParams);
        layoutParams2.gravity = layoutParams.gravity;
        layoutParams2.bottomMargin = layoutParams.bottomMargin;
        layoutParams2.topMargin = layoutParams.topMargin;
        layoutParams2.leftMargin = layoutParams.leftMargin;
        layoutParams2.rightMargin = layoutParams.rightMargin;
        this.mActionBar.setCustomView(view, layoutParams2);
    }

    public void setDisplayHomeAsUpEnabled(boolean z) {
        this.mActionBar.setDisplayHomeAsUpEnabled(z);
    }

    public void setDisplayOptions(int i) {
        this.mActionBar.setDisplayOptions(i);
        this.mActionBar.setHomeButtonEnabled((i & 4) != 0);
    }

    public void setDisplayOptions(int i, int i2) {
        this.mActionBar.setDisplayOptions(i, i2);
        if ((i2 & 4) != 0) {
            this.mActionBar.setHomeButtonEnabled((i & 4) != 0);
        }
    }

    public void setDisplayShowCustomEnabled(boolean z) {
        this.mActionBar.setDisplayShowCustomEnabled(z);
    }

    public void setDisplayShowHomeEnabled(boolean z) {
        this.mActionBar.setDisplayShowHomeEnabled(z);
    }

    public void setDisplayShowTitleEnabled(boolean z) {
        this.mActionBar.setDisplayShowTitleEnabled(z);
    }

    public void setDisplayUseLogoEnabled(boolean z) {
        this.mActionBar.setDisplayUseLogoEnabled(z);
    }

    public void setHomeButtonEnabled(boolean z) {
        this.mActionBar.setHomeButtonEnabled(z);
    }

    public void setIcon(int i) {
        this.mActionBar.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        this.mActionBar.setIcon(drawable);
    }

    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.mNavigationListener = onNavigationListener;
        android.app.ActionBar actionBar = this.mActionBar;
        if (onNavigationListener == null) {
            this = null;
        }
        actionBar.setListNavigationCallbacks(spinnerAdapter, this);
    }

    public void setLogo(int i) {
        this.mActionBar.setLogo(i);
    }

    public void setLogo(Drawable drawable) {
        this.mActionBar.setLogo(drawable);
    }

    public void setNavigationMode(int i) {
        this.mActionBar.setNavigationMode(i);
    }

    public void setSelectedNavigationItem(int i) {
        this.mActionBar.setSelectedNavigationItem(i);
    }

    public void setSplitBackgroundDrawable(Drawable drawable) {
        this.mActionBar.setSplitBackgroundDrawable(drawable);
    }

    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.mActionBar.setStackedBackgroundDrawable(drawable);
    }

    public void setSubtitle(int i) {
        this.mActionBar.setSubtitle(i);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.mActionBar.setSubtitle(charSequence);
    }

    public void setTitle(int i) {
        this.mActionBar.setTitle(i);
    }

    public void setTitle(CharSequence charSequence) {
        this.mActionBar.setTitle(charSequence);
    }

    public void show() {
        this.mActionBar.show();
    }
}