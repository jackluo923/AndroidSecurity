package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Map;

class bd extends bx {
    private static final String ID;

    static {
        ID = a.ax.toString();
    }

    public bd() {
        super(ID);
    }

    protected boolean a(dh dhVar, dh dhVar2, Map map) {
        return dhVar.a(dhVar2) <= 0;
    }
}