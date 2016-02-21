package com.IQzone.postitial.obfuscated;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class n {
    public final qr a;
    public final Map b;
    public final Map c;
    public final Map d;
    public final Map e;

    public n() {
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
        this.a = new qr();
    }

    public qr a() {
        return this.a;
    }

    public synchronized void a(int i, Set set) {
        this.b.put(Integer.valueOf(i), new mu(set));
    }

    public synchronized Set b() {
        Set muVar;
        Collection values = this.b.values();
        muVar = new mu();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            muVar.addAll((Set) it.next());
        }
        return muVar;
    }

    public synchronized void b(int i, Set set) {
        this.c.put(Integer.valueOf(i), new mu(set));
    }

    public synchronized Set c() {
        Set muVar;
        Collection values = this.c.values();
        muVar = new mu();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            muVar.addAll((Set) it.next());
        }
        return muVar;
    }

    public void c(int i, Set set) {
        this.d.put(Integer.valueOf(i), set);
    }

    public synchronized Set d() {
        Set muVar;
        Collection values = this.d.values();
        muVar = new mu();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            muVar.addAll((Set) it.next());
        }
        return muVar;
    }

    public void d(int i, Set set) {
        this.e.put(Integer.valueOf(i), set);
    }

    public synchronized Set e() {
        Set muVar;
        Collection values = this.e.values();
        muVar = new mu();
        Iterator it = values.iterator();
        while (it.hasNext()) {
            muVar.addAll((Set) it.next());
        }
        return muVar;
    }
}