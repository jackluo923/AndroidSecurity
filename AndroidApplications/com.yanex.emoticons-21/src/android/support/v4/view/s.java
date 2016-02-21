package android.support.v4.view;

import android.support.v4.app.NotificationCompat;
import android.view.KeyEvent;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.view.Menu;

class s implements v {
    s() {
    }

    private static int a(int i, int i2, int i3, int i4) {
        boolean z = 1;
        int i5 = (i2 & 1) != 0;
        int i6 = i3 | i4;
        if ((i6 & 1) == 0) {
            z = false;
        }
        if (i5 != 0) {
            if (i == 0) {
                return i & (i6 ^ -1);
            }
            throw new IllegalArgumentException("bad arguments");
        } else if (i != 0) {
            return i & (i2 ^ -1);
        } else {
            return i;
        }
    }

    public int a(int i) {
        int i2;
        i2 = (i & 192) != 0 ? i | 1 : i;
        if ((i2 & 48) != 0) {
            i2 |= 2;
        }
        return i2 & 247;
    }

    public void a(KeyEvent keyEvent) {
    }

    public boolean b(int i) {
        return a(a(a(i) & 247, 1, 64, NotificationCompat.FLAG_HIGH_PRIORITY), IcsLinearLayout.SHOW_DIVIDER_MIDDLE, Menu.CATEGORY_SHIFT, 32) == 1;
    }

    public boolean c(int i) {
        return (a(i) & 247) == 0;
    }
}