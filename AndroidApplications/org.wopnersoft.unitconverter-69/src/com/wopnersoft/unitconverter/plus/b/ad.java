package com.wopnersoft.unitconverter.plus.b;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;
import com.actionbarsherlock.view.Menu;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;
import com.wopnersoft.unitconverter.plus.util.aw;
import java.util.HashMap;

// compiled from: ProGuard
public abstract class ad extends o implements OnItemSelectedListener {
    private Spinner f;

    protected void b() {
    }

    protected void c() {
        aa aaVar;
        aa aaVar2 = null;
        try {
            if (this.f == null) {
                this.f = p()[0].a();
            }
            String toString = ((CharSequence) q().get(this.f)).toString();
            aaVar = new aa(this);
            try {
                aaVar.a();
                if (aaVar.a(r(), b.a(this.f), toString, (double) this.f.getSelectedItemPosition(), 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar != null) {
                        aaVar.b();
                    }
                } else {
                    if (aaVar.a(r(), b.a(this.f), 0.0d, toString, 0.0d, (double) this.f.getSelectedItemPosition()) > -1) {
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

    protected void o() {
        if (this.b > -1) {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362694))).append(" - ").append(n()).toString());
            aaVar.a();
            ac c = aaVar.c(this.b);
            if (c != null) {
                int i = (int) c.g;
                aw[] p = p();
                int length = p.length;
                int i2 = 0;
                while (i2 < length) {
                    p[i2].a(i);
                    i2++;
                }
            }
            aaVar.b();
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        Boolean valueOf = Boolean.valueOf(super.onCreateOptionsMenu(menu));
        menu.findItem(2131034463).setVisible(false);
        return valueOf.booleanValue();
    }

    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        this.f = (Spinner) adapterView;
        aw[] p = p();
        int length = p.length;
        int i2 = 0;
        while (i2 < length) {
            aw awVar = p[i2];
            if (this.f != awVar.a()) {
                awVar.a(i);
            }
            i2++;
        }
    }

    public void onNothingSelected(AdapterView adapterView) {
    }

    protected abstract aw[] p();

    protected abstract HashMap q();

    protected abstract long r();
}