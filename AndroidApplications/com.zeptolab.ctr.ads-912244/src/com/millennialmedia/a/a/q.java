package com.millennialmedia.a.a;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.a.a.b.a.t;
import com.millennialmedia.a.a.b.p;
import com.millennialmedia.a.a.c.a;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class q {
    private p a;
    private ag b;
    private j c;
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

    public q() {
        this.a = p.a;
        this.b = ag.a;
        this.c = d.a;
        this.d = new HashMap();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.i = 2;
        this.j = 2;
        this.m = true;
    }

    private void a(String str, int i, int i2, List list) {
        Object aVar;
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            aVar = new a(str);
        } else if (i != 2 && i2 != 2) {
            aVar = new a(i, i2);
        } else {
            return;
        }
        list.add(aj.a(a.c(Date.class), aVar));
        list.add(aj.a(a.c(Timestamp.class), aVar));
        list.add(aj.a(a.c(java.sql.Date.class), aVar));
    }

    public q a() {
        this.o = true;
        return this;
    }

    public q a(double d) {
        this.a = this.a.a(d);
        return this;
    }

    public q a(int i) {
        this.i = i;
        this.h = null;
        return this;
    }

    public q a(int i, int i2) {
        this.i = i;
        this.j = i2;
        this.h = null;
        return this;
    }

    public q a(ag agVar) {
        this.b = agVar;
        return this;
    }

    public q a(am amVar) {
        this.e.add(amVar);
        return this;
    }

    public q a(b bVar) {
        this.a = this.a.a(bVar, true, false);
        return this;
    }

    public q a(d dVar) {
        this.c = dVar;
        return this;
    }

    public q a(j jVar) {
        this.c = jVar;
        return this;
    }

    public q a(Class cls, Object obj) {
        boolean z;
        z = obj instanceof ad || obj instanceof u || obj instanceof ak;
        com.millennialmedia.a.a.b.a.a(z);
        if (obj instanceof u || obj instanceof ad) {
            this.f.add(0, aj.a(cls, obj));
        }
        if (obj instanceof ak) {
            this.e.add(t.b(cls, (ak) obj));
        }
        return this;
    }

    public q a(String str) {
        this.h = str;
        return this;
    }

    public q a(Type type, Object obj) {
        boolean z;
        z = obj instanceof ad || obj instanceof u || obj instanceof r || obj instanceof ak;
        com.millennialmedia.a.a.b.a.a(z);
        if (obj instanceof r) {
            this.d.put(type, (r) obj);
        }
        if (obj instanceof ad || obj instanceof u) {
            this.e.add(aj.b(a.b(type), obj));
        }
        if (obj instanceof ak) {
            this.e.add(t.a(a.b(type), (ak) obj));
        }
        return this;
    }

    public q a(int... iArr) {
        this.a = this.a.a(iArr);
        return this;
    }

    public q a(b... bVarArr) {
        int length = bVarArr.length;
        int i = 0;
        while (i < length) {
            this.a = this.a.a(bVarArr[i], true, true);
            i++;
        }
        return this;
    }

    public q b() {
        this.a = this.a.c();
        return this;
    }

    public q b(b bVar) {
        this.a = this.a.a(bVar, false, true);
        return this;
    }

    public q c() {
        this.g = true;
        return this;
    }

    public q d() {
        this.k = true;
        return this;
    }

    public q e() {
        this.a = this.a.b();
        return this;
    }

    public q f() {
        this.n = true;
        return this;
    }

    public q g() {
        this.m = false;
        return this;
    }

    public q h() {
        this.l = true;
        return this;
    }

    public k i() {
        List arrayList = new ArrayList();
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        arrayList.addAll(this.f);
        a(this.h, this.i, this.j, arrayList);
        return new k(this.a, this.c, this.d, this.g, this.k, this.o, this.m, this.n, this.l, this.b, arrayList);
    }
}