package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class aj {
    private final Set UW;
    private final String UX;

    public aj(String str, String... strArr) {
        this.UX = str;
        this.UW = new HashSet(strArr.length);
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            this.UW.add(strArr[i]);
            i++;
        }
    }

    boolean a(Set set) {
        return set.containsAll(this.UW);
    }

    public abstract boolean iy();

    public String jc() {
        return this.UX;
    }

    public Set jd() {
        return this.UW;
    }

    public abstract a u(Map map);
}