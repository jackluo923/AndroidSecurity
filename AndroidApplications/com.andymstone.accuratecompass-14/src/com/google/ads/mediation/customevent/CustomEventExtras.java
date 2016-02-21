package com.google.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;

public class CustomEventExtras implements NetworkExtras {
    private final HashMap a;

    public CustomEventExtras() {
        this.a = new HashMap();
    }

    public Object a(String str) {
        return this.a.get(str);
    }
}