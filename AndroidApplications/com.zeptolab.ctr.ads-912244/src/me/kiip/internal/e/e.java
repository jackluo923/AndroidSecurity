package me.kiip.internal.e;

import com.heyzap.http.AsyncHttpClient;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.CookieHandler;
import java.net.Proxy.Type;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import me.kiip.internal.c.a;
import me.kiip.internal.c.b;
import me.kiip.internal.c.g;
import me.kiip.internal.c.i;
import me.kiip.internal.c.l;
import me.kiip.internal.d.d;
import me.kiip.internal.d.f;
import me.kiip.internal.d.h;

public class e {
    private static final CacheResponse j;
    protected final k a;
    protected final g b;
    protected final String c;
    protected b d;
    protected p e;
    long f;
    final URI g;
    final m h;
    n i;
    private i k;
    private OutputStream l;
    private r m;
    private InputStream n;
    private InputStream o;
    private CacheResponse p;
    private CacheRequest q;
    private boolean r;
    private n s;
    private InputStream t;
    private boolean u;
    private boolean v;

    static {
        j = new CacheResponse() {
            public InputStream getBody() {
                return new ByteArrayInputStream(h.a);
            }

            public Map getHeaders() {
                Map hashMap = new HashMap();
                hashMap.put(null, Collections.singletonList("HTTP/1.1 504 Gateway Timeout"));
                return hashMap;
            }
        };
    }

    public e(g gVar, k kVar, String str, l lVar, b bVar, o oVar) {
        this.f = -1;
        this.b = gVar;
        this.a = kVar;
        this.c = str;
        this.d = bVar;
        this.l = oVar;
        try {
            this.g = f.a().a(kVar.getURL());
            this.h = new m(this.g, new l(lVar));
        } catch (URISyntaxException e) {
            throw new IOException(e.getMessage());
        }
    }

    public static String a(URL url) {
        String file = url.getFile();
        if (file == null) {
            return "/";
        }
        return file.startsWith("/") ? file : "/" + file;
    }

    private void a(InputStream inputStream) {
        this.n = inputStream;
        if (this.r && this.i.a()) {
            this.i.b();
            this.i.c();
            this.o = new GZIPInputStream(inputStream);
        } else {
            this.o = inputStream;
        }
    }

    private void a(n nVar, InputStream inputStream) {
        if (this.o != null) {
            throw new IllegalStateException();
        }
        this.i = nVar;
        if (inputStream != null) {
            a(inputStream);
        }
    }

    public static String b(URL url) {
        int port = url.getPort();
        String host = url.getHost();
        return (port <= 0 || port == h.a(url.getProtocol())) ? host : host + ":" + port;
    }

    public static String r() {
        String property = System.getProperty("http.agent");
        return property != null ? property : "Java" + System.getProperty("java.version");
    }

    private void u() {
        this.k = i.c;
        if (this.a.getUseCaches()) {
            me.kiip.internal.c.h f = this.b.f();
            if (f != null) {
                CacheResponse a = f.a(this.g, this.c, this.h.c().a(false));
                if (a != null) {
                    Map headers = a.getHeaders();
                    this.t = a.getBody();
                    if (!a(a) || headers == null || this.t == null) {
                        h.a(this.t);
                    } else {
                        this.s = new n(this.g, l.a(headers, true));
                        this.k = this.s.a(System.currentTimeMillis(), this.h);
                        if (this.k == i.a) {
                            this.p = a;
                            a(this.s, this.t);
                        } else if (this.k == i.b) {
                            this.p = a;
                        } else if (this.k == i.c) {
                            h.a(this.t);
                        } else {
                            throw new AssertionError();
                        }
                    }
                }
            }
        }
    }

    private void v() {
        if (this.d == null) {
            c();
        }
        if (this.m != null) {
            throw new IllegalStateException();
        }
        this.m = (r) this.d.a(this);
        if (e() && this.l == null) {
            this.l = this.m.a();
        }
    }

    private void w() {
        if (this.a.getUseCaches()) {
            me.kiip.internal.c.h f = this.b.f();
            if (f != null) {
                URLConnection a = this.a.a();
                if (this.i.a(this.h)) {
                    this.q = f.a(this.g, a);
                } else {
                    f.a(a.getRequestMethod(), this.g);
                }
            }
        }
    }

    private void x() {
        this.h.c().a(p());
        if (this.h.k() == null) {
            this.h.a(r());
        }
        if (this.h.l() == null) {
            this.h.b(b(this.a.getURL()));
        }
        if ((this.d == null || this.d.j() != 0) && this.h.m() == null) {
            this.h.c("Keep-Alive");
        }
        if (this.h.n() == null) {
            this.r = true;
            this.h.d(AsyncHttpClient.ENCODING_GZIP);
        }
        if (e() && this.h.o() == null) {
            this.h.e("application/x-www-form-urlencoded");
        }
        long ifModifiedSince = this.a.getIfModifiedSince();
        if (ifModifiedSince != 0) {
            this.h.a(new Date(ifModifiedSince));
        }
        CookieHandler e = this.b.e();
        if (e != null) {
            this.h.a(e.get(this.g, this.h.c().a(false)));
        }
    }

    private String y() {
        URL url = this.a.getURL();
        return q() ? url.toString() : a(url);
    }

    public URI a() {
        return this.g;
    }

    protected void a(b bVar) {
    }

    public void a(l lVar) {
        CookieHandler e = this.b.e();
        if (e != null) {
            e.put(this.g, lVar.a(true));
        }
    }

    public final void a(boolean z) {
        if (this.o == this.t) {
            h.a(this.o);
        }
        if (!this.v && this.d != null) {
            this.v = true;
            if (this.m == null || !this.m.a(z, this.l, this.n)) {
                h.a(this.d);
                this.d = null;
            } else if (this.u) {
                this.b.j().a(this.d);
                this.d = null;
            }
        }
    }

    protected boolean a(CacheResponse cacheResponse) {
        return true;
    }

    public final void b() {
        if (this.k == null) {
            x();
            u();
            me.kiip.internal.c.h f = this.b.f();
            if (f != null) {
                f.a(this.k);
            }
            if (this.h.h() && this.k.a()) {
                if (this.k == i.b) {
                    h.a(this.t);
                }
                this.k = i.a;
                this.p = j;
                a(new n(this.g, l.a(this.p.getHeaders(), true)), this.p.getBody());
            }
            if (this.k.a()) {
                v();
            } else if (this.d != null) {
                this.b.j().a(this.d);
                this.d = null;
            }
        }
    }

    protected final void c() {
        HostnameVerifier hostnameVerifier = null;
        if (this.d == null) {
            if (this.e == null) {
                String host = this.g.getHost();
                if (host == null) {
                    throw new UnknownHostException(this.g.toString());
                }
                SSLSocketFactory g;
                if (this.g.getScheme().equalsIgnoreCase("https")) {
                    g = this.b.g();
                    hostnameVerifier = this.b.h();
                } else {
                    g = null;
                }
                this.e = new p(new a(host, h.a(this.g), g, hostnameVerifier, this.b.i(), this.b.c(), this.b.m()), this.g, this.b.d(), this.b.j(), d.a, this.b.l());
            }
            this.d = this.e.a(this.c);
            if (!this.d.a()) {
                this.d.a(this.b.a(), this.b.b(), t());
                this.b.j().b(this.d);
                this.b.l().a(this.d.b());
            }
            a(this.d);
            if (this.d.b().b() != this.b.c()) {
                this.h.c().a(p());
            }
        }
    }

    public void d() {
        if (this.f != -1) {
            throw new IllegalStateException();
        }
        this.f = System.currentTimeMillis();
    }

    boolean e_() {
        return this.c.equals("POST") || this.c.equals("PUT");
    }

    public final OutputStream f() {
        if (this.k != null) {
            return this.l;
        }
        throw new IllegalStateException();
    }

    public final boolean g() {
        return this.i != null;
    }

    public final m h() {
        return this.h;
    }

    public final n i() {
        if (this.i != null) {
            return this.i;
        }
        throw new IllegalStateException();
    }

    public final int j() {
        if (this.i != null) {
            return this.i.f().c();
        }
        throw new IllegalStateException();
    }

    public final InputStream k() {
        if (this.i != null) {
            return this.o;
        }
        throw new IllegalStateException();
    }

    public final CacheResponse l() {
        return this.p;
    }

    public final b m() {
        return this.d;
    }

    public final void n() {
        this.u = true;
        if (this.d != null && this.v) {
            this.b.j().a(this.d);
            this.d = null;
        }
    }

    public final boolean o() {
        int c = this.i.f().c();
        if (this.c.equals("HEAD")) {
            return false;
        }
        if ((c < 100 || c >= 200) && c != 204 && c != 304) {
            return true;
        }
        return this.i.h() != -1 || this.i.d();
    }

    String p() {
        String str;
        str = (this.d == null || this.d.j() != 0) ? "HTTP/1.1" : "HTTP/1.0";
        return this.c + " " + y() + " " + str;
    }

    protected boolean q() {
        if (this.d == null) {
            return this.a.usingProxy();
        }
        return this.d.b().b().type() == Type.HTTP;
    }

    public final void s() {
        if (g()) {
            this.i.a(this.k);
        } else if (this.k == null) {
            throw new IllegalStateException("readResponse() without sendRequest()");
        } else if (this.k.a()) {
            if (this.f == -1) {
                if (this.l instanceof o) {
                    this.h.a((long) ((o) this.l).c());
                }
                this.m.c();
            }
            if (this.l != null) {
                this.l.close();
                if (this.l instanceof o) {
                    this.m.a((o) this.l);
                }
            }
            this.m.b();
            this.i = this.m.d();
            this.i.a(this.f, System.currentTimeMillis());
            this.i.a(this.k);
            if (this.k == i.b && this.s.a(this.i)) {
                a(false);
                a(this.s.b(this.i), this.t);
                me.kiip.internal.c.h f = this.b.f();
                f.a();
                f.a(this.p, this.a.a());
                return;
            } else {
                h.a(this.t);
            }
            if (o()) {
                w();
            }
            a(this.m.a(this.q));
        }
    }

    protected l t() {
        return null;
    }
}