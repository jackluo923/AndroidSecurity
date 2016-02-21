package com.wopnersoft.unitconverter.plus.b;

import android.os.Bundle;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.e.b;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// compiled from: ProGuard
public abstract class t extends a {
    protected Map i;
    protected int j;

    public t() {
        this.j = 0;
    }

    protected double a(String str, String str2, double d, Boolean bool) {
        s sVar = (s) this.i.get(str);
        s sVar2 = (s) this.i.get(str2);
        Map hashMap = new HashMap();
        hashMap.put("INPUT_VAL", Double.valueOf(d));
        hashMap.put("INPUT_MODE", Integer.valueOf(0));
        String a = sVar.a(hashMap);
        hashMap = new HashMap();
        hashMap.put("INPUT_VAL", Double.valueOf(a));
        hashMap.put("INPUT_MODE", Integer.valueOf(1));
        double doubleValue = Double.valueOf(sVar2.a(hashMap)).doubleValue();
        super.g(a(doubleValue));
        c(bool);
        return doubleValue;
    }

    protected List a(String str, String str2) {
        s sVar = (s) this.i.get(str);
        String[] strArr = (String[]) this.i.keySet().toArray(new String[0]);
        Arrays.sort(strArr, Collator.getInstance());
        int length = strArr.length;
        Object obj = new Object[(length - 1)];
        Object obj2 = new Object[(length - 1)];
        int i = 0;
        Map hashMap = new HashMap();
        Map hashMap2 = new HashMap();
        int length2 = strArr.length;
        int i2 = 0;
        while (i2 < length2) {
            String str3 = strArr[i2];
            if (str3.equalsIgnoreCase(str)) {
                length = i;
            } else {
                s sVar2 = (s) this.i.get(str3);
                hashMap.clear();
                hashMap.put("INPUT_VAL", Double.valueOf(b.b(str2)));
                hashMap.put("INPUT_MODE", Integer.valueOf(0));
                String a = sVar.a(hashMap);
                hashMap2.clear();
                hashMap2.put("INPUT_VAL", Double.valueOf(a));
                hashMap2.put("INPUT_MODE", Integer.valueOf(1));
                double doubleValue = Double.valueOf(sVar2.a(hashMap2)).doubleValue();
                obj[i] = str3;
                obj2[i] = a(doubleValue);
                length = i + 1;
            }
            i2++;
            i = length;
        }
        List arrayList = new ArrayList();
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    protected final void a() {
        if (this.c > -1) {
            aa aaVar = new aa(this);
            aaVar.a();
            ac c = aaVar.c(this.c);
            if (c != null) {
                i();
                this.a.add(c.c);
                this.a.add(c.d);
                Map y = y();
                Iterator it = y.keySet().iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    this.i.put(str, (s) y.get(str));
                }
                setTitle(new StringBuilder(String.valueOf(getString(2131362694))).append(" - ").append(c.b).toString());
                b(Boolean.valueOf(true));
                super.a(0);
                super.b(1);
                this.d = Double.toString(c.g);
                super.i(this.d);
            }
            aaVar.b();
        } else {
            z();
        }
    }

    protected final void a(String str, s sVar) {
        this.i.put(str, sVar);
        this.a.add(str);
    }

    protected long b() {
        return this.l.a(getClass());
    }

    protected void onCreate(Bundle bundle) {
        if (this.j > 0) {
            this.i = new HashMap(this.j, 0.95f);
        } else {
            this.i = new HashMap();
        }
        super.onCreate(bundle);
    }

    protected void onDestroy() {
        super.onDestroy();
        this.i.clear();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131034465) {
            return super.onOptionsItemSelected(menuItem);
        }
        a(0.0d, 0.0d);
        return true;
    }

    protected abstract Map y();

    protected void z() {
        Map y = y();
        i();
        Iterator it = y.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            a(str, (s) y.get(str));
        }
        j();
    }
}