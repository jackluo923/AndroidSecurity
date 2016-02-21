package com.wopnersoft.unitconverter.plus;

import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.Menu;
import com.wopnersoft.unitconverter.plus.b.v;
import com.wopnersoft.unitconverter.plus.b.w;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.t;
import com.wopnersoft.unitconverter.plus.util.u;

// compiled from: ProGuard
public class FavoriteConverterMenu extends v implements w {
    private aa a;
    private String[] b;
    private long[] g;
    private long[] h;

    private void i() {
        try {
            Cursor d = this.a.d();
            if (d.moveToFirst()) {
                int count = d.getCount();
                int i = 0;
                int columnIndex = d.getColumnIndex("fav_cat");
                int columnIndex2 = d.getColumnIndex("from_name");
                int columnIndex3 = d.getColumnIndex("to_name");
                int columnIndex4 = d.getColumnIndex("_id");
                int columnIndex5 = d.getColumnIndex("input_val");
                int columnIndex6 = d.getColumnIndex("input_val2");
                int columnIndex7 = d.getColumnIndex("from_value");
                this.h = new long[count];
                this.b = new String[count];
                this.g = new long[count];
                do {
                    this.h[i] = d.getLong(columnIndex);
                    String string = d.getString(columnIndex2);
                    if (this.h[i] == 1024) {
                        Long valueOf = Long.valueOf(d.getLong(columnIndex5));
                        string = Long.toString(valueOf.longValue(), d.getInt(columnIndex7));
                        this.b[i] = String.format("%s %s %s %s", new Object[]{string, d.getString(columnIndex2), getString(2131362646), d.getString(columnIndex3)});
                    } else if (this.h[i] == 151) {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{"", d.getString(columnIndex2), getString(2131362646), getString(2131362327)});
                    } else if (this.h[i] == 152) {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{"", Double.toString(d.getDouble(columnIndex5)), getString(2131362646), getString(2131362333)});
                    } else if (this.h[i] == 150) {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{Double.toString(d.getDouble(columnIndex5)), d.getString(columnIndex2), "", ""});
                    } else if (this.h[i] == 154) {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{new StringBuilder(String.valueOf(getString(2131362769))).append(": ").toString(), d.getString(columnIndex2), "", ""});
                    } else if (this.h[i] == 64 && getString(2131361988).equalsIgnoreCase(string)) {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{new StringBuilder(String.valueOf(Integer.toString(d.getInt(columnIndex5)))).append(getString(2131361987)).toString(), new StringBuilder(String.valueOf(Double.toString(d.getDouble(columnIndex6)))).append(getString(2131361992)).toString(), getString(2131362646), d.getString(columnIndex3)});
                    } else if (this.h[i] == 262144 && getString(2131362920).equalsIgnoreCase(string)) {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{new StringBuilder(String.valueOf(Integer.toString(d.getInt(columnIndex5)))).append(getString(2131362919)).toString(), new StringBuilder(String.valueOf(Double.toString(d.getDouble(columnIndex6)))).append(getString(2131362915)).toString(), getString(2131362646), d.getString(columnIndex3)});
                    } else if (this.h[i] == 155) {
                        if (getString(2131362302).equalsIgnoreCase(d.getString(columnIndex2))) {
                            this.b[i] = String.format("%s %s %s %s", new Object[]{d.getString(columnIndex2), getString(2131362646), getString(2131362304), ""});
                        } else {
                            this.b[i] = String.format("%s %s %s %s", new Object[]{d.getString(columnIndex2), getString(2131362646), getString(2131362302), ""});
                        }
                    } else if (this.h[i] == 158 || this.h[i] == 159 || this.h[i] == 157 || this.h[i] == 161) {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{"", d.getString(columnIndex3), ": ", d.getString(columnIndex2)});
                    } else {
                        this.b[i] = String.format("%s %s %s %s", new Object[]{Double.toString(d.getDouble(columnIndex5)), d.getString(columnIndex2), getString(2131362646), d.getString(columnIndex3)});
                    }
                    this.g[i] = d.getLong(columnIndex4);
                    i++;
                } while (d.moveToNext());
            } else {
                this.b = null;
                this.h = null;
                this.g = null;
            }
            if (!d.isClosed()) {
                d.close();
            }
        } catch (Exception e) {
            Toast.makeText(this, getString(2131362068), 1).show();
        }
    }

    protected int a() {
        return 2130903085;
    }

    public long a(int i) {
        return this.g[i];
    }

    public Boolean a(long j) {
        return Boolean.valueOf(false);
    }

    public String b(int i) {
        return this.b[i];
    }

    public void b() {
        i();
        f.a().a(getSupportActionBar(), 1);
    }

    public long[] c() {
        return this.h;
    }

    public Boolean d() {
        return Boolean.valueOf(false);
    }

    public BaseAdapter e() {
        return new t(this, g());
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 10) {
            return super.onContextItemSelected(menuItem);
        }
        this.a.a(((u) ((AdapterContextMenuInfo) menuItem.getMenuInfo()).targetView.getTag()).a);
        i();
        super.f();
        return true;
    }

    public void onCreate(Bundle bundle) {
        this.a = new aa(this);
        this.a.a();
        i();
        super.onCreate(bundle);
        registerForContextMenu(getListView());
        c(2131362043);
        d(2131362330);
        f.a().a(getSupportActionBar(), 1);
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.add(0, R.styleable.SherlockTheme_actionBarItemBackground, 0, 2131361904);
        contextMenu.setHeaderTitle(getString(2131361909));
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.removeItem(2131034460);
        menu.removeItem(2131034458);
        com.actionbarsherlock.view.MenuItem add = menu.add(0, (int)R.styleable.SherlockTheme_actionMenuTextAppearance, 0, getString(2131361907));
        add.setIcon(17301564);
        add.setTitleCondensed(getString(2131361907));
        return true;
    }

    protected void onDestroy() {
        unregisterForContextMenu(getListView());
        if (this.a != null) {
            this.a.b();
        }
        super.onDestroy();
    }

    protected void onListItemClick(ListView listView, View view, int i, long j) {
        u uVar = (u) view.getTag();
        long j2 = this.h[i];
        Intent intent = new Intent(this, this.c.b(j2));
        intent.putExtra("_id", uVar.a);
        intent.putExtra("categoryId", j2);
        startActivity(intent);
    }

    public boolean onOptionsItemSelected(com.actionbarsherlock.view.MenuItem menuItem) {
        if (menuItem.getItemId() != 11) {
            return super.onOptionsItemSelected(menuItem);
        }
        new Builder(this).setIcon(17301543).setTitle(new StringBuilder(String.valueOf(getString(2131361907))).append("?").toString()).setMessage(new StringBuilder(String.valueOf(getString(2131362381))).append(" ").append(getString(2131361907)).append("?").toString()).setPositiveButton(2131362934, new a(this)).setNegativeButton(2131362394, null).show();
        return true;
    }
}