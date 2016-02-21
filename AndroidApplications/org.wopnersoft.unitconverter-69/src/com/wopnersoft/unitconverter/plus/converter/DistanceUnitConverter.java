package com.wopnersoft.unitconverter.plus.converter;

import android.text.Html;
import android.util.Pair;
import com.wopnersoft.unitconverter.plus.b.ac;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.e.b;
import java.util.ArrayList;
import java.util.Map;

// compiled from: ProGuard
public final class DistanceUnitConverter extends ac {
    private String d(String str, String str2) {
        String str3 = "%s%s %s%s";
        return String.format("%s%s %s%s", new Object[]{str, getString(2131361987), str2, getString(2131361992)});
    }

    protected double a(String str, String str2, double d, Boolean bool, Map map, Boolean bool2) {
        if (!getString(2131361988).equalsIgnoreCase(str)) {
            return super.a(str, str2, d, bool, map, bool2);
        }
        Pair p = p();
        return super.a(str, str2, ((Double) p.first).doubleValue() + ((Double) p.second).doubleValue() / 12.0d, bool, map, bool2);
    }

    protected String a(String str, String str2, String str3) {
        return str.equalsIgnoreCase(getString(2131361988)) ? new StringBuilder(String.valueOf(d(str2, str3))).append(" =").toString() : super.a(str, str2, str3);
    }

    protected void a(String str) {
        super.a(str);
        if (getString(2131361988).equalsIgnoreCase(str)) {
            super.b(getString(2131361987), getString(2131361992));
        } else {
            super.s();
        }
    }

    protected void a(String str, String str2, double d, double d2) {
        if (getString(2131361988).equalsIgnoreCase(str2)) {
            h(b.a(d2));
        } else if (e.f.booleanValue() && getString(2131361986).equalsIgnoreCase(str2)) {
            h(b.a(d2));
        }
    }

    protected String b(String str, double d) {
        if (e.f.booleanValue() && str.equalsIgnoreCase(getString(2131361986))) {
            if (!getString(2131361988).equalsIgnoreCase(l())) {
                return Html.fromHtml(b.a(d)).toString();
            }
            Pair q = q();
            return d((String) q.first, (String) q.second);
        } else if (str.equalsIgnoreCase(getString(2131361988))) {
            return Html.fromHtml(b.a(d, getString(2131361987), getString(2131361992))).toString();
        } else {
            return super.b(str, d);
        }
    }

    protected String[] b(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < strArr.length) {
            if (!getString(2131361988).equalsIgnoreCase(strArr[i])) {
                arrayList.add(strArr[i]);
            }
            i++;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    protected Boolean m(String str) {
        return str.equalsIgnoreCase(getString(2131361988)) ? Boolean.valueOf(true) : super.m(str);
    }

    protected Object n() {
        if (!getString(2131361988).equalsIgnoreCase(l())) {
            return super.n();
        }
        Pair p = p();
        return Double.valueOf(((Double) p.second).doubleValue() / 12.0d + ((Double) p.first).doubleValue());
    }
}