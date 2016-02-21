package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import java.util.Map;

class ae extends dd {
    private static final String ID;

    static {
        ID = a.av.toString();
    }

    public ae() {
        super(ID);
    }

    protected boolean a(String str, String str2, Map map) {
        return str.equals(str2);
    }
}