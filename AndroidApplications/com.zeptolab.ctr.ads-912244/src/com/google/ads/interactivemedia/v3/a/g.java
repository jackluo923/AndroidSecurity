package com.google.ads.interactivemedia.v3.a;

import com.google.ads.interactivemedia.v3.a.b.a.l;
import com.google.ads.interactivemedia.v3.a.b.d;
import com.google.ads.interactivemedia.v3.a.c.a;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class g {
    private d a;
    private u b;
    private e c;
    private final Map d;
    private final List e;
    private final List f;
    private boolean g;
    private String h;
    private int i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;

    public g() {
        this.a = d.a;
        this.b = u.a;
        this.c = d.a;
        this.d = new HashMap();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.i = 2;
        this.j = 2;
        this.m = true;
    }

    public final f a() {
        Object aVar;
        List arrayList = new ArrayList();
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        arrayList.addAll(this.f);
        String str = this.h;
        int i = this.i;
        int i2 = this.j;
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            if (!(i == 2 || i2 == 2)) {
                aVar = new a(i, i2);
            }
            return new f(this.a, this.c, this.d, this.g, this.k, this.o, this.m, this.n, this.l, this.b, arrayList);
        } else {
            aVar = new a(str);
        }
        arrayList.add(v.a(a.a(Date.class), aVar));
        arrayList.add(v.a(a.a(Timestamp.class), aVar));
        arrayList.add(v.a(a.a(java.sql.Date.class), aVar));
        return new f(this.a, this.c, this.d, this.g, this.k, this.o, this.m, this.n, this.l, this.b, arrayList);
    }

    public final g a(Type type, Object obj) {
        boolean z;
        boolean z2 = true;
        z = obj instanceof s || obj instanceof k || obj instanceof h || obj instanceof w;
        com.google.ads.interactivemedia.v3.a.b.a.a(z);
        if (obj instanceof h) {
            this.d.put(type, (h) obj);
        }
        if (obj instanceof s || obj instanceof k) {
            a a = a.a(type);
            List list = this.e;
            if (a.b() != a.a()) {
                z2 = false;
            }
            list.add(new a(a, z2, (byte) 0));
        }
        if (obj instanceof w) {
            this.e.add(l.a(a.a(type), (w) obj));
        }
        return this;
    }
}