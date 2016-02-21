package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Map;

class q extends dd {
    private static final String ID;

    static {
        ID = a.au.toString();
    }

    public q() {
        super(ID);
    }

    protected boolean a(String str, String str2, Map map) {
        return str.contains(str2);
    }
}