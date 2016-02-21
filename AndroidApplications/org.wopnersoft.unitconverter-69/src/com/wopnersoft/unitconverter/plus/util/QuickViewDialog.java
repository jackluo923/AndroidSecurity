package com.wopnersoft.unitconverter.plus.util;

import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.b.u;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public class QuickViewDialog extends u {
    private View a;
    private TextView b;
    private ListView c;

    public boolean onContextItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 50) {
            return super.onContextItemSelected(menuItem);
        }
        a(((ay) ((AdapterContextMenuInfo) menuItem.getMenuInfo()).targetView.getTag()).a.getText());
        return true;
    }

    protected void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        SharedPreferences h = this.l.h();
        setContentView(2130903089);
        getSupportActionBar().setDisplayShowHomeEnabled(false);
        Bundle extras = getIntent().getExtras();
        String[] strArr = (String[]) extras.get("name");
        String[] strArr2 = (String[]) extras.get("val");
        String str = (String) extras.get("header");
        String str2 = (String) extras.get("convname");
        long longValue = ((Long) extras.get("catid")).longValue();
        int i = extras.getInt("txt1w", 0);
        int i2 = extras.getInt("txt2w", 0);
        float b = e.b();
        Boolean valueOf = Boolean.valueOf(extras.getBoolean("iscurrency"));
        String string = extras.getString("spinnerval");
        if (valueOf.booleanValue()) {
            setTitle(str2);
        } else {
            setTitle(new StringBuilder(String.valueOf(getString(2131362525))).append(" - ").append(str2).toString());
        }
        this.a = findViewById(2131034128);
        b.a(this.a);
        f.a().a(this.a, "THEME_ICON_RESULT_TXT_BORDER_NEW");
        this.b = (TextView) findViewById(2131034314);
        b.a(this.b);
        e.a(this.b);
        this.b.setText(str);
        if (valueOf.booleanValue() && string != null && this.l.b().booleanValue()) {
            b.a(this, string, this.b, Boolean.valueOf(false));
        } else {
            this.b.setCompoundDrawablesWithIntrinsicBounds(f.a().a(longValue), null, null, null);
        }
        this.c = (ListView) findViewById(2131034315);
        int d = f.a().d();
        findViewById(2131034313).setBackgroundColor(d);
        this.c.setBackgroundColor(d);
        this.c.setCacheColorHint(d);
        ListView listView = this.c;
        z = valueOf.booleanValue() && this.l.b().booleanValue();
        listView.setAdapter(new ax(this, h, strArr, strArr2, i, i2, b, Boolean.valueOf(z)));
        registerForContextMenu(this.c);
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.add(0, ActivityChooserModel.DEFAULT_HISTORY_MAX_LENGTH, 0, 2131361903);
        contextMenu.setHeaderTitle(getString(2131361909));
    }

    protected void onDestroy() {
        try {
            this.a.getBackground().setCallback(null);
            this.a = null;
            Drawable[] compoundDrawables = this.b.getCompoundDrawables();
            int length = compoundDrawables.length;
            int i = 0;
            while (i < length) {
                Drawable drawable = compoundDrawables[i];
                if (drawable != null) {
                    drawable.setCallback(null);
                }
                i++;
            }
            this.b = null;
            unregisterForContextMenu(this.c);
            this.c.setAdapter(null);
            b.a(this.c);
            this.c = null;
            super.onDestroy();
        } catch (Exception e) {
            a("QuickViewDialog.onDestroy", "Error cleaning up images", e);
            super.onDestroy();
        }
    }
}