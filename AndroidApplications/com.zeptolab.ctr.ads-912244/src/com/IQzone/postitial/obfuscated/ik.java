package com.IQzone.postitial.obfuscated;

import java.util.HashSet;
import java.util.Set;

public final class ik extends gi {
    public final String c;
    public final int d;
    public final int e;
    public final boolean f;
    public final Set g;
    public final boolean h;
    public final String i;
    public final String j;
    public boolean k;

    public ik(String str, int i, int i2, boolean z, String str2, String str3, String str4, Set set, boolean z2, String str5, String str6, boolean z3) {
        super(str2, str3, str4);
        this.g = new HashSet();
        if (str == null) {
            throw new NullPointerException("<PostitialconfigurationResponse><1>, PCFV cannot be null");
        }
        this.k = z3;
        this.d = i;
        this.e = i2;
        this.f = z;
        this.c = str;
        this.g.addAll(set);
        this.h = z2;
        this.i = str5;
        this.j = str6;
    }
}