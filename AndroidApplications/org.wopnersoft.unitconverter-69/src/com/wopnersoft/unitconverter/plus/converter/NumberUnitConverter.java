package com.wopnersoft.unitconverter.plus.converter;

import android.os.Bundle;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.wopnersoft.unitconverter.plus.b.a;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.e.c;
import com.wopnersoft.unitconverter.plus.util.ClearableEditText;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.ac;
import com.wopnersoft.unitconverter.plus.util.ai;
import com.wopnersoft.unitconverter.plus.util.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// compiled from: ProGuard
public class NumberUnitConverter extends a {
    private String i;
    private String j;
    private String n;
    private String o;
    private String p;
    private String q;
    private Map r;
    private c s;
    private ai t;

    public NumberUnitConverter() {
        this.q = "";
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private long d(java.lang.String r6, java.lang.String r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.wopnersoft.unitconverter.plus.converter.NumberUnitConverter.d(java.lang.String, java.lang.String):long");
        /*
        r5 = this;
        r1 = 1;
        r4 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        r0 = 0;
        r3 = r5.r;
        r3 = r3.containsKey(r6);
        if (r3 == 0) goto L_0x0019;
    L_0x000d:
        r0 = r5.r;
        r0 = r0.get(r6);
        r0 = (java.lang.Integer) r0;
        r0 = r0.intValue();
    L_0x0019:
        if (r0 <= 0) goto L_0x0039;
    L_0x001b:
        if (r0 != r4) goto L_0x0025;
    L_0x001d:
        r3 = r5.s;	 Catch:{ Exception -> 0x002e }
        r0 = r3.a(r7);	 Catch:{ Exception -> 0x002e }
        r0 = (long) r0;	 Catch:{ Exception -> 0x002e }
    L_0x0024:
        return r0;
    L_0x0025:
        r3 = java.lang.Long.valueOf(r7, r0);	 Catch:{ Exception -> 0x002e }
        r0 = r3.longValue();	 Catch:{ Exception -> 0x002e }
        goto L_0x0024;
    L_0x002e:
        r3 = move-exception;
        r3 = 2131362066; // 0x7f0a0112 float:1.8343902E38 double:1.0530327757E-314;
        r3 = r5.getString(r3);
        r5.p(r3);
    L_0x0039:
        if (r0 != r4) goto L_0x0042;
    L_0x003b:
        r0 = "I";
        r5.i(r0);
        r0 = r1;
        goto L_0x0024;
    L_0x0042:
        r0 = "1";
        r5.i(r0);
        r0 = r1;
        goto L_0x0024;
        */
    }

    private String y() {
        String l = l();
        return this.p.equalsIgnoreCase(l) ? "I" : "1";
    }

    protected double a(String str, String str2, double d, Boolean bool) {
        return 0.0d;
    }

    protected List a(String str, String str2) {
        String[] strArr = (String[]) this.r.keySet().toArray(new String[0]);
        Arrays.sort(strArr);
        int length = strArr.length;
        Object obj = new Object[(length - 1)];
        Object obj2 = new Object[(length - 1)];
        long d = d(str, str2);
        int length2 = strArr.length;
        int i = 0;
        length = 0;
        while (i < length2) {
            int i2;
            String str3 = strArr[i];
            if (str3.equalsIgnoreCase(str)) {
                i2 = length;
            } else {
                obj[length] = str3;
                i2 = ((Integer) this.r.get(str3)).intValue();
                if (i2 == 255) {
                    obj2[length] = this.s.a(d);
                } else {
                    obj2[length] = Long.toString(d, i2);
                }
                i2 = length + 1;
            }
            i++;
            length = i2;
        }
        List arrayList = new ArrayList();
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    protected void a() {
        if (this.c == -1) {
            i();
            this.a.add(this.i);
            this.a.add(this.j);
            this.a.add(this.n);
            this.a.add(this.o);
            this.a.add(this.p);
            j();
        } else {
            aa aaVar = new aa(this);
            setTitle(new StringBuilder(String.valueOf(getString(2131362745))).append(" - ").append(getString(2131362756)).toString());
            aaVar.a();
            ac c = aaVar.c(this.c);
            if (c != null) {
                i();
                this.a.add(c.c);
                this.a.add(c.d);
                b(Boolean.valueOf(true));
                this.q = c.c;
                this.k = Boolean.valueOf(false);
                a(0);
                this.k = Boolean.valueOf(true);
                b(1);
                Long valueOf = Long.valueOf(Double.valueOf(c.g).longValue());
                int intValue = Double.valueOf(c.e).intValue();
                String str = "";
                i(intValue == 255 ? this.s.a(valueOf.longValue()) : Long.toString(valueOf.longValue(), intValue));
            }
            aaVar.b();
        }
        a(l());
    }

    protected void a(double d, double d2) {
        aa aaVar;
        aa aaVar2 = null;
        try {
            aaVar = new aa(this);
            try {
                aaVar.a();
                String l = l();
                String m = m();
                long d3 = d(l, o());
                if (aaVar.a(1024, l, m, (double) d3, 0.0d).booleanValue()) {
                    o(getString(2131362065));
                    if (aaVar != null) {
                        aaVar.b();
                    }
                } else {
                    if (aaVar.a(1024, l, (double) ((Integer) this.r.get(l)).intValue(), m, 0.0d, (double) d3) > -1) {
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

    protected void a(String str) {
        int i = 2048;
        try {
            String o = o();
            i(y());
            String str2 = "";
            ClearableEditText w;
            if (str == null || this.i.equalsIgnoreCase(str)) {
                w = w();
                if (!e.d.booleanValue()) {
                    i = 0;
                }
                w.setKeyListener(new q(i | 2, false, false));
                str2 = this.i;
                this.t = ai.a;
            } else if (this.j.equalsIgnoreCase(str)) {
                w = w();
                if (!e.d.booleanValue()) {
                    i = 0;
                }
                w.setKeyListener(new q(i | 16, false, false));
                str2 = this.j;
                this.t = ai.d;
            } else if (this.n.equalsIgnoreCase(str)) {
                w = w();
                if (!e.d.booleanValue()) {
                    i = 0;
                }
                w.setKeyListener(new q(i | 4, false, false));
                str2 = this.n;
                this.t = ai.b;
            } else if (this.o.equalsIgnoreCase(str)) {
                w = w();
                if (!e.d.booleanValue()) {
                    i = 0;
                }
                w.setKeyListener(new q(i | 8, false, false));
                str2 = this.o;
                this.t = ai.c;
            } else if (this.p.equalsIgnoreCase(str)) {
                w().setKeyListener(new q((e.d.booleanValue() ? 2048 : 0) | 32, false, false));
                str2 = this.p;
                this.t = ai.e;
            }
            if (this.q != null && str2.length() > 0 && o.length() > 0) {
                Long valueOf = Long.valueOf(d(this.q, o));
                int intValue = ((Integer) this.r.get(str2)).intValue();
                i(intValue == 255 ? this.s.a(valueOf.longValue()) : Long.toString(valueOf.longValue(), intValue));
            }
        } catch (Exception e) {
            Throwable th = e;
            a("spinner.onItemSelected", new StringBuilder("error: ").append(th.getMessage()).toString(), th);
        }
    }

    protected long b() {
        return 1024;
    }

    protected ai c() {
        return this.t;
    }

    protected Boolean d() {
        return Boolean.valueOf(false);
    }

    protected Boolean e() {
        return Boolean.valueOf(false);
    }

    protected void h() {
        super.h();
        x().setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
    }

    protected Object n() {
        return o();
    }

    protected void onCreate(Bundle bundle) {
        this.r = new HashMap();
        this.s = new c();
        this.i = getString(2131362397);
        this.j = getString(2131362398);
        this.n = getString(2131362396);
        this.o = getString(2131362399);
        this.p = getString(2131362400);
        this.r.put(this.i, Integer.valueOf(R.styleable.SherlockTheme_actionBarItemBackground));
        this.r.put(this.j, Integer.valueOf(Menu.CATEGORY_SHIFT));
        this.r.put(this.n, Integer.valueOf(IcsLinearLayout.SHOW_DIVIDER_MIDDLE));
        this.r.put(this.o, Integer.valueOf(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW));
        this.r.put(this.p, Integer.valueOf(255));
        super.onCreate(bundle);
        w().setKeyListener(new q((e.d.booleanValue() ? 2048 : 0) | 2, false, false));
        this.t = ai.a;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2131034465:
                if (this.c == -1) {
                    a(0.0d, 0.0d);
                    return true;
                }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    protected void v() {
        String a;
        String l = l();
        String m = m();
        long j = 0;
        try {
            long j2 = d(l, o());
        } catch (Exception e) {
            o(getString(2131362066));
            j2 = j;
        }
        String str = "";
        try {
            int intValue = ((Integer) this.r.get(m)).intValue();
            a = intValue == 255 ? this.s.a(j2) : Long.toString(j2, intValue);
        } catch (Exception e2) {
            o(getString(2131362059));
            a = str;
        }
        g(a);
        this.q = l;
        c(this.k);
    }
}