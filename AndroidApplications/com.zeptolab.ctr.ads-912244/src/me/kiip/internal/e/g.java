package me.kiip.internal.e;

import com.brightcove.player.media.MediaService;
import com.inmobi.androidsdk.impl.AdException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;
import me.kiip.internal.c.b;
import me.kiip.internal.d.f;
import me.kiip.internal.d.h;

public class g extends HttpURLConnection implements k {
    final me.kiip.internal.c.g a;
    protected IOException b;
    protected e c;
    private final l d;
    private long e;
    private int f;

    enum a {
        NONE,
        SAME_CONNECTION,
        DIFFERENT_CONNECTION;

        static {
            a = new a("NONE", 0);
            b = new a("SAME_CONNECTION", 1);
            c = new a("DIFFERENT_CONNECTION", 2);
            d = new a[]{a, b, c};
        }
    }

    public g(URL url, me.kiip.internal.c.g gVar) {
        super(url);
        this.d = new l();
        this.e = -1;
        this.a = gVar;
    }

    private e a(String str, l lVar, b bVar, o oVar) {
        if (this.url.getProtocol().equals(MediaService.DEFAULT_MEDIA_DELIVERY)) {
            return new e(this.a, this, str, lVar, bVar, oVar);
        }
        if (this.url.getProtocol().equals("https")) {
            return new h(this.a, this, str, lVar, bVar, oVar);
        }
        throw new AssertionError();
    }

    private void a(String str, boolean z) {
        List arrayList = new ArrayList();
        if (z) {
            arrayList.addAll(this.a.m());
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        int i = 0;
        while (i < length) {
            arrayList.add(split[i]);
            i++;
        }
        this.a.a(arrayList);
    }

    private boolean a(IOException iOException) {
        p pVar = this.c.e;
        if (!(pVar == null || this.c.d == null)) {
            pVar.a(this.c.d, iOException);
        }
        OutputStream f = this.c.f();
        int i = f == null || f instanceof o;
        if (!(pVar == null && this.c.d == null)) {
            if ((pVar == null || pVar.a()) && b(iOException) && i != 0) {
                this.c.a(true);
                this.c = a(this.method, this.d, null, (o) f);
                this.c.e = pVar;
                return true;
            }
        }
        this.b = iOException;
        return false;
    }

    private boolean a(boolean z) {
        try {
            this.c.b();
            if (z) {
                this.c.s();
            }
            return true;
        } catch (IOException e) {
            iOException = e;
            IOException iOException2;
            if (a(iOException2)) {
                return false;
            }
            throw iOException2;
        }
    }

    private boolean b(IOException iOException) {
        int i = iOException instanceof SSLHandshakeException && iOException.getCause() instanceof CertificateException;
        return i == 0 && !(iOException instanceof ProtocolException);
    }

    private void e() {
        if (this.b != null) {
            throw this.b;
        } else if (this.c == null) {
            this.connected = true;
            try {
                if (this.doOutput) {
                    if (this.method.equals("GET")) {
                        this.method = "POST";
                    } else if (!(this.method.equals("POST") || this.method.equals("PUT"))) {
                        throw new ProtocolException(this.method + " does not support writing");
                    }
                }
                this.c = a(this.method, this.d, null, null);
            } catch (IOException e) {
                IOException iOException = e;
                this.b = iOException;
                throw iOException;
            }
        }
    }

    private e f() {
        e();
        if (this.c.g()) {
            return this.c;
        }
        while (true) {
            if (a(true)) {
                a g = g();
                if (g == a.a) {
                    this.c.n();
                    return this.c;
                } else {
                    String str = this.method;
                    OutputStream f = this.c.f();
                    int responseCode = getResponseCode();
                    if (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303) {
                        str = "GET";
                        f = null;
                    }
                    if (f == null || f instanceof o) {
                        if (g == a.c) {
                            this.c.n();
                        }
                        this.c.a(false);
                        this.c = a(str, this.d, this.c.m(), (o) f);
                    } else {
                        throw new HttpRetryException("Cannot retry streamed HTTP body", this.c.j());
                    }
                }
            }
        }
    }

    private a g_() {
        Proxy b = this.c.d != null ? this.c.d.b().b() : this.a.c();
        int responseCode = getResponseCode();
        switch (responseCode) {
            case AdException.INVALID_REQUEST:
            case 301:
            case 302:
            case 303:
            case 307:
                if (!getInstanceFollowRedirects()) {
                    return a.a;
                }
                int i = this.f + 1;
                this.f = i;
                if (i > 20) {
                    throw new ProtocolException("Too many redirects: " + this.f);
                } else if (responseCode == 307 && !this.method.equals("GET") && !this.method.equals("HEAD")) {
                    return a.a;
                } else {
                    String headerField = getHeaderField("Location");
                    if (headerField == null) {
                        return a.a;
                    }
                    URL url = this.url;
                    this.url = new URL(url, headerField);
                    if (!this.url.getProtocol().equals("https") && !this.url.getProtocol().equals(MediaService.DEFAULT_MEDIA_DELIVERY)) {
                        return a.a;
                    }
                    boolean equals = url.getProtocol().equals(this.url.getProtocol());
                    if (!equals && !this.a.k()) {
                        return a.a;
                    }
                    return (url.getHost().equals(this.url.getHost()) && (h.a(url) == h.a(this.url) ? 1 : 0) != 0 && equals) ? a.b : a.c;
                }
            case 401:
                return c.a(this.a.i(), getResponseCode(), this.c.i().f(), this.d, b, this.url) ? a.a : a.b;
            case 407:
                if (b.type() != Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                if (c.a(this.a.i(), getResponseCode(), this.c.i().f(), this.d, b, this.url)) {
                }
            default:
                return a.a;
        }
    }

    public HttpURLConnection a() {
        return this;
    }

    public final void addRequestProperty(String str, String str2) {
        if (this.connected) {
            throw new IllegalStateException("Cannot add request property after connection is made");
        } else if (str == null) {
            throw new NullPointerException("field == null");
        } else if (str2 == null) {
            f.a().a("Ignoring header " + str + " because its value was null.");
        } else if ("X-Android-Transports".equals(str)) {
            a(str2, true);
        } else {
            this.d.a(str, str2);
        }
    }

    public e b() {
        return this.c;
    }

    public final long c() {
        return this.e;
    }

    public final void connect() {
        e();
        do {
        } while (!a(false));
    }

    public final int d() {
        return this.chunkLength;
    }

    public final void disconnect() {
        if (this.c != null) {
            if (this.c.g()) {
                h.a(this.c.k());
            }
            this.c.a(true);
        }
    }

    public int getConnectTimeout() {
        return this.a.a();
    }

    public final InputStream getErrorStream() {
        InputStream inputStream = null;
        try {
            e f = f();
            return (!f.o() || f.j() < 400) ? inputStream : f.k();
        } catch (IOException e) {
            return inputStream;
        }
    }

    public final String getHeaderField(int i) {
        try {
            return f().i().f().b(i);
        } catch (IOException e) {
            return null;
        }
    }

    public final String getHeaderField(String str) {
        try {
            l f = f().i().f();
            return str == null ? f.a() : f.e(str);
        } catch (IOException e) {
            return null;
        }
    }

    public final String getHeaderFieldKey(int i) {
        try {
            return f().i().f().a(i);
        } catch (IOException e) {
            return null;
        }
    }

    public final Map getHeaderFields() {
        try {
            return f().i().f().a(true);
        } catch (IOException e) {
            return null;
        }
    }

    public final InputStream getInputStream() {
        if (this.doInput) {
            e f = f();
            if (getResponseCode() >= 400) {
                throw new FileNotFoundException(this.url.toString());
            }
            InputStream k = f.k();
            if (k != null) {
                return k;
            }
            throw new ProtocolException("No response body exists; responseCode=" + getResponseCode());
        } else {
            throw new ProtocolException("This protocol does not support input");
        }
    }

    public final OutputStream getOutputStream() {
        connect();
        OutputStream f = this.c.f();
        if (f == null) {
            throw new ProtocolException("method does not support a request body: " + this.method);
        } else if (!this.c.g()) {
            return f;
        } else {
            throw new ProtocolException("cannot write request body after response has been read");
        }
    }

    public final Permission getPermission() {
        String host = getURL().getHost();
        int a = h.a(getURL());
        if (usingProxy()) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) this.a.c().address();
            host = inetSocketAddress.getHostName();
            a = inetSocketAddress.getPort();
        }
        return new SocketPermission(host + ":" + a, "connect, resolve");
    }

    public int getReadTimeout() {
        return this.a.b();
    }

    public final Map getRequestProperties() {
        if (!this.connected) {
            return this.d.a(false);
        }
        throw new IllegalStateException("Cannot access request header fields after connection is set");
    }

    public final String getRequestProperty(String str) {
        return str == null ? null : this.d.e(str);
    }

    public final int getResponseCode() {
        return f().j();
    }

    public String getResponseMessage() {
        return f().i().f().d();
    }

    public void setConnectTimeout(int i) {
        this.a.a((long) i, TimeUnit.MILLISECONDS);
    }

    public void setFixedLengthStreamingMode(int i) {
        setFixedLengthStreamingMode((long) i);
    }

    public void setFixedLengthStreamingMode(long j) {
        if (this.connected) {
            throw new IllegalStateException("Already connected");
        } else if (this.chunkLength > 0) {
            throw new IllegalStateException("Already in chunked mode");
        } else if (j < 0) {
            throw new IllegalArgumentException("contentLength < 0");
        } else {
            this.e = j;
            this.fixedContentLength = (int) Math.min(j, 2147483647L);
        }
    }

    public void setReadTimeout(int i) {
        this.a.b((long) i, TimeUnit.MILLISECONDS);
    }

    public final void setRequestProperty(String str, String str2) {
        if (this.connected) {
            throw new IllegalStateException("Cannot set request property after connection is made");
        } else if (str == null) {
            throw new NullPointerException("field == null");
        } else if (str2 == null) {
            f.a().a("Ignoring header " + str + " because its value was null.");
        } else if ("X-Android-Transports".equals(str)) {
            a(str2, false);
        } else {
            this.d.b(str, str2);
        }
    }

    public final boolean usingProxy() {
        Proxy c = this.a.c();
        return c != null && c.type() != Type.DIRECT;
    }
}