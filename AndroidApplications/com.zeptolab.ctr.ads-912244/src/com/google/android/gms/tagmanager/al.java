package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Map;

class al extends bx {
    private static final String ID;

    static {
        ID = a.az.toString();
    }

    public al() {
        super(ID);
    }

    protected boolean a(dh dhVar, dh dhVar2, Map map) {
        return dhVar.a(dhVar2) >= 0;
    }
}