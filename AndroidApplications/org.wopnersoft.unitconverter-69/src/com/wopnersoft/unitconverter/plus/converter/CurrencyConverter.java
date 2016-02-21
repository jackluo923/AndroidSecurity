package com.wopnersoft.unitconverter.plus.converter;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageButton;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.Window;
import com.wopnersoft.unitconverter.plus.a.d;
import com.wopnersoft.unitconverter.plus.a.h;
import com.wopnersoft.unitconverter.plus.b.aa;
import com.wopnersoft.unitconverter.plus.b.ac;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.util.am;
import com.wopnersoft.unitconverter.plus.util.m;
import com.wopnersoft.unitconverter.plus.util.p;
import java.util.HashMap;
import java.util.Map;

// compiled from: ProGuard
public class CurrencyConverter extends ac implements aa {
    h j;
    private String n;
    private String o;
    private TextView p;
    private Map q;
    private d r;
    private p s;

    public CurrencyConverter() {
        this.n = "USD - US Dollar";
        this.o = "EUR - Euro";
        this.j = new a(this);
    }

    private void D() {
        ImageButton imageButton = (ImageButton) findViewById(2131034205);
        if (this.l.b().booleanValue()) {
            imageButton.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            ((TextView) findViewById(2131034206)).setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        } else {
            k(getString(2131361917)).setTextColor(-16776961);
            imageButton.setVisibility(0);
            imageButton.setOnClickListener(new c(this));
        }
        l(getString(2131362577)).setTextSize(e.a("0"));
    }

    private void E() {
        setTitle(this.s.f());
    }

    private void q(String str) {
        Log.e("CurrencyConverter", new StringBuilder("**** Currency Converter Error: ").append(str).toString());
        r(new StringBuilder("Error: ").append(str).toString());
        this.l.a("CurrencyConverter", str);
    }

    private void r(String str) {
        Builder builder = new Builder(this);
        builder.setMessage(str);
        builder.setNeutralButton(getString(17039370), null);
        Log.d("CurrencyConverter", new StringBuilder("Showing alert dialog: ").append(str).toString());
        builder.create().show();
    }

    public void C() {
        Log.d("CurrencyConverter", "Upgrade button clicked; launching purchase flow for upgrade.");
        this.r.a(this, "org.wopnersoft.unitconverter.pro_currency", 10020, this.j, "71E6809FE5FD7");
    }

    protected void a(String str, String str2, double d, double d2) {
        double n = n(str2) / n(str);
        this.p.setText(String.format("%s %s", new Object[]{getString(2131362075), b.a(e.t.format(n))}));
    }

    public Object a_() {
        return Long.valueOf(10204);
    }

    public void a_(String str) {
        E();
        String l = l();
        String m = m();
        if (l.length() > 0) {
            this.n = l;
        }
        if (m.length() > 0) {
            this.o = m;
        }
        g();
        if (str.length() > 0) {
            super.o(str);
        }
    }

    protected void h() {
        try {
            super.h();
        } catch (Exception e) {
            a(getString(2131362057), "CurrencyConverter.applyPreferences", e);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        Log.d("CurrencyConverter", new StringBuilder("onActivityResult(").append(i).append(",").append(i2).append(",").append(intent).toString());
        if (this.r != null) {
            if (this.r.a(i, i2, intent)) {
                Log.d("CurrencyConverter", "onActivityResult handled by IABUtil.");
            } else {
                super.onActivityResult(i, i2, intent);
            }
        }
    }

    protected void onCreate(Bundle bundle) {
        this.i = 170;
        requestWindowFeature(Window.FEATURE_INDETERMINATE_PROGRESS);
        super.onCreate(bundle);
        this.s = new p(this, this.l, getIntent());
        D();
        this.p = (TextView) findViewById(2131034198);
        Log.d("CurrencyConverter", "Creating IAB helper.");
        this.r = this.l.a(this);
        this.r.a(false);
        Log.d("CurrencyConverter", "Starting setup.");
        this.r.a(new b(this));
    }

    protected Dialog onCreateDialog(int i) {
        return i == 0 ? am.a(this) : super.onCreateDialog(i);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.findItem(2131034461).setVisible(true);
        return true;
    }

    public void onDestroy() {
        super.onDestroy();
        Log.d("CurrencyConverter", "Destroying helper.");
        if (this.r != null) {
            this.r.a();
            this.r = null;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131034461) {
            return super.onOptionsItemSelected(menuItem);
        }
        this.s.d();
        return true;
    }

    protected void onStart() {
        super.onStart();
        this.s.b();
        E();
    }

    protected void onStop() {
        super.onStop();
        this.s.c();
    }

    protected int[] r() {
        return new int[]{75, 35};
    }

    protected Boolean u() {
        return this.s.e();
    }

    protected void y() {
        m mVar;
        Throwable th;
        m mVar2;
        com.wopnersoft.unitconverter.plus.util.aa aaVar = null;
        try {
            com.wopnersoft.unitconverter.plus.util.aa aaVar2;
            this.q = new HashMap();
            mVar = new m(this);
            try {
                mVar.a();
                Cursor f;
                int columnIndex;
                int columnIndex2;
                int columnIndex3;
                if (this.c == -1) {
                    f = this.l.b().booleanValue() ? mVar.f() : mVar.g();
                    if (f != null && f.moveToFirst()) {
                        columnIndex = f.getColumnIndex("currency_country");
                        columnIndex2 = f.getColumnIndex("currency_country_desc");
                        columnIndex3 = f.getColumnIndex("currency_value");
                        i();
                        do {
                            String toString = new StringBuilder(String.valueOf(f.getString(columnIndex))).append(" - ").append(f.getString(columnIndex2)).toString();
                            double d = f.getDouble(columnIndex3);
                            a(toString, d);
                            this.q.put(toString, Double.valueOf(d));
                        } while (f.moveToNext());
                        j();
                        a(this.q);
                    }
                    if (!(f == null || f.isClosed())) {
                        f.close();
                    }
                } else {
                    f = this.l.b().booleanValue() ? mVar.f() : mVar.g();
                    if (f != null && f.moveToFirst()) {
                        columnIndex = f.getColumnIndex("currency_country");
                        columnIndex2 = f.getColumnIndex("currency_country_desc");
                        columnIndex3 = f.getColumnIndex("currency_value");
                        do {
                            this.q.put(new StringBuilder(String.valueOf(f.getString(columnIndex))).append(" - ").append(f.getString(columnIndex2)).toString(), Double.valueOf(f.getDouble(columnIndex3)));
                        } while (f.moveToNext());
                    }
                    if (!(f == null || f.isClosed())) {
                        f.close();
                    }
                    a(this.q);
                    aaVar2 = new com.wopnersoft.unitconverter.plus.util.aa(this);
                    try {
                        double doubleValue;
                        aaVar2.a();
                        com.wopnersoft.unitconverter.plus.util.ac c = aaVar2.c(this.c);
                        Double a = mVar.a(c.c.substring(0, Math.min(R.styleable.SherlockTheme_actionBarTabTextStyle, c.c.length())));
                        Double a2 = mVar.a(c.d.substring(0, Math.min(R.styleable.SherlockTheme_actionBarTabTextStyle, c.d.length())));
                        i();
                        this.n = c.c;
                        String str = this.n;
                        doubleValue = (a == null || a2 == null) ? c.e : a.doubleValue();
                        a(str, doubleValue);
                        this.o = c.d;
                        str = this.o;
                        doubleValue = (a == null || a2 == null) ? c.f : a2.doubleValue();
                        a(str, doubleValue);
                        b(Boolean.valueOf(true));
                        E();
                        this.d = Double.toString(c.g);
                        super.i(this.d);
                        a(0);
                        b(1);
                        aaVar = aaVar2;
                    } catch (Exception e) {
                        th = e;
                        aaVar = aaVar2;
                        mVar2 = mVar;
                        a("CurrencyConverter", "buildConversionMapAndBind", th);
                        throw new RuntimeException(th);
                    } catch (Throwable th2) {
                        th = th2;
                        aaVar = aaVar2;
                        if (mVar != null) {
                            mVar.b();
                        }
                        if (aaVar != null) {
                            aaVar.b();
                        }
                        throw th;
                    }
                }
                if (mVar != null) {
                    mVar.b();
                }
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Exception e2) {
                th = e2;
                mVar2 = mVar;
                a("CurrencyConverter", "buildConversionMapAndBind", th);
                throw new RuntimeException(th);
            } catch (Throwable th3) {
                th = th3;
                if (mVar != null) {
                    mVar.b();
                }
                if (aaVar != null) {
                    aaVar.b();
                }
                throw th;
            }
        } catch (Exception e3) {
            th = e3;
            aaVar2 = aaVar;
            try {
                a("CurrencyConverter", "buildConversionMapAndBind", th);
                throw new RuntimeException(th);
            } catch (Throwable th4) {
                th = th4;
                mVar = mVar2;
                if (mVar != null) {
                    mVar.b();
                }
                if (aaVar != null) {
                    aaVar.b();
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            com.wopnersoft.unitconverter.plus.util.aa aaVar3 = aaVar;
            if (mVar != null) {
                mVar.b();
            }
            if (aaVar != null) {
                aaVar.b();
            }
            throw th;
        }
    }

    protected Map z() {
        return this.q;
    }
}