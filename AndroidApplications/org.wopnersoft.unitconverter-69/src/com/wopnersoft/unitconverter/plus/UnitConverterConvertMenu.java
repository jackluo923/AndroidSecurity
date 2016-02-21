package com.wopnersoft.unitconverter.plus;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.a.d;
import com.wopnersoft.unitconverter.plus.a.j;
import com.wopnersoft.unitconverter.plus.b.v;
import com.wopnersoft.unitconverter.plus.b.w;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.am;
import com.wopnersoft.unitconverter.plus.util.t;
import java.util.ArrayList;

// compiled from: ProGuard
public class UnitConverterConvertMenu extends v implements w {
    public static final long[] a;
    j b;
    private ArrayList g;
    private Boolean h;
    private d i;

    static {
        a = new long[]{1, 4194304, 2, 4, 16, 8, 1073741824, 1048576, 32, 64, 8388608, 128, 16777216, 33554432, 256, 4294967296L, 512, 268435456, 2147483648L, 1024, 2048, 4096, 67108864, 134217728, 2097152, 8589934592L, 65536, 8192, 16384, 32768, 536870912, 131072, 262144, 524288};
    }

    public UnitConverterConvertMenu() {
        this.b = new o(this);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void i() {
        throw new UnsupportedOperationException("Method not decompiled: com.wopnersoft.unitconverter.plus.UnitConverterConvertMenu.i():void");
        /*
        r6 = this;
        r0 = r6.getApplication();	 Catch:{ NameNotFoundException -> 0x005f }
        r0 = (com.wopnersoft.unitconverter.plus.UnitConverterApplication) r0;	 Catch:{ NameNotFoundException -> 0x005f }
        r1 = r0.h();	 Catch:{ NameNotFoundException -> 0x005f }
        r0 = r6.getPackageManager();	 Catch:{ NameNotFoundException -> 0x005f }
        r2 = r6.getPackageName();	 Catch:{ NameNotFoundException -> 0x005f }
        r3 = 0;
        r0 = r0.getPackageInfo(r2, r3);	 Catch:{ NameNotFoundException -> 0x005f }
        r2 = r0.versionCode;	 Catch:{ NameNotFoundException -> 0x005f }
        r0 = "lastViewedChangeLog";
        r3 = 0;
        r3 = r1.getInt(r0, r3);	 Catch:{ NameNotFoundException -> 0x005f }
        if (r3 <= 0) goto L_0x0034;
    L_0x0022:
        if (r3 >= r2) goto L_0x0034;
    L_0x0024:
        r0 = 61;
        if (r3 >= r0) goto L_0x002d;
    L_0x0028:
        r0 = r6.c;	 Catch:{ Exception -> 0x0056 }
        r0.a();	 Catch:{ Exception -> 0x0056 }
    L_0x002d:
        r0 = "checkShowChangeLog";
        r4 = "Finished performing ShowChangelog cleanup";
        android.util.Log.i(r0, r4);	 Catch:{ Exception -> 0x0056 }
    L_0x0034:
        if (r3 >= r2) goto L_0x0048;
    L_0x0036:
        r0 = r1.edit();	 Catch:{ NameNotFoundException -> 0x005f }
        r1 = "lastViewedChangeLog";
        r0 = r0.putInt(r1, r2);	 Catch:{ NameNotFoundException -> 0x005f }
        r0.commit();	 Catch:{ NameNotFoundException -> 0x005f }
        r0 = 3897; // 0xf39 float:5.461E-42 double:1.9254E-320;
        r6.showDialog(r0);	 Catch:{ NameNotFoundException -> 0x005f }
    L_0x0048:
        r0 = com.wopnersoft.unitconverter.plus.d.b.a();	 Catch:{ NameNotFoundException -> 0x005f }
        r0 = r0.booleanValue();	 Catch:{ NameNotFoundException -> 0x005f }
        if (r0 == 0) goto L_0x0055;
    L_0x0052:
        com.wopnersoft.unitconverter.plus.util.c.a(r6);	 Catch:{ NameNotFoundException -> 0x005f }
    L_0x0055:
        return;
    L_0x0056:
        r0 = move-exception;
        r4 = "Error performing ShowChangelog cleanup";
        r5 = "";
        android.util.Log.e(r4, r5, r0);	 Catch:{ NameNotFoundException -> 0x005f }
        goto L_0x0034;
    L_0x005f:
        r0 = move-exception;
        r1 = "Unable to get version code. Will not show changelog";
        android.util.Log.w(r1, r0);
        goto L_0x0055;
        */
    }

    private void j() {
        this.g.clear();
        SharedPreferences h = this.c.h();
        long j = h.getLong("filterListORed", 17179869183L);
        if (this.d == null) {
            this.d = Boolean.valueOf(h.getBoolean("sortAlpha", true));
        }
        int[] intArray = getResources().getIntArray(2131492864);
        int i = 0;
        while (i < a.length) {
            int i2;
            i2 = this.d.booleanValue() ? intArray[i] : i;
            long j2 = a[i2];
            if (!this.h.booleanValue() || (j & j2) == j2) {
                this.g.add(Integer.valueOf(i2));
            }
            i++;
        }
        if (!this.h.booleanValue() || j == 17179869183L) {
            setTitle(2131361829);
        } else {
            setTitle(String.format("%s ( %s )", new Object[]{getString(2131361829), getString(2131362332)}));
        }
    }

    public long a(int i) {
        return -1;
    }

    public Boolean a(long j) {
        return (j == 1 || j == 524288) ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    public String b(int i) {
        return getString(UnitConverterApplication.c[this.c.a(a[((Integer) this.g.get(i)).intValue()])]);
    }

    public void b() {
        j();
        getSupportActionBar().setIcon(f.a().a("robot_launcher_plus"));
    }

    public long[] c() {
        long[] jArr = new long[this.g.size()];
        int i = 0;
        while (i < jArr.length) {
            jArr[i] = a[((Integer) this.g.get(i)).intValue()];
            i++;
        }
        return jArr;
    }

    public Boolean d() {
        return Boolean.valueOf(true);
    }

    public BaseAdapter e() {
        return new t(this, g());
    }

    public void onCreate(Bundle bundle) {
        this.c = (UnitConverterApplication) getApplication();
        f.a().b();
        this.g = new ArrayList();
        this.h = Boolean.valueOf(this.c.h().getBoolean("filterListEnabled", false));
        j();
        super.onCreate(bundle);
        c(2131362041);
        getSupportActionBar().setIcon(f.a().a("robot_launcher_plus"));
        getSupportActionBar().setDisplayHomeAsUpEnabled(false);
        i();
        Log.d("Unit Converter", "Creating IAB helper.");
        this.i = this.c.a(this);
        this.i.a(false);
        Log.d("Unit Converter", "Starting setup.");
        this.i.a(new p(this));
    }

    protected Dialog onCreateDialog(int i) {
        return i == 3897 ? am.c(this) : super.onCreateDialog(i);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.findItem(2131034456).setVisible(true);
        return true;
    }

    public void onDestroy() {
        super.onDestroy();
        Log.d("Unit Converter", "Destroying helper.");
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
    }

    protected void onListItemClick(ListView listView, View view, int i, long j) {
        if (i <= -1 || i >= this.g.size()) {
            super.onListItemClick(listView, view, i, j);
        } else {
            long j2 = a[((Integer) this.g.get(i)).intValue()];
            Intent intent = new Intent(this, this.c.b(j2));
            intent.putExtra("categoryId", j2);
            startActivity(intent);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131034456) {
            return super.onOptionsItemSelected(menuItem);
        }
        this.h = Boolean.valueOf(!this.h.booleanValue());
        g().edit().putBoolean("filterListEnabled", this.h.booleanValue()).commit();
        j();
        f();
        return true;
    }
}