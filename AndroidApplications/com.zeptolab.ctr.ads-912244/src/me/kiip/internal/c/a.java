package me.kiip.internal.c;

import java.net.Proxy;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import me.kiip.internal.d.h;

public final class a {
    final Proxy a;
    final String b;
    final int c;
    final SSLSocketFactory d;
    final HostnameVerifier e;
    final f f;
    final List g;

    public a(String str, int i, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, f fVar, Proxy proxy, List list) {
        if (str == null) {
            throw new NullPointerException("uriHost == null");
        } else if (i <= 0) {
            throw new IllegalArgumentException("uriPort <= 0: " + i);
        } else if (fVar == null) {
            throw new IllegalArgumentException("authenticator == null");
        } else if (list == null) {
            throw new IllegalArgumentException("transports == null");
        } else {
            this.a = proxy;
            this.b = str;
            this.c = i;
            this.d = sSLSocketFactory;
            this.e = hostnameVerifier;
            this.f = fVar;
            this.g = h.a(list);
        }
    }

    public String a_() {
        return this.b;
    }

    public SSLSocketFactory b() {
        return this.d;
    }

    public Proxy c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.a(this.a, aVar.a) && this.b.equals(aVar.b) && this.c == aVar.c && h.a(this.d, aVar.d) && h.a(this.e, aVar.e) && h.a(this.f, aVar.f) && h.a(this.g, aVar.g);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.f != null ? this.f.hashCode() : 0) + (((this.e != null ? this.e.hashCode() : 0) + (((this.d != null ? this.d.hashCode() : 0) + ((((this.b.hashCode() + 527) * 31) + this.c) * 31)) * 31)) * 31)) * 31;
        if (this.a != null) {
            i = this.a.hashCode();
        }
        return (hashCode + i) * 31 + this.g.hashCode();
    }
}