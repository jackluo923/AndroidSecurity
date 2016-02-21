package com.wopnersoft.unitconverter.plus.specialized;

import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.b.o;
import com.wopnersoft.unitconverter.plus.b.s;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;
import java.util.HashMap;
import java.util.Map;

// compiled from: ProGuard
public final class AD590Converter extends o {
    private Spinner f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;

    public AD590Converter() {
        this.f = null;
        this.j = null;
    }

    private void a(Bundle bundle) {
        bundle.putInt("from_pos", this.f.getSelectedItemPosition());
        bundle.putString("input_val", this.d.getText().toString().trim());
    }

    private void a(SpinnerAdapter spinnerAdapter) {
        Spinner spinner = this.f;
        spinner.setAdapter(spinnerAdapter);
        spinner.setOnItemSelectedListener(new a(this));
    }

    private void b(Bundle bundle) {
        this.c.setTag(Boolean.valueOf(false));
        this.d.setText(bundle.getString("input_val"));
        this.c.setTag(Boolean.valueOf(true));
        this.f.setSelection(bundle.getInt("from_pos"));
    }

    protected void a() {
        a(String.format("%s %s %s", new Object[]{getString(2131362341), getString(2131362646), getString(2131362328)}), new c(null));
        a(String.format("%s %s %s", new Object[]{getString(2131362328), getString(2131362646), getString(2131362341)}), new b(null));
        a(super.f());
        if (this.b > -1) {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362694))).append(" - ").append(getString(2131362764)).toString());
            aaVar.a();
            ac c = aaVar.c(this.b);
            if (c != null) {
                this.d.setText(String.valueOf(c.g));
                if (b.a(this.f).equalsIgnoreCase(c.c)) {
                    l();
                } else {
                    this.f.setSelection(1);
                }
            }
            aaVar.b();
        }
    }

    protected void b() {
        String string;
        s a = a(b.a(this.f));
        Map hashMap = new HashMap();
        string = a instanceof c ? getString(2131362328) : getString(2131362341);
        hashMap.put("INPUT_VAL", Double.valueOf(m()));
        this.j.setText(new StringBuilder(String.valueOf(a(Double.valueOf(a.a(hashMap)).doubleValue()))).append(" ").append(string).toString());
    }

    protected void c() {
        aa aaVar;
        aa aaVar2 = null;
        try {
            aaVar = new aa(this);
            try {
                aaVar.a();
                if (aaVar.a(153, b.a(this.f), "", m(), 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar != null) {
                        aaVar.b();
                    }
                } else {
                    if (aaVar.a(153, b.a(this.f), 0.0d, "", 0.0d, m()) > -1) {
                        o(getString(2131362388));
                    }
                    if (aaVar != null) {
                        aaVar.b();
                    }
                }
            } catch (Exception e) {
                o(getString(2131362056));
                if (aaVar != null) {
                    aaVar.b();
                }
            }
        } catch (Exception e2) {
            aaVar = aaVar2;
            try {
                o(getString(2131362056));
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Throwable th) {
                aaVar2 = aaVar;
                th = th;
                if (aaVar2 != null) {
                    aaVar2.b();
                }
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            if (aaVar2 != null) {
                aaVar2.b();
            }
            throw th3;
        }
    }

    protected void d() {
        setContentView(2130903069);
        this.f = (Spinner) findViewById(2131034185);
        this.g = (TextView) findViewById(2131034182);
        this.h = (TextView) findViewById(2131034200);
        this.i = (TextView) findViewById(2131034187);
        this.h.setText(getString(2131362578));
        this.i.setText(getString(2131362786));
        this.j = (TextView) findViewById(2131034202);
        this.j.setText("");
    }

    protected void h() {
        super.h();
        e.a(this.g);
        e.a(this.h);
        e.a(this.i);
        e.c(this.j);
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 1000) {
            return super.onContextItemSelected(menuItem);
        }
        a(this.j.getText());
        return true;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerForContextMenu(this.j);
        this.g.setText(getString(2131362713));
        findViewById(2131034203).setVisibility(com.actionbarsherlock.view.MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        if (bundle != null) {
            b(bundle);
        }
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.add(0, 1000, 0, 2131361902);
        contextMenu.setHeaderTitle(2131361900);
    }

    protected void onDestroy() {
        b.a(this.j);
        super.onDestroy();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a(bundle);
    }
}