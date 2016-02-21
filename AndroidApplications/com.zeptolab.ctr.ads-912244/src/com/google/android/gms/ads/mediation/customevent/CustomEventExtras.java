package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;

public final class CustomEventExtras implements NetworkExtras {
    private final HashMap qt;

    public CustomEventExtras() {
        this.qt = new HashMap();
    }

    public Object getExtra(String str) {
        return this.qt.get(str);
    }

    public void setExtra(String str, Object obj) {
        this.qt.put(str, obj);
    }
}