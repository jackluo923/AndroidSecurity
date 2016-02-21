package me.kiip.internal.e;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import me.kiip.internal.c.a;
import me.kiip.internal.c.b;
import me.kiip.internal.c.c;
import me.kiip.internal.c.j;
import me.kiip.internal.c.k;
import me.kiip.internal.d.d;
import me.kiip.internal.d.h;

public final class p {
    private final a a;
    private final URI b;
    private final ProxySelector c;
    private final c d;
    private final d e;
    private final k f;
    private Proxy g;
    private InetSocketAddress h;
    private boolean i;
    private Proxy j;
    private Iterator k;
    private InetAddress[] l;
    private int m;
    private int n;
    private int o;
    private final List p;

    public p(a aVar, URI uri, ProxySelector proxySelector, c cVar, d dVar, k kVar) {
        this.o = -1;
        this.a = aVar;
        this.b = uri;
        this.c = proxySelector;
        this.d = cVar;
        this.e = dVar;
        this.f = kVar;
        this.p = new LinkedList();
        a(uri, aVar.c());
    }

    private void a(Proxy proxy) {
        String host;
        this.l = null;
        if (proxy.type() == Type.DIRECT) {
            host = this.b.getHost();
            this.n = h.a(this.b);
        } else {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                String hostName = inetSocketAddress.getHostName();
                this.n = inetSocketAddress.getPort();
                host = hostName;
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        }
        this.l = this.e.a(host);
        this.m = 0;
    }

    private void a(URI uri, Proxy proxy) {
        this.i = true;
        if (proxy != null) {
            this.j = proxy;
        } else {
            List select = this.c.select(uri);
            if (select != null) {
                this.k = select.iterator();
            }
        }
    }

    private boolean b() {
        return this.i;
    }

    private Proxy c() {
        if (this.j != null) {
            this.i = false;
            return this.j;
        } else {
            if (this.k != null) {
                while (this.k.hasNext()) {
                    Proxy proxy = (Proxy) this.k.next();
                    if (proxy.type() != Type.DIRECT) {
                        return proxy;
                    }
                }
            }
            this.i = false;
            return Proxy.NO_PROXY;
        }
    }

    private boolean d() {
        return this.l != null;
    }

    private InetSocketAddress e() {
        InetAddress[] inetAddressArr = this.l;
        int i = this.m;
        this.m = i + 1;
        InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddressArr[i], this.n);
        if (this.m == this.l.length) {
            this.l = null;
            this.m = 0;
        }
        return inetSocketAddress;
    }

    private void f() {
        this.o = this.a.b() != null ? 1 : 0;
    }

    private boolean g() {
        return this.o != -1;
    }

    private int h() {
        if (this.o == 1) {
            this.o = 0;
            return 1;
        } else if (this.o == 0) {
            this.o = -1;
            return 0;
        } else {
            throw new AssertionError();
        }
    }

    private boolean i() {
        return !this.p.isEmpty();
    }

    private j j() {
        return (j) this.p.remove(0);
    }

    public b a(String str) {
        boolean z = true;
        while (true) {
            b a = this.d.a(this.a);
            if (a != null) {
                if (!str.equals("GET") && !a.e()) {
                    a.close();
                }
                return a;
            } else {
                if (!g()) {
                    if (d() || b()) {
                        this.g = c();
                        a(this.g);
                    } else if (i()) {
                        return new b(j());
                    } else {
                        throw new NoSuchElementException();
                    }
                    this.h = e();
                    f();
                }
                if (h() != 1) {
                    z = false;
                }
                j jVar = new j(this.a, this.g, this.h, z);
                if (!this.f.b(jVar)) {
                    return new b(jVar);
                }
                this.p.add(jVar);
                return a(str);
            }
        }
    }

    public void a(b bVar, IOException iOException) {
        j b = bVar.b();
        if (!(b.b().type() == Type.DIRECT || this.c == null)) {
            this.c.connectFailed(this.b, b.b().address(), iOException);
        }
        this.f.a(b, iOException);
    }

    public boolean a() {
        return g() || d() || b() || i();
    }
}