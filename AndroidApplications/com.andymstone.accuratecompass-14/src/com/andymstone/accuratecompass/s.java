package com.andymstone.accuratecompass;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public class s implements MenuItem {
    private r a;
    private final int b;
    private final int c;
    private CharSequence d;
    private CharSequence e;
    private Drawable f;
    private int g;
    private boolean h;

    public s(r rVar, int i, int i2, CharSequence charSequence) {
        this.g = 0;
        this.h = true;
        this.a = rVar;
        this.b = i;
        this.c = i2;
        this.d = charSequence;
    }

    public boolean collapseActionView() {
        return false;
    }

    public boolean expandActionView() {
        return false;
    }

    public ActionProvider getActionProvider() {
        return null;
    }

    public View getActionView() {
        return null;
    }

    public char getAlphabeticShortcut() {
        return '\u0000';
    }

    public int getGroupId() {
        return 0;
    }

    public Drawable getIcon() {
        if (this.f != null) {
            return this.f;
        }
        return this.g != 0 ? this.a.b().getDrawable(this.g) : null;
    }

    public Intent getIntent() {
        return null;
    }

    public int getItemId() {
        return this.b;
    }

    public ContextMenuInfo getMenuInfo() {
        return null;
    }

    public char getNumericShortcut() {
        return '\u0000';
    }

    public int getOrder() {
        return this.c;
    }

    public SubMenu getSubMenu() {
        return null;
    }

    public CharSequence getTitle() {
        return this.d;
    }

    public CharSequence getTitleCondensed() {
        return this.e != null ? this.e : this.d;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isActionViewExpanded() {
        return false;
    }

    public boolean isCheckable() {
        return false;
    }

    public boolean isChecked() {
        return false;
    }

    public boolean isEnabled() {
        return this.h;
    }

    public boolean isVisible() {
        return true;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        return this;
    }

    public MenuItem setActionView(int i) {
        return this;
    }

    public MenuItem setActionView(View view) {
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c) {
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        return this;
    }

    public MenuItem setChecked(boolean z) {
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.h = z;
        return this;
    }

    public MenuItem setIcon(int i) {
        this.f = null;
        this.g = i;
        return this;
    }

    public MenuItem setIcon(Drawable drawable) {
        this.g = 0;
        this.f = drawable;
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        return this;
    }

    public MenuItem setNumericShortcut(char c) {
        return this;
    }

    public MenuItem setOnActionExpandListener(OnActionExpandListener onActionExpandListener) {
        return this;
    }

    public MenuItem setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    public MenuItem setShortcut(char c, char c2) {
        return this;
    }

    public void setShowAsAction(int i) {
    }

    public MenuItem setShowAsActionFlags(int i) {
        return null;
    }

    public MenuItem setTitle(int i) {
        return setTitle(this.a.a().getString(i));
    }

    public MenuItem setTitle(CharSequence charSequence) {
        this.d = charSequence;
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.e = charSequence;
        return this;
    }

    public MenuItem setVisible(boolean z) {
        return this;
    }
}