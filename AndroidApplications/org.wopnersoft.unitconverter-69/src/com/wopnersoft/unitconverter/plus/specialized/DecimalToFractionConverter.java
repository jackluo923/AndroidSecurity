package com.wopnersoft.unitconverter.plus.specialized;

import android.os.Bundle;
import android.widget.RadioButton;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.wopnersoft.unitconverter.plus.b.o;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.e.a;
import com.wopnersoft.unitconverter.plus.e.b;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;
import java.text.DecimalFormat;
import java.text.ParseException;

// compiled from: ProGuard
public final class DecimalToFractionConverter extends o {
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private TextView n;
    private RadioButton o;
    private RadioButton p;
    private RadioButton q;
    private String r;

    public DecimalToFractionConverter() {
        this.f = null;
        this.g = null;
    }

    private void a(Bundle bundle) {
        bundle.putString("input_val", q());
        bundle.putString("dec_frac_mode", this.r);
    }

    private void b(Bundle bundle) {
        this.d.setText(bundle.getString("input_val"));
        this.r = bundle.getString("dec_frac_mode");
    }

    private double p() {
        try {
            return Double.parseDouble(q());
        } catch (Exception e) {
            return Double.parseDouble(q().replace(',', '.'));
        }
    }

    private String q() {
        return this.d.getText().toString().trim();
    }

    protected void a() {
        if (this.b > -1) {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362745))).append(" - ").append(getString(2131362767)).toString());
            aaVar.a();
            ac c = aaVar.c(this.b);
            if (c != null) {
                this.d.setText(String.valueOf(c.g));
                if (c.c == null || "bm".equals(c.c)) {
                    this.o.setChecked(true);
                    this.r = "bm";
                } else if ("ex".equals(c.c)) {
                    this.p.setChecked(true);
                    this.r = "ex";
                } else {
                    this.q.setChecked(true);
                    this.r = "rl";
                }
            }
            aaVar.b();
        }
    }

    protected void b() {
        try {
            double a;
            double p = p();
            if ("ex".equals(this.r)) {
                a aVar = new a(p, 1.0E-5d);
                String toString = aVar.toString();
                a = b.a(toString);
                this.f.setText(toString);
                aVar.a();
                this.g.setText(aVar.toString());
            } else if ("bm".equals(this.r)) {
                b = b.b(p);
                a = b.a(b);
                this.f.setText(b);
                this.g.setText(new StringBuilder(String.valueOf(b.d(p))).append(" ").append(b.b(b.c(p))).toString());
            } else {
                b = b.b(p, (int)R.styleable.SherlockTheme_listPopupWindowStyle);
                a = b.a(b);
                this.f.setText(b);
                this.g.setText(new StringBuilder(String.valueOf(b.d(p))).append(" ").append(b.b(b.c(p), (int)R.styleable.SherlockTheme_listPopupWindowStyle)).toString());
            }
            if (a > Double.NEGATIVE_INFINITY) {
                try {
                    a = Math.abs(p - a);
                    this.n.setText(new StringBuilder(String.valueOf(getString(2131362063))).append(": ").append(new DecimalFormat("0.0#######").format(a)).toString());
                } catch (Exception e) {
                    this.n.setText("");
                }
            }
        } catch (ParseException e2) {
            o(getString(2131362066));
            this.f.setText("");
            this.g.setText("");
            this.n.setText("");
        }
    }

    protected void c() {
        aa aaVar;
        aa aaVar2 = null;
        try {
            double p = p();
            aaVar = new aa(this);
            try {
                aaVar.a();
                if (aaVar.a(152, this.r, "", p, 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar != null) {
                        aaVar.b();
                    }
                } else {
                    if (aaVar.a(152, this.r, 0.0d, "", 0.0d, p) > -1) {
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
            o(getString(2131362066));
            if (aaVar2 != null) {
                aaVar2.b();
            }
        } catch (Throwable th) {
            Throwable th2 = th;
            if (aaVar2 != null) {
                aaVar2.b();
            }
            throw th2;
        }
    }

    protected void d() {
        setContentView(2130903070);
        this.f = (TextView) findViewById(2131034228);
        this.g = (TextView) findViewById(2131034230);
        this.n = (TextView) findViewById(2131034231);
        this.h = (TextView) findViewById(2131034187);
        this.i = (TextView) findViewById(2131034227);
        this.j = (TextView) findViewById(2131034229);
        this.o = (RadioButton) findViewById(2131034224);
        this.p = (RadioButton) findViewById(2131034226);
        this.q = (RadioButton) findViewById(2131034225);
        this.f.setText("");
        this.g.setText("");
        this.n.setText("");
        this.o.setChecked(true);
    }

    protected void h() {
        super.h();
        e.a(this.h);
        e.a(this.i);
        e.a(this.j);
        e.b(this.n);
        e.a(this.o);
        e.a(this.p);
        e.a(this.q);
        e.a((TextView) findViewById(2131034223));
        if (this.c != null) {
            e.a(this.c);
        }
        e.c(this.f);
        e.c(this.g);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.h.setText(getString(2131362327));
        this.i.setText(getString(2131362333));
        this.j.setText(getString(2131362338));
        this.o.setOnClickListener(new d(this));
        this.p.setOnClickListener(new e(this));
        this.q.setOnClickListener(new f(this));
        try {
            h();
        } catch (Exception e) {
            a(getString(2131362057), "DecimalToFractionConverter.onCreate", e);
        }
        String a = this.l.a(getClass(), "_acctype");
        if (a == null || "bm".equals(a)) {
            this.r = "bm";
            this.o.setChecked(true);
        } else if ("ex".equals(a)) {
            this.r = "ex";
            this.p.setChecked(true);
        } else {
            this.r = "rl";
            this.q.setChecked(true);
        }
        if (bundle != null) {
            b(bundle);
        }
        l();
    }

    protected void onDestroy() {
        com.wopnersoft.unitconverter.plus.d.b.a(this.f);
        com.wopnersoft.unitconverter.plus.d.b.a(this.g);
        super.onDestroy();
    }

    protected void onPause() {
        this.l.a(getClass(), this.r, "_acctype");
        super.onPause();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a(bundle);
    }
}