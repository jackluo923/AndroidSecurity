package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.l.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

class da implements k {
    private final Map Xs;
    private final int Xt;
    private final a Xu;
    private int Xv;

    da(int i, a aVar) {
        this.Xs = new HashMap();
        this.Xt = i;
        this.Xu = aVar;
    }

    public synchronized void e(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        this.Xv += this.Xu.sizeOf(obj, obj2);
        if (this.Xv > this.Xt) {
            Iterator it = this.Xs.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                this.Xv -= this.Xu.sizeOf(entry.getKey(), entry.getValue());
                it.remove();
                if (this.Xv <= this.Xt) {
                    break;
                }
            }
        }
        this.Xs.put(obj, obj2);
    }

    public synchronized Object get(Object obj) {
        return this.Xs.get(obj);
    }
}