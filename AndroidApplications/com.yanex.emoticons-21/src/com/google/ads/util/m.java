package com.google.ads.util;

import android.os.Build;

final class m {
    static final m d;
    static final m e;
    static final m f;
    public final String a;
    public final String b;
    public final String c;

    static {
        d = new m();
        e = new m("unknown", "generic", "generic");
        f = new m("unknown", "generic_x86", "Android");
    }

    m() {
        this.a = Build.BOARD;
        this.b = Build.DEVICE;
        this.c = Build.BRAND;
    }

    private m(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    private static boolean a(String str, String str2) {
        if (str != null) {
            return str.equals(str2);
        }
        return str == str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return a(this.a, mVar.a) && a(this.b, mVar.b) && a(this.c, mVar.c);
    }

    public final int hashCode() {
        int i = 0;
        if (this.a != null) {
            i = this.a.hashCode() + 0;
        }
        if (this.b != null) {
            i += this.b.hashCode();
        }
        return this.c != null ? i + this.c.hashCode() : i;
    }
}