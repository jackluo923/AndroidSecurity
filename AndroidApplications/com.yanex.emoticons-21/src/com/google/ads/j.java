package com.google.ads;

import com.google.ads.util.e;
import java.util.HashMap;
import java.util.List;

public final class j {
    private final String a;
    private final String b;
    private final List c;
    private final List d;
    private final HashMap e;

    public j(String str, String str2, List list, List list2, HashMap hashMap) {
        e.a(str2);
        if (str != null) {
            e.a(str);
        }
        this.a = str;
        this.b = str2;
        this.c = list;
        this.e = hashMap;
        this.d = list2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final List c() {
        return this.c;
    }

    public final List d() {
        return this.d;
    }

    public final HashMap e() {
        return this.e;
    }
}