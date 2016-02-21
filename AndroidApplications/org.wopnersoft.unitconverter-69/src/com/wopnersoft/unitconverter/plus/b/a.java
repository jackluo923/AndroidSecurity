package com.wopnersoft.unitconverter.plus.b;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.Html;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.converter.CurrencyConverter;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.d.f;
import com.wopnersoft.unitconverter.plus.util.ClearableEditText;
import com.wopnersoft.unitconverter.plus.util.QuickViewDialog;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ad;
import com.wopnersoft.unitconverter.plus.util.ag;
import com.wopnersoft.unitconverter.plus.util.ai;
import com.wopnersoft.unitconverter.plus.util.p;
import com.wopnersoft.unitconverter.plus.util.q;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

// compiled from: ProGuard
public abstract class a extends ae {
    protected List a;
    protected TextView b;
    protected long c;
    protected String d;
    protected Boolean e;
    protected String[] f;
    protected String[] g;
    protected String[] h;
    private double i;
    private Button j;
    private ImageButton n;
    private ImageButton o;
    private TextView p;
    private TextView q;
    private TextView r;
    private ClearableEditText s;
    private ClearableEditText t;
    private Spinner u;
    private Spinner v;
    private ImageButton w;
    private ImageButton x;
    private String y;

    public a() {
        this.b = null;
        this.d = "1";
        this.j = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
    }

    private double C() {
        try {
            return Double.parseDouble(D());
        } catch (Exception e) {
            try {
                return Double.parseDouble(D().replace(',', '.'));
            } catch (Exception e2) {
                i("0");
                return 0.0d;
            }
        }
    }

    private String D() {
        return this.t.getText().toString().trim();
    }

    private void a_(Bundle bundle) {
        bundle.putInt("from_pos", this.u.getSelectedItemPosition());
        bundle.putInt("to_pos", this.v.getSelectedItemPosition());
        bundle.putString("input_val", o());
        bundle.putString("input_val2", D());
    }

    private void a_(SpinnerAdapter spinnerAdapter) {
        this.u.setAdapter(spinnerAdapter);
        this.u.setOnItemSelectedListener(new e(this));
    }

    private void b(Bundle bundle) {
        try {
            this.k = Boolean.valueOf(false);
            i(bundle.getString("input_val"));
            this.t.setText(bundle.getString("input_val2"));
            this.u.setSelection(bundle.getInt("from_pos"));
            this.k = Boolean.valueOf(true);
            this.v.setSelection(bundle.getInt("to_pos"));
            a(l());
        } catch (Exception e) {
            a("BaseConverter.populateFields", "error populateFields", e);
        }
    }

    private void b(SpinnerAdapter spinnerAdapter) {
        this.v.setAdapter(spinnerAdapter);
        this.v.setOnItemSelectedListener(new f(this));
    }

    private final void y() {
        try {
            boolean z;
            String a = a(l(), o(), D());
            List a2 = a(l(), String.valueOf(n()));
            Intent intent = new Intent(this, QuickViewDialog.class);
            intent.putExtra("name", (String[]) a2.get(0));
            intent.putExtra("val", (String[]) a2.get(1));
            intent.putExtra("header", a);
            if (this instanceof CurrencyConverter) {
                intent.putExtra("convname", p.a(this.l));
            } else {
                intent.putExtra("convname", this.l.c(b()));
            }
            intent.putExtra("catid", B());
            int[] r = r();
            intent.putExtra("txt1w", r[0]);
            intent.putExtra("txt2w", r[1]);
            a = "iscurrency";
            z = this instanceof CurrencyConverter && this.l.b().booleanValue();
            intent.putExtra(a, z);
            intent.putExtra("spinnerval", l());
            startActivity(intent);
        } catch (Exception e) {
            a(getString(2131362067), "launchQuickListView", e);
        }
    }

    private double z() {
        try {
            return Double.parseDouble(o());
        } catch (Exception e) {
            try {
                return Double.parseDouble(o().replace(',', '.'));
            } catch (Exception e2) {
                i("1");
                return 1.0d;
            }
        }
    }

    protected abstract double a_(String str, String str2, double d, Boolean bool);

    protected String a_(String str, String str2, String str3) {
        return new StringBuilder(String.valueOf(str2)).append(" ").append(str).append(" =").toString();
    }

    protected abstract List a_(String str, String str2);

    protected abstract void a_();

    protected void a_(double d, double d2) {
        aa aaVar = null;
        try {
            aa aaVar2 = new aa(this);
            try {
                aaVar2.a();
                if (aaVar2.a(b(), l(), m(), z(), this.t.getVisibility() == 0 ? C() : 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar2 != null) {
                        aaVar2.b();
                    }
                } else {
                    if (aaVar2.a(b(), l(), d, m(), d2, z(), this.t.getVisibility() == 0 ? C() : 0.0d) > -1) {
                        o(getString(2131362388));
                    }
                    if (aaVar2 != null) {
                        aaVar2.b();
                    }
                }
            } catch (Exception e) {
                aaVar = aaVar2;
                exception = e;
                a(getString(2131362056), "BaseConverter", exception);
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Throwable th) {
                aaVar = aaVar2;
                th = th;
                if (aaVar != null) {
                    aaVar.b();
                }
                throw th;
            }
        } catch (Exception e2) {
            exception = e2;
            try {
                Exception exception2;
                a(getString(2131362056), "BaseConverter", exception2);
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                if (aaVar != null) {
                    aaVar.b();
                }
                throw th3;
            }
        }
    }

    protected final void a_(int i) {
        this.k = Boolean.valueOf(true);
        this.u.setSelection(i);
    }

    protected void a_(SharedPreferences sharedPreferences, Map map) {
        super.a(sharedPreferences, map);
        this.j.performClick();
    }

    protected void a_(Boolean bool) {
        this.x.setVisibility(bool.booleanValue() ? 0 : MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
    }

    protected void a_(String str) {
    }

    protected void a_(String str, String str2, double d, double d2) {
    }

    protected String[] a_(String[] strArr) {
        return strArr;
    }

    protected abstract long b();

    protected final void b(int i) {
        this.k = Boolean.valueOf(true);
        this.v.setSelection(i);
    }

    protected void b(Boolean bool) {
        boolean z;
        String[] strArr = (String[]) this.a.toArray(new String[0]);
        this.a.clear();
        this.a = null;
        if (!bool.booleanValue()) {
            Arrays.sort(strArr, Collator.getInstance());
        }
        this.f = (String[]) strArr.clone();
        String[] strArr2 = this.f;
        z = this instanceof CurrencyConverter && this.l.b().booleanValue();
        SpinnerAdapter a = b.a(this, strArr2, Boolean.valueOf(z));
        this.g = (String[]) this.f.clone();
        a(a);
        a.notifyDataSetChanged();
        strArr2 = a(this.f);
        this.h = strArr2;
        z = this instanceof CurrencyConverter && this.l.b().booleanValue();
        a = b.a(this, strArr2, Boolean.valueOf(z));
        b(a);
        a.notifyDataSetChanged();
        this.k = Boolean.valueOf(true);
        if (!bool.booleanValue()) {
            Object c;
            int position;
            c = "".equals(this.y) ? this.l.c(getClass()) : this.y;
            String d = this.l.d(getClass());
            this.k = Boolean.valueOf(false);
            if (c == null) {
                this.u.setSelection(0);
            } else {
                position = a.getPosition(c);
                if (position > -1) {
                    this.u.setSelection(position);
                } else {
                    this.u.setSelection(0);
                }
            }
            this.k = Boolean.valueOf(true);
            if (d == null) {
                this.v.setSelection(1);
            } else {
                position = a.getPosition(d);
                if (position > -1) {
                    this.v.setSelection(position);
                } else {
                    this.v.setSelection(1);
                }
            }
        }
    }

    protected void b(String str) {
    }

    protected void b(String str, String str2) {
        if (e.d.booleanValue()) {
            this.s.setKeyListener(new q(2048, true, false));
            this.t.setKeyListener(new q(2048, false, true));
        } else {
            this.s.setKeyListener(new q(true, false));
            this.t.setKeyListener(new q(false, true));
        }
        this.r.setText(str);
        this.b.setText(str2);
        this.s.setText(this.d);
        this.t.setText("0");
        this.b.setVisibility(0);
        this.t.setVisibility(0);
    }

    protected String[] b(String[] strArr) {
        return strArr;
    }

    protected ai c() {
        return ai.a;
    }

    protected final void c(String str) {
        ((TextView) findViewById(2131034182)).setText(str);
    }

    protected Boolean d() {
        return this.m == null ? Boolean.valueOf(true) : ((q) this.m.getKeyListener()).a();
    }

    protected final void d(String str) {
        ((TextView) findViewById(2131034192)).setText(str);
    }

    protected Boolean e() {
        return this.m == null ? Boolean.valueOf(true) : ((q) this.m.getKeyListener()).b();
    }

    protected final void e(String str) {
        ((TextView) findViewById(2131034200)).setText(str);
    }

    protected final Pair f() {
        return new Pair(this.d, "0");
    }

    protected final void f(String str) {
        this.r.setText(str);
    }

    protected void g() {
        try {
            a();
        } catch (Exception e) {
            a(getString(2131362067), "callBuildConversionMapAndBind", e);
        }
    }

    protected final void g(String str) {
        this.p.setText(str);
        if (str.length() == 0) {
            this.q.setText("");
        } else if (this.t.getVisibility() == 0) {
            this.q.setText(String.format("%s %s %s %s = %s %s", new Object[]{o(), this.r.getText(), D(), this.b.getText(), this.p.getText(), m()}));
        } else {
            this.q.setText(String.format("%s %s = %s %s", new Object[]{o(), l(), this.p.getText(), m()}));
        }
    }

    protected void h() {
        boolean z = true;
        e.a((TextView) findViewById(2131034182));
        e.a((TextView) findViewById(2131034192));
        e.a(this.r);
        e.a(this.b);
        e.b((TextView) findViewById(2131034206));
        e.b((TextView) findViewById(2131034207));
        e.a((TextView) findViewById(2131034200));
        e.b(this.q);
        this.q.setVisibility(e.e.booleanValue() ? 0 : 8);
        e.c(this.p);
        f.a().a(getSupportActionBar(), b());
        if (e.d.booleanValue()) {
            this.s.setKeyListener(new q(2048, true, true));
        } else {
            this.s.setKeyListener(new q());
        }
        this.s.setTextSize(e.a());
        this.t.setIsTextEditor(Boolean.valueOf(!e.h.booleanValue()));
        ClearableEditText clearableEditText = this.s;
        if (e.h.booleanValue()) {
            z = false;
        }
        clearableEditText.setIsTextEditor(Boolean.valueOf(z));
        if (e.j.booleanValue()) {
            this.n.setVisibility(0);
            this.o.setVisibility(0);
        } else {
            this.n.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            this.o.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
        if (e.k.booleanValue()) {
            this.w.setVisibility(0);
        } else {
            this.w.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
        a(e.g);
    }

    protected final void h(String str) {
        this.p.setText(Html.fromHtml(str), BufferType.SPANNABLE);
        if (this.t.getVisibility() == 0) {
            this.q.setText(Html.fromHtml(String.format("%s %s %s %s = %s %s", new Object[]{o(), this.r.getText(), D(), this.b.getText(), str, ""})), BufferType.SPANNABLE);
        } else {
            this.q.setText(Html.fromHtml(String.format("%s %s = %s %s", new Object[]{o(), l(), str, ""})), BufferType.SPANNABLE);
        }
    }

    protected void i() {
        this.a = new ArrayList();
    }

    protected final void i(String str) {
        this.s.setText(str);
    }

    protected void j() {
        b(Boolean.valueOf(false));
    }

    protected final void j(String str) {
        this.t.setText(str);
    }

    protected final TextView k(String str) {
        TextView textView = (TextView) findViewById(2131034206);
        textView.setText(str);
        textView.setVisibility(0);
        return textView;
    }

    protected final void k() {
        c(getString(2131362280));
        d(getString(2131362646));
        e(getString(2131362578));
        f(getString(2131362786));
        this.u.setPrompt(getString(2131362280));
        this.v.setPrompt(getString(2131362646));
    }

    protected final TextView l(String str) {
        TextView textView = (TextView) findViewById(2131034207);
        textView.setText(str);
        textView.setVisibility(0);
        return textView;
    }

    protected final String l() {
        return b.a(this.u);
    }

    protected Boolean m(String str) {
        return Boolean.valueOf(false);
    }

    protected final String m() {
        return b.a(this.v);
    }

    protected Object n() {
        return Double.valueOf(z());
    }

    protected String o() {
        return this.s.getText().toString().trim();
    }

    public boolean onContextItemSelected(android.view.MenuItem menuItem) {
        if (menuItem.getItemId() != 1000) {
            return super.onContextItemSelected(menuItem);
        }
        if (menuItem.getOrder() == 0) {
            a(this.p.getText());
        } else {
            a(this.q.getText());
        }
        return true;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2130903065);
        this.c = getIntent().getLongExtra("_id", -1);
        this.y = getIntent().getStringExtra("searchDefUnit");
        if (this.y == null) {
            this.y = "";
        }
        this.e = Boolean.valueOf(false);
        this.u = (Spinner) findViewById(2131034185);
        this.v = (Spinner) findViewById(2131034196);
        this.b = (TextView) findViewById(2131034189);
        this.t = (ClearableEditText) findViewById(2131034190);
        this.b.setText("");
        this.t.setText("0");
        this.t.setSelectAllOnFocus(false);
        this.t.setIsTextEditor(Boolean.valueOf(!e.h.booleanValue()));
        this.t.setOnClickListener(new b(this));
        ((ImageButton) findViewById(2131034191)).setOnClickListener(new g(this));
        this.w = (ImageButton) findViewById(2131034203);
        this.w.setOnClickListener(new h(this));
        this.w.setImageResource(f.a().a((int)ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT));
        this.x = (ImageButton) findViewById(2131034186);
        this.x.setOnClickListener(new i(this));
        this.q = (TextView) findViewById(2131034204);
        registerForContextMenu(this.q);
        this.r = (TextView) findViewById(2131034187);
        this.p = (TextView) findViewById(2131034202);
        registerForContextMenu(this.p);
        this.s = (ClearableEditText) findViewById(2131034188);
        this.s.setText("1");
        this.s.setOnEditorActionListener(new j(this));
        this.s.setSelectAllOnFocus(false);
        this.s.setIsTextEditor(Boolean.valueOf(!e.h.booleanValue()));
        this.s.setOnClickListener(new k(this));
        g("");
        this.n = (ImageButton) findViewById(2131034184);
        this.o = (ImageButton) findViewById(2131034195);
        this.n.setOnClickListener(new l(this));
        this.n.setImageResource(f.a().a((int)R.styleable.SherlockTheme_actionBarStyle));
        this.o.setOnClickListener(new m(this));
        this.o.setImageResource(f.a().a((int)R.styleable.SherlockTheme_actionBarStyle));
        this.j = (Button) findViewById(2131034199);
        e.a(this.j);
        this.j.setOnClickListener(new n(this));
        if (b() > -1) {
            setTitle(String.format(getString(2131362076), new Object[]{this.l.c(j)}));
        }
        k();
        try {
            h();
        } catch (Exception e) {
            a(getString(2131362057), "BaseConverter.onCreate", e);
        }
        if (bundle != null) {
            b(bundle);
        }
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        if (view == this.q) {
            contextMenu.add(0, 1000, 1, 2131361902);
        } else {
            contextMenu.add(0, 1000, 0, 2131361902);
        }
        contextMenu.setHeaderTitle(2131361900);
    }

    protected Dialog onCreateDialog(int i) {
        boolean z = true;
        if (i == 8888) {
            return b.a(new ag(this, this.m, this.j, this.l.getResources(), c(), d(), e()));
        }
        String[] strArr;
        String string;
        Dialog adVar;
        if (i == 8988) {
            strArr = (String[]) this.g.clone();
            string = getString(2131362280);
            if (!(this instanceof CurrencyConverter && this.l.b().booleanValue())) {
                z = false;
            }
            adVar = new ad(this, strArr, string, Boolean.valueOf(z));
            adVar.getListView().setOnItemClickListener(new c(this));
            return adVar;
        } else if (i != 8989) {
            return super.onCreateDialog(i);
        } else {
            strArr = (String[]) this.h.clone();
            string = getString(2131362646);
            if (!(this instanceof CurrencyConverter && this.l.b().booleanValue())) {
                z = false;
            }
            adVar = new ad(this, strArr, string, Boolean.valueOf(z));
            adVar.getListView().setOnItemClickListener(new d(this));
            return adVar;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getSupportMenuInflater().inflate(2131558401, menu);
        menu.findItem(2131034461).setVisible(false);
        if (this.c > -1) {
            menu.findItem(2131034465).setVisible(false);
        }
        return true;
    }

    protected void onDestroy() {
        try {
            unregisterForContextMenu(this.p);
            unregisterForContextMenu(this.q);
            b.a(this.p);
            this.p = null;
            this.f = null;
            super.onDestroy();
        } catch (Exception e) {
            a("BaseConverter.onDestroy", "error cleanup drawables", e);
            super.onDestroy();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2131034462:
                y();
                return true;
            case 2131034463:
                Pair f = f();
                i((String) f.first);
                j((String) f.second);
                this.j.performClick();
                return true;
            case 2131034464:
                t();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    protected void onPause() {
        try {
            if (this.c < 0) {
                this.l.b(getClass(), l());
                this.l.c(getClass(), m());
            }
            super.onPause();
        } catch (Exception e) {
            a("BaseConverter.onPause", "error saving defaults", e);
            super.onPause();
        }
    }

    protected void onPrepareDialog(int i, Dialog dialog) {
        if (i == 8888) {
            ((ag) dialog).a(c(), this.m, d(), e(), Boolean.valueOf(true));
        }
        super.onPrepareDialog(i, dialog);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a(bundle);
    }

    protected void onStart() {
        super.onStart();
        if (!this.e.booleanValue()) {
            g();
            this.e = Boolean.valueOf(true);
        }
    }

    protected Pair p() {
        try {
            return new Pair(Double.valueOf(Double.parseDouble(o())), Double.valueOf(Double.parseDouble(D())));
        } catch (Exception e) {
            try {
                return new Pair(Double.valueOf(Double.parseDouble(o().replace(',', '.'))), Double.valueOf(Double.parseDouble(D().replace(',', '.'))));
            } catch (Exception e2) {
                i("1");
                j("0");
                return new Pair(Double.valueOf(1.0d), Double.valueOf(0.0d));
            }
        }
    }

    protected Pair q() {
        return new Pair(o(), D());
    }

    protected int[] r() {
        return new int[2];
    }

    protected void s() {
        if (e.d.booleanValue()) {
            this.s.setKeyListener(new q(2048, true, true));
        } else {
            this.s.setKeyListener(new q());
        }
        this.b.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        this.t.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        this.t.setText("0");
        f(getString(2131362786));
    }

    protected void t() {
        int selectedItemPosition = this.u.getSelectedItemPosition();
        int selectedItemPosition2 = this.v.getSelectedItemPosition();
        this.k = Boolean.valueOf(false);
        this.u.setSelection(selectedItemPosition2);
        this.k = Boolean.valueOf(true);
        this.v.setSelection(selectedItemPosition);
    }

    protected Boolean u() {
        return Boolean.valueOf(false);
    }

    protected void v() {
        String l = l();
        String m = m();
        double z = z();
        this.i = a(l, m, z, this.k);
        a(l, m, z, this.i);
    }

    protected ClearableEditText w() {
        return this.s;
    }

    protected ImageButton x() {
        return this.w;
    }
}