package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class w extends dg {
    private static final String ID;
    private static final String UN;
    private static final String VALUE;
    private final DataLayer TN;

    static {
        ID = a.aq.toString();
        VALUE = b.eH.toString();
        UN = b.bO.toString();
    }

    public w(DataLayer dataLayer) {
        super(ID, new String[]{VALUE});
        this.TN = dataLayer;
    }

    private void a(d.a aVar) {
        if (aVar != null && aVar != di.ko()) {
            String j = di.j(aVar);
            if (j != di.kt()) {
                this.TN.bg(j);
            }
        }
    }

    private void b(d.a aVar) {
        if (aVar != null && aVar != di.ko()) {
            Object o = di.o(aVar);
            if (o instanceof List) {
                Iterator it = ((List) o).iterator();
                while (it.hasNext()) {
                    o = it.next();
                    if (o instanceof Map) {
                        this.TN.push((Map) o);
                    }
                }
            }
        }
    }

    public void w_(Map map) {
        b((d.a) map.get(VALUE));
        a((d.a) map.get(UN));
    }
}