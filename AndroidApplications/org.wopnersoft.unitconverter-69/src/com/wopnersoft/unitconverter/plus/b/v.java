package com.wopnersoft.unitconverter.plus.b;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockListActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.Preferences;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;
import com.wopnersoft.unitconverter.plus.UnitConverterConvertMenu;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.AboutDialog;
import com.wopnersoft.unitconverter.plus.util.am;

// compiled from: ProGuard
public abstract class v extends SherlockListActivity {
    private SharedPreferences a;
    private int b;
    protected UnitConverterApplication c;
    protected Boolean d;
    protected Boolean e;
    protected Boolean f;
    private String g;

    private void c() {
        Boolean valueOf = Boolean.valueOf(false);
        e.a(this.a);
        int d = f.a().d();
        if (this.b != d) {
            this.b = d;
            h();
            valueOf = Boolean.valueOf(true);
        }
        Boolean bool = e.q;
        if (!this.d.equals(bool)) {
            this.d = bool;
            valueOf = Boolean.valueOf(true);
        }
        String str = e.v;
        if (this.g.equals(str)) {
            bool = valueOf;
        } else {
            this.g = str;
            bool = Boolean.valueOf(true);
        }
        if (((Boolean) this.c.b("deleteFavs", Boolean.valueOf(false))).booleanValue()) {
            this.c.a("deleteFavs", Boolean.FALSE);
            bool = Boolean.valueOf(true);
        }
        if (((Boolean) this.c.b("filterList", Boolean.valueOf(false))).booleanValue() && this instanceof UnitConverterConvertMenu) {
            this.c.a("filterList", Boolean.FALSE);
            bool = Boolean.valueOf(true);
            Log.i("BaseListActivity", "Main List Filter Changed - Reload List");
        }
        if (((Boolean) this.c.b("refreshList", Boolean.FALSE)).booleanValue()) {
            this.c.a("refreshList", Boolean.FALSE);
            bool = Boolean.valueOf(true);
        }
        valueOf = e.n;
        if (!this.e.equals(valueOf)) {
            this.e = valueOf;
            bool = Boolean.valueOf(true);
        }
        valueOf = e.r;
        if (!this.f.equals(valueOf)) {
            this.f = valueOf;
            bool = Boolean.valueOf(false);
            this.c.k();
        }
        if (bool.booleanValue()) {
            f.a().b();
            b();
            f();
        }
    }

    protected int a() {
        return 2130903084;
    }

    public abstract void b();

    protected void c(int i) {
        TextView textView = (TextView) findViewById(16908292);
        if (textView != null) {
            textView.setText(i);
        }
    }

    public abstract Boolean d();

    protected void d(int i) {
        TextView textView = (TextView) findViewById(2131034310);
        if (textView != null) {
            textView.setText(i);
        }
    }

    public abstract BaseAdapter e();

    protected void f() {
        setListAdapter(e());
    }

    protected final SharedPreferences g() {
        return this.a;
    }

    public /* synthetic */ ListAdapter getListAdapter() {
        return e();
    }

    protected void h() {
        ListView listView = getListView();
        int d = f.a().d();
        listView.setBackgroundColor(d);
        listView.setCacheColorHint(d);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 0) {
            c();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    protected void onCreate(Bundle bundle) {
        this.c = (UnitConverterApplication) getApplication();
        this.a = this.c.h();
        if (!e.y.booleanValue()) {
            e.a(this.a);
        }
        setTheme(f.a().g());
        super.onCreate(bundle);
        setContentView(a());
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.b = f.a().d();
        this.d = e.q;
        this.g = e.v;
        this.f = e.r;
        this.e = e.n;
        f();
        if (d().booleanValue()) {
            registerForContextMenu(getListView());
        }
    }

    protected Dialog onCreateDialog(int i) {
        return i == 6666 ? am.a(this) : super.onCreateDialog(i);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getSupportMenuInflater().inflate(2131558400, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131034457:
                startActivityForResult(new Intent(this, Preferences.class), 0);
                break;
            case 2131034458:
                startActivity(new Intent(this, AboutDialog.class));
                break;
            case 2131034459:
                showDialog(6666);
                break;
            case 2131034460:
                finish();
                break;
        }
        return true;
    }
}