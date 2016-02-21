package com.wopnersoft.unitconverter.plus.specialized;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.actionbarsherlock.view.Menu;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;
import com.wopnersoft.unitconverter.plus.b.v;
import com.wopnersoft.unitconverter.plus.b.w;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.t;
import java.util.ArrayList;

// compiled from: ProGuard
public final class SpecializedConverterMenu extends v implements w {
    private long[] a;

    private void i() {
        int i = 0;
        SharedPreferences h = ((UnitConverterApplication) getApplication()).h();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(150));
        arrayList.add(Long.valueOf(152));
        arrayList.add(Long.valueOf(151));
        if (b.a().booleanValue()) {
            arrayList.add(Long.valueOf(154));
        }
        arrayList.add(Long.valueOf(161));
        arrayList.add(Long.valueOf(158));
        arrayList.add(Long.valueOf(159));
        if (h.getBoolean("ad590activity", false)) {
            arrayList.add(Long.valueOf(153));
        }
        this.a = new long[arrayList.size()];
        while (i < this.a.length) {
            this.a[i] = ((Long) arrayList.get(i)).longValue();
            i++;
        }
    }

    public long a(int i) {
        return -1;
    }

    public Boolean a(long j) {
        return Boolean.valueOf(false);
    }

    public String b(int i) {
        return getString(UnitConverterApplication.c[this.c.a(this.a[i])]);
    }

    public void b() {
        i();
        f.a().a(getSupportActionBar(), 524288);
    }

    public long[] c() {
        return this.a;
    }

    public Boolean d() {
        return Boolean.valueOf(true);
    }

    public BaseAdapter e() {
        return new t(this, g());
    }

    protected void onCreate(Bundle bundle) {
        i();
        super.onCreate(bundle);
        setTitle(String.format(getString(2131362076), new Object[]{getString(2131362763)}));
        f.a().a(getSupportActionBar(), 524288);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.removeItem(2131034460);
        menu.removeItem(2131034458);
        return true;
    }

    protected void onListItemClick(ListView listView, View view, int i, long j) {
        if (i <= -1 || i >= this.a.length) {
            super.onListItemClick(listView, view, i, j);
        } else {
            long j2 = this.a[i];
            Intent intent = new Intent(this, this.c.b(j2));
            intent.putExtra("categoryId", j2);
            startActivity(intent);
        }
    }
}