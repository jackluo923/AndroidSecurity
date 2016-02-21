package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Map;

class dc extends dd {
    private static final String ID;

    static {
        ID = a.as.toString();
    }

    public dc() {
        super(ID);
    }

    protected boolean a(String str, String str2, Map map) {
        return str.startsWith(str2);
    }
}