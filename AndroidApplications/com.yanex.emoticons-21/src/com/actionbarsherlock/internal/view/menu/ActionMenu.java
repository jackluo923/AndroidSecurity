package com.actionbarsherlock.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.KeyEvent;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.SubMenu;
import java.util.ArrayList;
import java.util.List;

public class ActionMenu implements Menu {
    private Context mContext;
    private boolean mIsQwerty;
    private ArrayList mItems;

    public ActionMenu(Context context) {
        this.mContext = context;
        this.mItems = new ArrayList();
    }

    private int findItemIndex(int i) {
        ArrayList arrayList = this.mItems;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            if (((ActionMenuItem) arrayList.get(i2)).getItemId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private ActionMenuItem findItemWithShortcut(char c, KeyEvent keyEvent) {
        boolean z = this.mIsQwerty;
        ArrayList arrayList = this.mItems;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            ActionMenuItem actionMenuItem = (ActionMenuItem) arrayList.get(i);
            if (c == (z ? actionMenuItem.getAlphabeticShortcut() : actionMenuItem.getNumericShortcut())) {
                return actionMenuItem;
            }
            i++;
        }
        return null;
    }

    public MenuItem add(int i) {
        return add(0, 0, 0, i);
    }

    public MenuItem add(int i, int i2, int i3, int i4) {
        return add(i, i2, i3, this.mContext.getResources().getString(i4));
    }

    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        MenuItem actionMenuItem = new ActionMenuItem(getContext(), i, i2, 0, i3, charSequence);
        this.mItems.add(i3, actionMenuItem);
        return actionMenuItem;
    }

    public MenuItem add(CharSequence charSequence) {
        return add(0, 0, 0, charSequence);
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

    public SubMenu addSubMenu(int i) {
        return null;
    }

    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return null;
    }

    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return null;
    }

    public SubMenu addSubMenu(CharSequence charSequence) {
        return null;
    }

    public void clear() {
        this.mItems.clear();
    }

    public void close() {
    }

    public MenuItem findItem(int i) {
        return (MenuItem) this.mItems.get(findItemIndex(i));
    }

    public Context getContext() {
        return this.mContext;
    }

    public MenuItem getItem(int i) {
        return (MenuItem) this.mItems.get(i);
    }

    public boolean hasVisibleItems() {
        ArrayList arrayList = this.mItems;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            if (((ActionMenuItem) arrayList.get(i)).isVisible()) {
                return true;
            }
            i++;
        }
        return false;
    }

    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return findItemWithShortcut(i, keyEvent) != null;
    }

    public boolean performIdentifierAction(int i, int i2) {
        int findItemIndex = findItemIndex(i);
        return findItemIndex < 0 ? false : ((ActionMenuItem) this.mItems.get(findItemIndex)).invoke();
    }

    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        ActionMenuItem findItemWithShortcut = findItemWithShortcut(i, keyEvent);
        return findItemWithShortcut == null ? false : findItemWithShortcut.invoke();
    }

    public void removeGroup(int i) {
        ArrayList arrayList = this.mItems;
        int i2 = arrayList.size();
        int i3 = 0;
        while (i3 < i2) {
            if (((ActionMenuItem) arrayList.get(i3)).getGroupId() == i) {
                arrayList.remove(i3);
                i2--;
            } else {
                i3++;
            }
        }
    }

    public void removeItem(int i) {
        this.mItems.remove(findItemIndex(i));
    }

    public void setGroupCheckable(int i, boolean z, boolean z2) {
        ArrayList arrayList = this.mItems;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            ActionMenuItem actionMenuItem = (ActionMenuItem) arrayList.get(i2);
            if (actionMenuItem.getGroupId() == i) {
                actionMenuItem.setCheckable(z);
                actionMenuItem.setExclusiveCheckable(z2);
            }
            i2++;
        }
    }

    public void setGroupEnabled(int i, boolean z) {
        ArrayList arrayList = this.mItems;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            ActionMenuItem actionMenuItem = (ActionMenuItem) arrayList.get(i2);
            if (actionMenuItem.getGroupId() == i) {
                actionMenuItem.setEnabled(z);
            }
            i2++;
        }
    }

    public void setGroupVisible(int i, boolean z) {
        ArrayList arrayList = this.mItems;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            ActionMenuItem actionMenuItem = (ActionMenuItem) arrayList.get(i2);
            if (actionMenuItem.getGroupId() == i) {
                actionMenuItem.setVisible(z);
            }
            i2++;
        }
    }

    public void setQwertyMode(boolean z) {
        this.mIsQwerty = z;
    }

    public int size() {
        return this.mItems.size();
    }
}