package com.andymstone.accuratecompass;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.ArrayList;

public class r implements Menu {
    private Context a;
    private Resources b;
    private ArrayList c;

    public r(Context context) {
        this.a = context;
        this.b = context.getResources();
        this.c = new ArrayList();
    }

    private static int a(ArrayList arrayList, int i) {
        int i2 = arrayList.size() - 1;
        while (i2 >= 0) {
            if (((MenuItem) arrayList.get(i2)).getOrder() <= i) {
                return i2 + 1;
            }
            i2--;
        }
        return 0;
    }

    private MenuItem a(int i, int i2, CharSequence charSequence) {
        MenuItem sVar = new s(this, i, i2, charSequence);
        this.c.add(a(this.c, i2), sVar);
        return sVar;
    }

    private void b(int i) {
        if (i >= 0 && i < this.c.size()) {
            this.c.remove(i);
        }
    }

    public int a(int i) {
        int size = size();
        int i2 = 0;
        while (i2 < size) {
            if (((s) this.c.get(i2)).getItemId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public Context a() {
        return this.a;
    }

    public MenuItem add(int i) {
        return a(0, 0, this.b.getString(i));
    }

    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i2, i3, this.b.getString(i4));
    }

    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i2, i3, charSequence);
    }

    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, charSequence);
    }

    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public SubMenu addSubMenu(int i) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public Resources b() {
        return this.b;
    }

    public void clear() {
        this.c.clear();
    }

    public void close() {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public MenuItem findItem(int i) {
        int size = size();
        int i2 = 0;
        while (i2 < size) {
            s sVar = (s) this.c.get(i2);
            if (sVar.getItemId() == i) {
                return sVar;
            }
            i2++;
        }
        return null;
    }

    public MenuItem getItem(int i) {
        return (MenuItem) this.c.get(i);
    }

    public boolean hasVisibleItems() {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public boolean performIdentifierAction(int i, int i2) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public void removeGroup(int i) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public void removeItem(int i) {
        b(a(i));
    }

    public void setGroupCheckable(int i, boolean z, boolean z2) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public void setGroupEnabled(int i, boolean z) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public void setGroupVisible(int i, boolean z) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public void setQwertyMode(boolean z) {
        throw new UnsupportedOperationException("This operation is not supported for SimpleMenu");
    }

    public int size() {
        return this.c.size();
    }
}