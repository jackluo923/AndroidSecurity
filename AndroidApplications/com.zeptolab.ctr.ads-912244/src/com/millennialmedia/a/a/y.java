package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.t;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class y extends v {
    private final t a;

    public y() {
        this.a = new t();
    }

    private v a(Object obj) {
        return obj == null ? x.a : new ab(obj);
    }

    public v a(String str) {
        return (v) this.a.remove(str);
    }

    y a() {
        y yVar = new y();
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            yVar.a((String) entry.getKey(), ((v) entry.getValue()).o());
        }
        return yVar;
    }

    public void a(String str, Object obj) {
        if (obj == null) {
            obj = x.a;
        }
        this.a.put(str, obj);
    }

    public void a(String str, Object obj) {
        a(str, a(obj));
    }

    public void a(String str, Object obj) {
        a(str, a(obj));
    }

    public void a(String str, Object obj) {
        a(str, a(obj));
    }

    public void a(String str, Object obj) {
        a(str, a(obj));
    }

    public Set b() {
        return this.a.entrySet();
    }

    public boolean b(String str) {
        return this.a.containsKey(str);
    }

    public v c(String str) {
        return (v) this.a.get(str);
    }

    public ab d(String str) {
        return (ab) this.a.get(str);
    }

    public s e(String str) {
        return (s) this.a.get(str);
    }

    public boolean equals(y yVar) {
        return yVar == this || (yVar instanceof y && yVar.a.equals(this.a));
    }

    public y f(String str) {
        return (y) this.a.get(str);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    /* synthetic */ v o() {
        return a();
    }
}