package me.kiip.internal.c;

import com.brightcove.player.media.MediaService;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.ResponseCache;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import me.kiip.internal.d.h;
import me.kiip.internal.e.c;
import me.kiip.internal.e.i;
import me.kiip.internal.e.j;
import me.kiip.internal.g.b;

public final class g implements URLStreamHandlerFactory {
    private static final List a;
    private final k b;
    private final d c;
    private Proxy d;
    private List e;
    private ProxySelector f;
    private CookieHandler g;
    private ResponseCache h;
    private SSLSocketFactory i;
    private HostnameVerifier j;
    private f k;
    private c l;
    private boolean m;
    private int n;
    private int o;

    class AnonymousClass_1 extends URLStreamHandler {
        final /* synthetic */ String a;

        AnonymousClass_1(String str) {
            this.a = str;
        }

        protected int getDefaultPort() {
            if (this.a.equals(MediaService.DEFAULT_MEDIA_DELIVERY)) {
                return 80;
            }
            if (this.a.equals("https")) {
                return 443;
            }
            throw new AssertionError();
        }

        protected URLConnection openConnection(URL url) {
            return g.this.a(url);
        }

        protected URLConnection openConnection(URL url, Proxy proxy) {
            return g.this.a(url, proxy);
        }
    }

    static {
        a = h.a(Arrays.asList(new String[]{"spdy/3", "http/1.1"}));
    }

    public g() {
        this.m = true;
        this.b = new k();
        this.c = new d();
    }

    private g(g gVar) {
        this.m = true;
        this.b = gVar.b;
        this.c = gVar.c;
    }

    private g n() {
        g gVar = new g(this);
        gVar.d = this.d;
        gVar.f = this.f != null ? this.f : ProxySelector.getDefault();
        gVar.g = this.g != null ? this.g : CookieHandler.getDefault();
        gVar.h = this.h != null ? this.h : ResponseCache.getDefault();
        gVar.i = this.i != null ? this.i : HttpsURLConnection.getDefaultSSLSocketFactory();
        gVar.j = this.j != null ? this.j : b.a;
        gVar.k = this.k != null ? this.k : c.a;
        gVar.l = this.l != null ? this.l : c.a();
        gVar.m = this.m;
        gVar.e = this.e != null ? this.e : a;
        gVar.n = this.n;
        gVar.o = this.o;
        return gVar;
    }

    public int a() {
        return this.n;
    }

    public HttpURLConnection a(URL url) {
        return a(url, this.d);
    }

    HttpURLConnection a(URL url, Proxy proxy) {
        String protocol = url.getProtocol();
        g n = n();
        n.d = proxy;
        if (protocol.equals(MediaService.DEFAULT_MEDIA_DELIVERY)) {
            return new me.kiip.internal.e.g(url, n);
        }
        if (protocol.equals("https")) {
            return new i(url, n);
        }
        throw new IllegalArgumentException("Unexpected protocol: " + protocol);
    }

    public g a(ResponseCache responseCache) {
        this.h = responseCache;
        return this;
    }

    public g a(List list) {
        List a = h.a(list);
        if (!a.contains("http/1.1")) {
            throw new IllegalArgumentException("transports doesn't contain http/1.1: " + a);
        } else if (a.contains(null)) {
            throw new IllegalArgumentException("transports must not contain null");
        } else if (a.contains(AdTrackerConstants.BLANK)) {
            throw new IllegalArgumentException("transports contains an empty string");
        } else {
            this.e = a;
            return this;
        }
    }

    public g a(HostnameVerifier hostnameVerifier) {
        this.j = hostnameVerifier;
        return this;
    }

    public g a(SSLSocketFactory sSLSocketFactory) {
        this.i = sSLSocketFactory;
        return this;
    }

    public void a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        } else if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        } else {
            long toMillis = timeUnit.toMillis(j);
            if (toMillis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            this.n = (int) toMillis;
        }
    }

    public int b() {
        return this.o;
    }

    public void b(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        } else if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        } else {
            long toMillis = timeUnit.toMillis(j);
            if (toMillis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            this.o = (int) toMillis;
        }
    }

    public Proxy c() {
        return this.d;
    }

    public URLStreamHandler createURLStreamHandler(String str) {
        return (str.equals(MediaService.DEFAULT_MEDIA_DELIVERY) || str.equals("https")) ? new AnonymousClass_1(str) : null;
    }

    public ProxySelector d() {
        return this.f;
    }

    public CookieHandler e() {
        return this.g;
    }

    public h f() {
        if (this.h instanceof e) {
            return ((e) this.h).a;
        }
        return this.h != null ? new j(this.h) : null;
    }

    public SSLSocketFactory g_() {
        return this.i;
    }

    public HostnameVerifier h() {
        return this.j;
    }

    public f i() {
        return this.k;
    }

    public c j() {
        return this.l;
    }

    public boolean k() {
        return this.m;
    }

    public k l() {
        return this.b;
    }

    public List m() {
        return this.e;
    }
}