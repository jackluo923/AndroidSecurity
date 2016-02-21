package com.wopnersoft.unitconverter.plus.specialized;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.b.o;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.ClearableEditText;
import com.wopnersoft.unitconverter.plus.util.QuickViewDialog;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;
import com.wopnersoft.unitconverter.plus.util.ad;
import com.wopnersoft.unitconverter.plus.util.q;

// compiled from: ProGuard
public final class FractionToDecimalConverter extends o {
    private final String[] f;
    private ClearableEditText g;
    private ClearableEditText h;
    private TextView i;
    private TextView j;
    private TextView n;
    private ImageButton o;
    private ImageButton p;

    public FractionToDecimalConverter() {
        this.f = new String[]{"1/64", "1/32", "3/64", "1/16", "5/64", "3/32", "7/64", "1/8", "9/64", "5/32", "11/64", "3/16", "13/64", "7/32", "15/64", "1/4", "17/64", "9/32", "19/64", "5/16", "21/64", "11/32", "23/64", "3/8", "25/64", "13/32", "27/64", "7/16", "29/64", "15/32", "31/64", "1/2", "33/64", "17/32", "35/64", "9/16", "37/64", "19/32", "39/64", "5/8", "41/64", "21/32", "43/64", "11/16", "45/64", "23/32", "47/64", "3/4", "49/64", "25/32", "51/64", "13/16", "53/64", "27/32", "55/64", "7/8", "57/64", "29/32", "59/64", "15/16", "61/64", "31/32", "63/64"};
        this.n = null;
        this.o = null;
        this.p = null;
    }

    private void a(Bundle bundle) {
        bundle.putString("from_pos", this.g.getText().toString());
        bundle.putString("to_pos", this.h.getText().toString());
    }

    private void b(Bundle bundle) {
        this.g.setText(bundle.getString("from_pos"));
        this.h.setText(bundle.getString("to_pos"));
    }

    private void b(String str) {
        String[] split = str.split("/");
        if (split.length > 1) {
            this.g.setText(split[0]);
            this.h.setText(split[1]);
        } else {
            this.g.setText("1");
            this.h.setText("1");
            c("FractionToDecimalConverter", "Fraction favorites not formatted correctly");
        }
    }

    private Boolean p() {
        return (this.h.getText().toString().length() <= 0 || this.g.getText().toString().length() <= 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    protected void a() {
        if (this.b > -1) {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362745))).append(" - ").append(getString(2131362768)).toString());
            aaVar.a();
            ac c = aaVar.c(this.b);
            if (c != null) {
                b(c.c);
                l();
            }
            aaVar.b();
        }
    }

    protected void b() {
        this.n.setText(a(Double.valueOf(this.g.getText().toString()).doubleValue() / Double.valueOf(this.h.getText().toString()).doubleValue()));
    }

    protected void c() {
        aa aaVar;
        aa aaVar2 = null;
        try {
            aaVar = new aa(this);
            try {
                aaVar.a();
                if (aaVar.a(151, new StringBuilder(String.valueOf(this.g.getText().toString())).append("/").append(this.h.getText().toString()).toString(), "", 0.0d, 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar != null) {
                        aaVar.b();
                    }
                } else {
                    if (aaVar.a(151, new StringBuilder(String.valueOf(this.g.getText().toString())).append("/").append(this.h.getText().toString()).toString(), 0.0d, "", 0.0d, 0.0d) > -1) {
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
        setContentView(2130903078);
        this.g = (ClearableEditText) findViewById(2131034258);
        this.h = (ClearableEditText) findViewById(2131034260);
        this.i = (TextView) findViewById(2131034182);
        this.j = (TextView) findViewById(2131034200);
        this.n = (TextView) findViewById(2131034202);
        this.o = (ImageButton) findViewById(2131034203);
        this.p = (ImageButton) findViewById(2131034261);
        this.h.setText("");
        this.g.setText("");
        this.n.setText("");
    }

    protected void h() {
        boolean z = false;
        super.h();
        e.a(this.i);
        e.a(this.j);
        e.a((TextView) findViewById(2131034259));
        float a = e.a();
        this.h.setTextSize(a);
        this.g.setTextSize(a);
        if (e.d.booleanValue()) {
            this.g.setKeyListener(new q(2050, true, false));
            this.h.setKeyListener(new q(2050, true, false));
        } else {
            this.g.setKeyListener(new q(2, true, false));
            this.h.setKeyListener(new q(2, true, false));
        }
        if (e.k.booleanValue()) {
            this.o.setVisibility(0);
        } else {
            this.o.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
        e.c(this.n);
        this.g.setIsTextEditor(Boolean.valueOf(!e.h.booleanValue()));
        ClearableEditText clearableEditText = this.h;
        if (!e.h.booleanValue()) {
            z = true;
        }
        clearableEditText.setIsTextEditor(Boolean.valueOf(z));
    }

    protected Boolean k() {
        return this.m == this.g ? Boolean.valueOf(false) : Boolean.valueOf(true);
    }

    public boolean onContextItemSelected(android.view.MenuItem menuItem) {
        if (menuItem.getItemId() != 1000) {
            return super.onContextItemSelected(menuItem);
        }
        a(this.n.getText());
        return true;
    }

    protected void onCreate(Bundle bundle) {
        boolean z = false;
        super.onCreate(bundle);
        this.i.setText(getString(2131362333));
        this.j.setText(getString(2131362327));
        this.o.setOnClickListener(new g(this));
        this.o.setImageResource(f.a().a((int)ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT));
        this.p.setOnClickListener(new h(this));
        this.p.setImageResource(f.a().a(0));
        this.g.setOnEditorActionListener(new i(this));
        this.g.setSelectAllOnFocus(false);
        this.g.setIsTextEditor(Boolean.valueOf(!e.h.booleanValue()));
        this.g.setOnClickListener(new j(this));
        this.h.setOnEditorActionListener(new k(this));
        this.h.setSelectAllOnFocus(false);
        ClearableEditText clearableEditText = this.h;
        if (!e.h.booleanValue()) {
            z = true;
        }
        clearableEditText.setIsTextEditor(Boolean.valueOf(z));
        this.h.setOnClickListener(new l(this));
        registerForContextMenu(this.n);
        if (this.b > -1) {
            b();
        } else if (bundle != null) {
            b(bundle);
            l();
        }
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        contextMenu.add(0, 1000, 0, 2131361902);
        contextMenu.setHeaderTitle(2131361900);
    }

    protected Dialog onCreateDialog(int i) {
        if (i != 14785) {
            return super.onCreateDialog(i);
        }
        Dialog adVar = new ad(this, this.f, getString(2131362333), Boolean.valueOf(false));
        adVar.getListView().setOnItemClickListener(new m(this));
        return adVar;
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        Boolean valueOf = Boolean.valueOf(super.onCreateOptionsMenu(menu));
        menu.findItem(2131034462).setVisible(true);
        return valueOf.booleanValue();
    }

    protected void onDestroy() {
        b.a(this.n);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131034462) {
            String[] strArr = new String[this.f.length];
            int i = 0;
            while (i < this.f.length) {
                String[] split = this.f[i].split("/");
                if (split.length > 1) {
                    strArr[i] = String.valueOf(Double.valueOf(split[0]).doubleValue() / Double.valueOf(split[1]).doubleValue());
                } else {
                    strArr[i] = "?";
                }
                i++;
            }
            Intent intent = new Intent(this, QuickViewDialog.class);
            intent.putExtra("name", strArr);
            intent.putExtra("val", this.f);
            intent.putExtra("header", new StringBuilder(String.valueOf(getString(2131362333))).append(" = ").append(getString(2131362327)).toString());
            intent.putExtra("convname", getString(2131362768));
            intent.putExtra("catid", B());
            startActivity(intent);
            return true;
        } else if (menuItem.getItemId() != 2131034463) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            this.h.setText("1");
            this.g.setText("1");
            l();
            return true;
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a(bundle);
    }
}