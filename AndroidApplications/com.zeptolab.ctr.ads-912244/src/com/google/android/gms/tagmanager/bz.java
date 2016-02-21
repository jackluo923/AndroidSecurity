package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import java.util.Map;

class bz extends aj {
    private static final String ID;

    static {
        ID = a.X.toString();
    }

    public bz() {
        super(ID, new String[0]);
    }

    public boolean iy() {
        return true;
    }

    public d.a u(Map map) {
        return di.r(VERSION.RELEASE);
    }
}