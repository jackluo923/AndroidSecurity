package com.flurry.sdk;

import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class dp {
    private final Map a;
    private int b;

    public dp() {
        this.a = new HashMap();
    }

    private List a(Object obj, boolean z) {
        List list = (List) this.a.get(obj);
        if (z && list == null) {
            list = this.b > 0 ? new ArrayList(this.b) : new ArrayList();
            this.a.put(obj, list);
        }
        return list;
    }

    public List a(Object obj) {
        if (obj == null) {
            return Collections.emptyList();
        }
        List a = a(obj, false);
        return a == null ? Collections.emptyList() : a;
    }

    public void a() {
        this.a.clear();
    }

    public void a(dp dpVar) {
        if (dpVar != null) {
            Iterator it = dpVar.a.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                this.a.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public void a(Object obj, Object obj2) {
        if (obj != null) {
            a(obj, true).add(obj2);
        }
    }

    public Collection b() {
        Collection arrayList = new ArrayList();
        Iterator it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Iterator it2 = ((List) entry.getValue()).iterator();
            while (it2.hasNext()) {
                arrayList.add(new SimpleImmutableEntry(entry.getKey(), it2.next()));
            }
        }
        return arrayList;
    }

    public boolean b(Object obj) {
        if (obj == null) {
            return false;
        }
        return ((List) this.a.remove(obj)) != null ? 1 : false;
    }

    public boolean b(Object obj, Object obj2) {
        boolean z = false;
        if (obj != null) {
            List a = a(obj, false);
            if (a != null) {
                z = a.remove(obj2);
                if (a.size() == 0) {
                    this.a.remove(obj);
                }
            }
        }
        return z;
    }

    public Set c() {
        return this.a.keySet();
    }
}