package me.kiip.internal.c;

import java.net.InetSocketAddress;
import java.net.Proxy;

public class j {
    final a a;
    final Proxy b;
    final InetSocketAddress c;
    final boolean d;

    public j(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress, boolean z) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        } else if (proxy == null) {
            throw new NullPointerException("proxy == null");
        } else if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        } else {
            this.a = aVar;
            this.b = proxy;
            this.c = inetSocketAddress;
            this.d = z;
        }
    }

    public a a() {
        return this.a;
    }

    public Proxy b() {
        return this.b;
    }

    j c() {
        return new j(this.a, this.b, this.c, !this.d);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.a.equals(jVar.a) && this.b.equals(jVar.b) && this.c.equals(jVar.c) && this.d == jVar.d;
    }

    public int hashCode() {
        int hashCode = this.c.hashCode() + (((this.a.hashCode() + 527) * 31) + this.b.hashCode()) * 31;
        return (this.d ? hashCode * 31 : 0) + hashCode;
    }
}