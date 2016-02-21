package com.IQzone.postitial.obfuscated;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

public final class hf {
    final ou a;
    final ou b;
    private final Executor c;
    private final Map d;
    private volatile boolean e;
    private volatile String f;
    private volatile String g;
    private volatile boolean h;
    private volatile int i;
    private volatile int j;
    private volatile boolean k;
    private volatile String l;
    private volatile String m;

    public hf(boolean z, String str, String str2, ou ouVar, ou ouVar2, boolean z2, int i, int i2, boolean z3, String str3, Executor executor, String str4, boolean z4) {
        this.d = new HashMap();
        this.c = new oc(executor);
        this.k = z3;
        this.i = i;
        this.j = i2;
        this.h = z2;
        this.g = str2;
        this.e = z;
        this.f = str;
        this.a = ouVar;
        this.b = ouVar2;
        this.l = str3;
        this.m = str4;
        try {
            Map map = (Map) ouVar2.a("namedTypes");
            if (map != null) {
                this.d.putAll(map);
            }
        } catch (om e) {
            gv.i();
            this.e = false;
        }
    }

    public final synchronized String a() {
        return this.l;
    }

    public final synchronized void a(int i) {
        this.i = i;
        this.c.execute(new hp(this, i));
    }

    public final synchronized void a(String str) {
        this.l = str;
        this.c.execute(new hg(this, str));
    }

    public final synchronized void a(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            jl jlVar = (jl) it.next();
            this.d.put(Integer.valueOf(jlVar.a()), jlVar);
        }
        this.c.execute(new hk(this, new HashMap(this.d)));
    }

    public final synchronized void a(boolean z) {
        this.e = true;
        this.c.execute(new hm(this, true));
    }

    public final synchronized Set b() {
        return new HashSet(this.d.values());
    }

    public final synchronized void b(int i) {
        this.j = i;
        this.c.execute(new hq(this, i));
    }

    public final synchronized void b(String str) {
        this.g = str;
        this.c.execute(new hl(this, str));
    }

    public final synchronized void b(boolean z) {
        this.h = z;
        this.c.execute(new ho(this, z));
    }

    public final synchronized void c(String str) {
        this.f = str;
        this.c.execute(new hn(this, str));
    }

    public final synchronized void c(boolean z) {
        this.k = z;
        this.c.execute(new hr(this, z));
    }

    public final synchronized boolean c() {
        return this.e;
    }

    public final synchronized String d() {
        return this.g;
    }

    public final synchronized void d(String str) {
        this.m = str;
        this.c.execute(new hh(this, str));
    }

    public final synchronized void d(boolean z) {
        this.c.execute(new hi(this, z));
    }

    public final synchronized String e() {
        return this.f;
    }

    public final synchronized boolean f() {
        return this.h;
    }

    public final synchronized int g() {
        return this.i;
    }

    public final synchronized int h() {
        return this.j;
    }

    public final synchronized boolean i() {
        return this.k;
    }

    public final synchronized String j() {
        return this.m;
    }
}