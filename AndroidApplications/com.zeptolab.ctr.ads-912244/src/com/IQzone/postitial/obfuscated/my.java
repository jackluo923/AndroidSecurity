package com.IQzone.postitial.obfuscated;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class my {
    Set a;

    public my() {
        this.a = Collections.synchronizedSet(new HashSet());
    }

    public void a(mx mxVar) {
        this.a.add(mxVar);
    }

    public void b(mx mxVar) {
        this.a.remove(mxVar);
    }
}