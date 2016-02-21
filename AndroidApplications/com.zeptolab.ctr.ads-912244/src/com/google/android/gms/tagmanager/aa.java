package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d;
import java.util.Map;

class aa extends aj {
    private static final String ID;

    static {
        ID = a.Q.toString();
    }

    public aa() {
        super(ID, new String[0]);
    }

    public boolean iy() {
        return true;
    }

    public d.a u(Map map) {
        String str = Build.MANUFACTURER;
        Object obj = Build.MODEL;
        if (!(obj.startsWith(str) || str.equals(DeviceInfo.ORIENTATION_UNKNOWN))) {
            obj = str + " " + obj;
        }
        return di.r(obj);
    }
}