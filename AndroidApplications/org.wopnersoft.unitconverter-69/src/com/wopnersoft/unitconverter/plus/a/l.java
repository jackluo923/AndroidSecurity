package com.wopnersoft.unitconverter.plus.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// compiled from: ProGuard
public class l {
    Map a;
    Map b;

    l() {
        this.a = new HashMap();
        this.b = new HashMap();
    }

    public m a(String str) {
        return (m) this.b.get(str);
    }

    void a(m mVar) {
        this.b.put(mVar.b(), mVar);
    }

    void a(o oVar) {
        this.a.put(oVar.a(), oVar);
    }

    List b(String str) {
        List arrayList = new ArrayList();
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            m mVar = (m) it.next();
            if (mVar.a().equals(str)) {
                arrayList.add(mVar.b());
            }
        }
        return arrayList;
    }
}