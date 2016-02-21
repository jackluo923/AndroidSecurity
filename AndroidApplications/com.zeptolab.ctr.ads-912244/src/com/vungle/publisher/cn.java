package com.vungle.publisher;

import java.util.ArrayList;
import java.util.List;

final class cn {
    private static final List d;
    Object a;
    cs b;
    cn c;

    static {
        d = new ArrayList();
    }

    private cn(Object obj, cs csVar) {
        this.a = obj;
        this.b = csVar;
    }

    static cn a(cs csVar, Object obj) {
        synchronized (d) {
            int size = d.size();
            if (size > 0) {
                cn cnVar = (cn) d.remove(size - 1);
                cnVar.a = obj;
                cnVar.b = csVar;
                cnVar.c = null;
                return cnVar;
            } else {
                return new cn(obj, csVar);
            }
        }
    }

    static void a(cn cnVar) {
        cnVar.a = null;
        cnVar.b = null;
        cnVar.c = null;
        synchronized (d) {
            if (d.size() < 10000) {
                d.add(cnVar);
            }
        }
    }
}