package com.wopnersoft.unitconverter.plus.specialized;

import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.b.o;
import com.wopnersoft.unitconverter.plus.b.s;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.QuickViewDialog;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;
import java.util.HashMap;
import java.util.Map;

// compiled from: ProGuard
public final class dBmToWattConverter extends o {
    private Spinner f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private ImageButton n;

    public dBmToWattConverter() {
        this.f = null;
        this.j = null;
        this.n = null;
    }

    private void a(Bundle bundle) {
        bundle.putInt("from_pos", this.f.getSelectedItemPosition());
        bundle.putString("input_val", this.d.getText().toString().trim());
    }

    private void a(SpinnerAdapter spinnerAdapter) {
        Spinner spinner = this.f;
        spinner.setAdapter(spinnerAdapter);
        spinner.setOnItemSelectedListener(new p(this));
    }

    private void b(Bundle bundle) {
        this.d.setText(bundle.getString("input_val"));
        this.f.setSelection(bundle.getInt("from_pos"));
    }

    protected void a() {
        a(String.format("%s %s %s", new Object[]{getString(2131362608), getString(2131362646), getString(2131362424)}), new r());
        a(String.format("%s %s %s", new Object[]{getString(2131362424), getString(2131362646), getString(2131362608)}), new q());
        a(super.f());
        if (this.b > -1) {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362694))).append(" - ").append(getString(2131362766)).toString());
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
        s a = a(b.a(this.f));
        Map hashMap = new HashMap();
        hashMap.put("INPUT_VAL", Double.valueOf(m()));
        this.j.setText(a(Double.valueOf(a.a(hashMap)).doubleValue()));
    }

    protected void c() {
        aa aaVar;
        aa aaVar2 = null;
        try {
            aaVar = new aa(this);
            try {
                aaVar.a();
                if (aaVar.a(150, b.a(this.f), "", m(), 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar != null) {
                        aaVar.b();
                    }
                } else {
                    if (aaVar.a(150, b.a(this.f), 0.0d, "", 0.0d, m()) > -1) {
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
        this.n = (ImageButton) findViewById(2131034203);
        this.j.setText("");
    }

    protected void h() {
        super.h();
        e.a(this.g);
        e.a(this.h);
        e.a(this.i);
        if (this.c != null) {
            e.a(this.c);
        }
        e.c(this.j);
        if (e.k.booleanValue()) {
            this.n.setVisibility(0);
        } else {
            this.n.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
    }

    public boolean onContextItemSelected(android.view.MenuItem menuItem) {
        if (menuItem.getItemId() != 1000) {
            return super.onContextItemSelected(menuItem);
        }
        a(this.j.getText());
        return true;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        registerForContextMenu(this.j);
        this.g.setText(getString(2131362715));
        this.n.setOnClickListener(new o(this));
        this.n.setImageResource(f.a().a((int)ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT));
        if (bundle != null) {
            b(bundle);
        }
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.add(0, 1000, 0, 2131361902);
        contextMenu.setHeaderTitle(2131361900);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        Boolean valueOf = Boolean.valueOf(super.onCreateOptionsMenu(menu));
        menu.findItem(2131034462).setVisible(true);
        return valueOf.booleanValue();
    }

    protected void onDestroy() {
        b.a(this.j);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131034462) {
            return super.onOptionsItemSelected(menuItem);
        }
        Object obj = new Object[48];
        String[] strArr = (String[]) obj.clone();
        int i = 0;
        while (i < obj.length) {
            obj[i] = String.valueOf(i);
            strArr[i] = a(Math.pow(10.0d, ((((double) i) * 1.0d) - 30.0d) / 10.0d));
            i++;
        }
        Intent intent = new Intent(this, QuickViewDialog.class);
        intent.putExtra("name", strArr);
        intent.putExtra("val", obj);
        intent.putExtra("header", "dBm = Watt         ");
        intent.putExtra("convname", getString(2131362766));
        intent.putExtra("catid", B());
        startActivity(intent);
        return true;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a(bundle);
    }
}