package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class dq {
    private final List a;

    public dq() {
        this.a = new LinkedList();
    }

    public List a() {
        List arrayList = new ArrayList(this.a.size());
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            Object obj = ((WeakReference) it.next()).get();
            if (obj == null) {
                it.remove();
            } else {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public void a(Object obj) {
        if (obj != null) {
            this.a.add(new WeakReference(obj));
        }
    }

    public int b() {
        return this.a.size();
    }

    public boolean b(Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            Object obj2 = ((WeakReference) it.next()).get();
            if (obj2 == null) {
                it.remove();
            } else if (obj == obj2 || obj.equals(obj2)) {
                it.remove();
                return true;
            }
        }
        return false;
    }
}