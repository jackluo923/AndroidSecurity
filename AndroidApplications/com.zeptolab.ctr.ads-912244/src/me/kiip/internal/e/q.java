package me.kiip.internal.e;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.URL;
import me.kiip.internal.f.a;
import me.kiip.internal.f.i;
import me.kiip.internal.f.j;

public final class q implements r {
    private final e a;
    private final i b;
    private j c;

    public q(e eVar, i iVar) {
        this.a = eVar;
        this.b = iVar;
    }

    public InputStream a(CacheRequest cacheRequest) {
        return new s(this.c.d(), cacheRequest, this.a);
    }

    public OutputStream a() {
        c();
        return this.c.e();
    }

    public void a(o oVar) {
        throw new UnsupportedOperationException();
    }

    public boolean a(boolean z, OutputStream outputStream, InputStream inputStream) {
        if (!z) {
            return true;
        }
        if (this.c == null) {
            return false;
        }
        this.c.b(a.l);
        return true;
    }

    public void b() {
        this.c.e().close();
    }

    public void c() {
        if (this.c == null) {
            String str;
            this.a.d();
            l c = this.a.h.c();
            str = this.a.d.j() == 1 ? "HTTP/1.1" : "HTTP/1.0";
            URL url = this.a.a.getURL();
            c.a(this.a.c, e.a(url), str, e.b(url), this.a.g.getScheme());
            this.c = this.b.a(c.g(), this.a.e(), true);
            this.c.a((long) this.a.b.b());
        }
    }

    public n d() {
        l a = l.a(this.c.c());
        this.a.a(a);
        n nVar = new n(this.a.g, a);
        nVar.a("spdy/3");
        return nVar;
    }
}