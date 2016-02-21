package me.kiip.internal.e;

import com.heyzap.http.AsyncHttpClient;
import java.net.URI;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import me.kiip.internal.e.b.a;

public final class m {
    private final URI a;
    private final l b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private boolean g;
    private boolean h;
    private long i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;

    public m(URI uri, l lVar) {
        this.d = -1;
        this.e = -1;
        this.f = -1;
        this.i = -1;
        this.a = uri;
        this.b = lVar;
        a anonymousClass_1 = new a() {
            public void a(String str, String str2) {
                if ("no-cache".equalsIgnoreCase(str)) {
                    m.this.c = true;
                } else if ("max-age".equalsIgnoreCase(str)) {
                    m.this.d = b.a(str2);
                } else if ("max-stale".equalsIgnoreCase(str)) {
                    m.this.e = b.a(str2);
                } else if ("min-fresh".equalsIgnoreCase(str)) {
                    m.this.f = b.a(str2);
                } else if ("only-if-cached".equalsIgnoreCase(str)) {
                    m.this.g = true;
                }
            }
        };
        int i = 0;
        while (i < lVar.e()) {
            String a = lVar.a(i);
            String b = lVar.b(i);
            if ("Cache-Control".equalsIgnoreCase(a)) {
                b.a(b, anonymousClass_1);
            } else if ("Pragma".equalsIgnoreCase(a)) {
                if ("no-cache".equalsIgnoreCase(b)) {
                    this.c = true;
                }
            } else if ("If-None-Match".equalsIgnoreCase(a)) {
                this.q = b;
            } else if ("If-Modified-Since".equalsIgnoreCase(a)) {
                this.p = b;
            } else if ("Authorization".equalsIgnoreCase(a)) {
                this.h = true;
            } else if ("Content-Length".equalsIgnoreCase(a)) {
                try {
                    this.i = (long) Integer.parseInt(b);
                } catch (NumberFormatException e) {
                }
            } else if ("Transfer-Encoding".equalsIgnoreCase(a)) {
                this.j = b;
            } else if ("User-Agent".equalsIgnoreCase(a)) {
                this.k = b;
            } else if ("Host".equalsIgnoreCase(a)) {
                this.l = b;
            } else if ("Connection".equalsIgnoreCase(a)) {
                this.m = b;
            } else if (AsyncHttpClient.HEADER_ACCEPT_ENCODING.equalsIgnoreCase(a)) {
                this.n = b;
            } else if ("Content-Type".equalsIgnoreCase(a)) {
                this.o = b;
            } else if ("Proxy-Authorization".equalsIgnoreCase(a)) {
                this.r = b;
            }
            i++;
        }
    }

    public void a(long j) {
        if (this.i != -1) {
            this.b.d("Content-Length");
        }
        this.b.a("Content-Length", Long.toString(j));
        this.i = j;
    }

    public void a(String str) {
        if (this.k != null) {
            this.b.d("User-Agent");
        }
        this.b.a("User-Agent", str);
        this.k = str;
    }

    public void a(Date date) {
        if (this.p != null) {
            this.b.d("If-Modified-Since");
        }
        String a = d.a(date);
        this.b.a("If-Modified-Since", a);
        this.p = a;
    }

    public void a(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            String str = (String) entry.getKey();
            if ("Cookie".equalsIgnoreCase(str) || "Cookie2".equalsIgnoreCase(str)) {
                this.b.a(str, (List) entry.getValue());
            }
        }
    }

    public boolean a() {
        return "chunked".equalsIgnoreCase(this.j);
    }

    public void b(String str) {
        if (this.l != null) {
            this.b.d("Host");
        }
        this.b.a("Host", str);
        this.l = str;
    }

    public boolean b() {
        return "close".equalsIgnoreCase(this.m);
    }

    public l c() {
        return this.b;
    }

    public void c(String str) {
        if (this.m != null) {
            this.b.d("Connection");
        }
        this.b.a("Connection", str);
        this.m = str;
    }

    public void d(String str) {
        if (this.n != null) {
            this.b.d(AsyncHttpClient.HEADER_ACCEPT_ENCODING);
        }
        this.b.a(AsyncHttpClient.HEADER_ACCEPT_ENCODING, str);
        this.n = str;
    }

    public boolean d() {
        return this.c;
    }

    public int e() {
        return this.d;
    }

    public void e(String str) {
        if (this.o != null) {
            this.b.d("Content-Type");
        }
        this.b.a("Content-Type", str);
        this.o = str;
    }

    public int f() {
        return this.e;
    }

    public void f(String str) {
        if (this.q != null) {
            this.b.d("If-None-Match");
        }
        this.b.a("If-None-Match", str);
        this.q = str;
    }

    public int g() {
        return this.f;
    }

    public boolean h() {
        return this.g;
    }

    public boolean i() {
        return this.h;
    }

    public long j() {
        return this.i;
    }

    public String k() {
        return this.k;
    }

    public String l() {
        return this.l;
    }

    public String m_() {
        return this.m;
    }

    public String n() {
        return this.n;
    }

    public String o() {
        return this.o;
    }

    public String p() {
        return this.r;
    }

    public void q() {
        if (this.j != null) {
            this.b.d("Transfer-Encoding");
        }
        this.b.a("Transfer-Encoding", "chunked");
        this.j = "chunked";
    }

    public boolean r() {
        return this.p != null || this.q != null;
    }
}