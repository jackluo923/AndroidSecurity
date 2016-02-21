package com.wopnersoft.unitconverter.plus.converter;

import android.text.Html;
import android.util.Pair;
import com.wopnersoft.unitconverter.plus.b.ac;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.e.b;
import java.util.ArrayList;
import java.util.Map;

// compiled from: ProGuard
public final class WeightUnitConverter extends ac {
    private String d(String str, String str2) {
        String str3 = "%s%s %s%s";
        return String.format("%s%s %s%s", new Object[]{str, getString(2131362919), str2, getString(2131362915)});
    }

    private String e(String str, String str2) {
        String str3 = "%s%s %s%s";
        return String.format("%s%s %s%s", new Object[]{str, getString(2131362924), str2, getString(2131362919)});
    }

    protected double a(String str, String str2, double d, Boolean bool, Map map, Boolean bool2) {
        Pair p;
        if (getString(2131362920).equalsIgnoreCase(str)) {
            p = p();
            return super.a(str, str2, ((Double) p.first).doubleValue() + ((Double) p.second).doubleValue() / 16.0d, bool, map, bool2);
        } else if (!getString(2131362925).equalsIgnoreCase(str)) {
            return super.a(str, str2, d, bool, map, bool2);
        } else {
            p = p();
            return super.a(str, str2, ((Double) p.first).doubleValue() + ((Double) p.second).doubleValue() / 14.0d, bool, map, bool2);
        }
    }

    protected String a(String str, String str2, String str3) {
        if (str.equalsIgnoreCase(getString(2131362920))) {
            return new StringBuilder(String.valueOf(d(str2, str3))).append(" =").toString();
        }
        return str.equalsIgnoreCase(getString(2131362925)) ? new StringBuilder(String.valueOf(e(str2, str3))).append(" =").toString() : super.a(str, str2, str3);
    }

    protected void a(String str) {
        super.a(str);
        if (getString(2131362920).equalsIgnoreCase(str)) {
            super.b(getString(2131362919), getString(2131362915));
        } else if (getString(2131362925).equalsIgnoreCase(str)) {
            super.b(getString(2131362924), getString(2131362919));
        } else {
            super.s();
        }
    }

    protected void a(String str, String str2, double d, double d2) {
        if (getString(2131362920).equalsIgnoreCase(str2)) {
            h(b.a(d2, e.t));
        } else if (getString(2131362925).equalsIgnoreCase(str2)) {
            h(b.b(d2, e.t));
        } else if (!e.f.booleanValue()) {
        } else {
            if (getString(2131362926).equalsIgnoreCase(str2)) {
                h(b.b(d2, e.t));
            } else if (getString(2131362918).equalsIgnoreCase(str2)) {
                h(b.a(d2, e.t));
            }
        }
    }

    protected String b(String str, double d) {
        Pair q;
        if (e.f.booleanValue() && str.equalsIgnoreCase(getString(2131362926))) {
            if (!getString(2131362925).equalsIgnoreCase(l())) {
                return Html.fromHtml(b.b(d, e.t)).toString();
            }
            q = q();
            return d((String) q.first, (String) q.second);
        } else if (!e.f.booleanValue() || !str.equalsIgnoreCase(getString(2131362918))) {
            return super.b(str, d);
        } else {
            if (!getString(2131362920).equalsIgnoreCase(l())) {
                return Html.fromHtml(b.a(d, e.t)).toString();
            }
            q = q();
            return d((String) q.first, (String) q.second);
        }
    }

    protected String[] b(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < strArr.length) {
            if (!(getString(2131362920).equalsIgnoreCase(strArr[i]) || getString(2131362925).equalsIgnoreCase(strArr[i]))) {
                arrayList.add(strArr[i]);
            }
            i++;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    protected Boolean m(String str) {
        return (str.equalsIgnoreCase(getString(2131362920)) || str.equalsIgnoreCase(getString(2131362925))) ? Boolean.valueOf(true) : super.m(str);
    }

    protected Object n() {
        Pair p;
        if (getString(2131362920).equalsIgnoreCase(l())) {
            p = p();
            return Double.valueOf(((Double) p.second).doubleValue() / 16.0d + ((Double) p.first).doubleValue());
        } else if (!getString(2131362925).equalsIgnoreCase(l())) {
            return super.n();
        } else {
            p = p();
            return Double.valueOf(((Double) p.second).doubleValue() / 14.0d + ((Double) p.first).doubleValue());
        }
    }
}