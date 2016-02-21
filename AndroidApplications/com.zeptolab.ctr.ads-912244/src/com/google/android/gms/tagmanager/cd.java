package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Iterator;
import java.util.Map;

abstract class cd extends aj {
    private static final String US;
    private static final String VQ;

    static {
        US = b.bt.toString();
        VQ = b.bu.toString();
    }

    public cd(String str) {
        super(str, new String[]{US, VQ});
    }

    protected abstract boolean a(a aVar, a aVar2, Map map);

    public boolean iy() {
        return true;
    }

    public a u(Map map) {
        boolean a;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            if (((a) it.next()) == di.ku()) {
                return di.r(Boolean.valueOf(false));
            }
        }
        a aVar = (a) map.get(US);
        a aVar2 = (a) map.get(VQ);
        a = (aVar == null || aVar2 == null) ? false : a(aVar, aVar2, map);
        return di.r(Boolean.valueOf(a));
    }
}