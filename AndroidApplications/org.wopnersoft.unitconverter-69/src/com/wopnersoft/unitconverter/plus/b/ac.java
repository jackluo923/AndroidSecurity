package com.wopnersoft.unitconverter.plus.b;

import android.content.Intent;
import android.os.Bundle;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.converter.CurrencyConverter;
import com.wopnersoft.unitconverter.plus.d.a;
import com.wopnersoft.unitconverter.plus.e.b;
import com.wopnersoft.unitconverter.plus.util.aa;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// compiled from: ProGuard
public abstract class ac extends a {
    protected int i;
    private Map j;

    public ac() {
        this.i = 0;
    }

    protected double a(String str, String str2, double d, Boolean bool) {
        return a(str, str2, d, bool, this.j, Boolean.valueOf(true));
    }

    protected double a(String str, String str2, double d, Boolean bool, Map map, Boolean bool2) {
        double doubleValue = (((Double) map.get(str2)).doubleValue() * d) / ((Double) map.get(str)).doubleValue();
        if (bool2.booleanValue()) {
            super.g(a(doubleValue));
        }
        c(bool);
        return doubleValue;
    }

    protected final List a(String str, String str2) {
        Map map = this.j;
        if (this.c > -1) {
            map = z();
        }
        double b = b.b(str2);
        String[] b2 = b((String[]) map.keySet().toArray(new String[0]));
        Arrays.sort(b2, Collator.getInstance());
        int length = b2.length;
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = new ArrayList(length);
        int length2 = b2.length;
        int i = 0;
        while (i < length2) {
            String str3 = b2[i];
            if (!str3.equalsIgnoreCase(str)) {
                double a = a(str, str3, b, Boolean.valueOf(false), map, Boolean.valueOf(false));
                arrayList.add(str3);
                arrayList2.add(b(str3, a));
            }
            i++;
        }
        List arrayList3 = new ArrayList();
        arrayList3.add((String[]) arrayList.toArray(new String[0]));
        arrayList3.add((String[]) arrayList2.toArray(new String[0]));
        return arrayList3;
    }

    protected final void a() {
        if (this.c <= -1 || this instanceof CurrencyConverter) {
            y();
        } else {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362694))).append(" - ").append(this.l.c(b())).toString());
            aaVar.a();
            com.wopnersoft.unitconverter.plus.util.ac c = aaVar.c(this.c);
            if (c != null) {
                i();
                a(c.c, c.e);
                a(c.d, c.f);
                b(Boolean.valueOf(true));
                if (m(c.c).booleanValue()) {
                    this.d = Integer.toString((int) c.g);
                } else {
                    this.d = Double.toString(c.g);
                }
                super.i(this.d);
                super.j(Double.toString(c.h));
                a(0);
                b(1);
                a(c.c);
            }
            aaVar.b();
        }
    }

    protected final void a(int i, double d) {
        a(getString(i), d);
    }

    protected final void a(String str, double d) {
        this.j.put(str, Double.valueOf(d));
        this.a.add(str);
    }

    protected void a(Map map) {
    }

    protected long b() {
        return this.l.a(getClass());
    }

    protected String b(String str, double d) {
        return a(d);
    }

    protected void j() {
        super.b(Boolean.valueOf(this.c > -1));
    }

    protected double n(String str) {
        return ((Double) this.j.get(str)).doubleValue();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 2400) {
            super.g();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    protected void onCreate(Bundle bundle) {
        if (this.i > 0) {
            this.j = new HashMap(this.i, 0.95f);
        } else {
            this.j = new HashMap();
        }
        super.onCreate(bundle);
    }

    protected void onDestroy() {
        super.onDestroy();
        this.j.clear();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131034465) {
            return super.onOptionsItemSelected(menuItem);
        }
        a(((Double) this.j.get(l())).doubleValue(), ((Double) this.j.get(m())).doubleValue());
        return true;
    }

    protected void y() {
        int[] a = a.a(b());
        double[] b = a.b(b());
        i();
        int length = a.length;
        int i = 0;
        while (i < length) {
            a(a[i], b[i]);
            i++;
        }
        j();
    }

    protected Map z() {
        return this.l.b(getClass());
    }
}