package me.kiip.internal.e;

import com.brightcove.player.event.EventType;
import com.heyzap.http.AsyncHttpClient;
import java.net.URI;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import me.kiip.internal.c.i;
import me.kiip.internal.d.f;
import me.kiip.internal.d.h;
import me.kiip.internal.e.b.a;

public final class n {
    static final String a;
    static final String b;
    private static final String c;
    private static final String d;
    private final URI e;
    private final l f;
    private Date g;
    private Date h;
    private Date i;
    private long j;
    private long k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;
    private boolean p;
    private boolean q;
    private String r;
    private int s;
    private Set t;
    private String u;
    private String v;
    private int w;
    private String x;

    static {
        c = f.a().b() + "-Sent-Millis";
        d = f.a().b() + "-Received-Millis";
        a = f.a().b() + "-Response-Source";
        b = f.a().b() + "-Selected-Transport";
    }

    public n(URI uri, l lVar) {
        this.n = -1;
        this.o = -1;
        this.s = -1;
        this.t = Collections.emptySet();
        this.w = -1;
        this.e = uri;
        this.f = lVar;
        a anonymousClass_1 = new a() {
            public void a(String str, String str2) {
                if ("no-cache".equalsIgnoreCase(str)) {
                    n.this.l = true;
                } else if ("no-store".equalsIgnoreCase(str)) {
                    n.this.m = true;
                } else if ("max-age".equalsIgnoreCase(str)) {
                    n.this.n = b.a(str2);
                } else if ("s-maxage".equalsIgnoreCase(str)) {
                    n.this.o = b.a(str2);
                } else if ("public".equalsIgnoreCase(str)) {
                    n.this.p = true;
                } else if ("must-revalidate".equalsIgnoreCase(str)) {
                    n.this.q = true;
                }
            }
        };
        int i = 0;
        while (i < lVar.e()) {
            String a = lVar.a(i);
            String b = lVar.b(i);
            if ("Cache-Control".equalsIgnoreCase(a)) {
                b.a(b, anonymousClass_1);
            } else if ("Date".equalsIgnoreCase(a)) {
                this.g = d.a(b);
            } else if ("Expires".equalsIgnoreCase(a)) {
                this.i = d.a(b);
            } else if ("Last-Modified".equalsIgnoreCase(a)) {
                this.h = d.a(b);
            } else if ("ETag".equalsIgnoreCase(a)) {
                this.r = b;
            } else if ("Pragma".equalsIgnoreCase(a)) {
                if ("no-cache".equalsIgnoreCase(b)) {
                    this.l = true;
                }
            } else if ("Age".equalsIgnoreCase(a)) {
                this.s = b.a(b);
            } else if ("Vary".equalsIgnoreCase(a)) {
                if (this.t.isEmpty()) {
                    this.t = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                String[] split = b.split(",");
                int length = split.length;
                int i2 = 0;
                while (i2 < length) {
                    this.t.add(split[i2].trim());
                    i2++;
                }
            } else if ("Content-Encoding".equalsIgnoreCase(a)) {
                this.u = b;
            } else if ("Transfer-Encoding".equalsIgnoreCase(a)) {
                this.v = b;
            } else if ("Content-Length".equalsIgnoreCase(a)) {
                try {
                    this.w = Integer.parseInt(b);
                } catch (NumberFormatException e) {
                }
            } else if ("Connection".equalsIgnoreCase(a)) {
                this.x = b;
            } else if (c.equalsIgnoreCase(a)) {
                this.j = Long.parseLong(b);
            } else if (d.equalsIgnoreCase(a)) {
                this.k = Long.parseLong(b);
            }
            i++;
        }
    }

    private long a(long j) {
        long j2 = 0;
        if (this.g != null) {
            j2 = Math.max(0, this.k - this.g.getTime());
        }
        if (this.s != -1) {
            j2 = Math.max(j2, TimeUnit.SECONDS.toMillis((long) this.s));
        }
        return j2 + this.k - this.j + j - this.k;
    }

    private static boolean b(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    private long j() {
        if (this.n != -1) {
            return TimeUnit.SECONDS.toMillis((long) this.n);
        }
        long time;
        if (this.i != null) {
            time = this.i.getTime() - (this.g != null ? this.g.getTime() : this.k);
            if (time <= 0) {
                time = 0;
            }
            return time;
        } else if (this.h == null || this.e.getRawQuery() != null) {
            return 0;
        } else {
            time = (this.g != null ? this.g.getTime() : this.j) - this.h.getTime();
            return time > 0 ? time / 10 : 0;
        }
    }

    private boolean k() {
        return this.n == -1 && this.i == null;
    }

    public i a(long j, m mVar) {
        long j2 = 0;
        if (!a(mVar)) {
            return i.c;
        }
        if (mVar.d() || mVar.r()) {
            return i.c;
        }
        long a = a(j);
        long j3 = j();
        if (mVar.e() != -1) {
            j3 = Math.min(j3, TimeUnit.SECONDS.toMillis((long) mVar.e()));
        }
        long toMillis = mVar.g() != -1 ? TimeUnit.SECONDS.toMillis((long) mVar.g()) : 0;
        if (!(this.q || mVar.f() == -1)) {
            j2 = TimeUnit.SECONDS.toMillis((long) mVar.f());
        }
        if (this.l || a + toMillis >= j + j3) {
            if (this.h != null) {
                mVar.a(this.h);
            } else if (this.g != null) {
                mVar.a(this.g);
            }
            if (this.r != null) {
                mVar.f(this.r);
            }
            return mVar.r() ? i.b : i.c;
        } else {
            if (toMillis + a >= j3) {
                this.f.a("Warning", "110 HttpURLConnection \"Response is stale\"");
            }
            if (a > 86400000 && k()) {
                this.f.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
            }
            return i.a;
        }
    }

    public void a(long j, long j2) {
        this.j = j;
        this.f.a(c, Long.toString(j));
        this.k = j2;
        this.f.a(d, Long.toString(j2));
    }

    public void a(String str) {
        this.f.b(b, str);
    }

    public void a(i iVar) {
        this.f.b(a, iVar.toString() + " " + this.f.c());
    }

    public boolean a() {
        return AsyncHttpClient.ENCODING_GZIP.equalsIgnoreCase(this.u);
    }

    public boolean a(Map map, Map map2) {
        Iterator it = this.t.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!h.a(map.get(str), map2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public boolean a(m mVar) {
        int c = this.f.c();
        if (c != 200 && c != 203 && c != 300 && c != 301 && c != 410) {
            return false;
        }
        return (!mVar.i() || this.p || this.q || this.o != -1) && !this.m;
    }

    public boolean a(n nVar) {
        if (nVar.f.c() == 304) {
            return true;
        }
        return this.h != null && nVar.h != null && nVar.h.getTime() < this.h.getTime();
    }

    public n b(n nVar) {
        int i = 0;
        l lVar = new l();
        lVar.b(this.f.a());
        int i2 = 0;
        while (i2 < this.f.e()) {
            String a = this.f.a(i2);
            String b = this.f.b(i2);
            if (!("Warning".equals(a) && b.startsWith("1"))) {
                if (!b(a) || nVar.f.e(a) == null) {
                    lVar.a(a, b);
                }
            }
            i2++;
        }
        while (i < nVar.f.e()) {
            String a2 = nVar.f.a(i);
            if (b(a2)) {
                lVar.a(a2, nVar.f.b(i));
            }
            i++;
        }
        return new n(this.e, lVar);
    }

    public void b() {
        this.u = null;
        this.f.d("Content-Encoding");
    }

    public void c() {
        this.w = -1;
        this.f.d("Content-Length");
    }

    public boolean d() {
        return "chunked".equalsIgnoreCase(this.v);
    }

    public boolean e() {
        return "close".equalsIgnoreCase(this.x);
    }

    public l f() {
        return this.f;
    }

    public Set g() {
        return this.t;
    }

    public int h() {
        return this.w;
    }

    public boolean i() {
        return this.t.contains(EventType.ANY);
    }
}