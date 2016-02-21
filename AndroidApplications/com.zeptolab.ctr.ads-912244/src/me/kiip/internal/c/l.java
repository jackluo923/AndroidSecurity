package me.kiip.internal.c;

import me.kiip.internal.d.h;

public final class l {
    final String a;
    final int b;
    final String c;
    final String d;

    public l(String str, int i, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("host == null");
        } else if (str2 == null) {
            throw new NullPointerException("userAgent == null");
        } else {
            this.a = str;
            this.b = i;
            this.c = str2;
            this.d = str3;
        }
    }

    me.kiip.internal.e.l a() {
        me.kiip.internal.e.l lVar = new me.kiip.internal.e.l();
        lVar.a("CONNECT " + this.a + ":" + this.b + " HTTP/1.1");
        lVar.b("Host", this.b == h.a("https") ? this.a : this.a + ":" + this.b);
        lVar.b("User-Agent", this.c);
        if (this.d != null) {
            lVar.b("Proxy-Authorization", this.d);
        }
        lVar.b("Proxy-Connection", "Keep-Alive");
        return lVar;
    }
}