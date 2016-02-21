package me.kiip.internal.e;

import java.net.CacheResponse;
import java.net.SecureCacheResponse;
import java.net.URL;
import javax.net.ssl.SSLSocket;
import me.kiip.internal.c.b;
import me.kiip.internal.c.g;
import me.kiip.internal.c.l;

public final class h extends e {
    private SSLSocket j;

    public h(g gVar, k kVar, String str, l lVar, b bVar, o oVar) {
        super(gVar, kVar, str, lVar, bVar, oVar);
        this.j = bVar != null ? (SSLSocket) bVar.c() : null;
    }

    protected void a(b bVar) {
        this.j = (SSLSocket) bVar.c();
    }

    protected boolean a(CacheResponse cacheResponse) {
        return cacheResponse instanceof SecureCacheResponse;
    }

    protected boolean q() {
        return false;
    }

    protected l t() {
        String k = this.h.k();
        if (k == null) {
            k = r();
        }
        URL url = this.a.getURL();
        return new l(url.getHost(), me.kiip.internal.d.h.a(url), k, this.h.p());
    }

    public SSLSocket u() {
        return this.j;
    }
}