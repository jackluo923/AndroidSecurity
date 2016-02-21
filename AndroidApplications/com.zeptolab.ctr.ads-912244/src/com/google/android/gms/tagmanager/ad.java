package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Map;

class ad extends dd {
    private static final String ID;

    static {
        ID = a.at.toString();
    }

    public ad() {
        super(ID);
    }

    protected boolean a(String str, String str2, Map map) {
        return str.endsWith(str2);
    }
}