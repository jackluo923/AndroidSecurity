package me.kiip.internal.c;

import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.SecureCacheResponse;
import java.net.URI;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import me.kiip.internal.d.g;
import me.kiip.internal.d.h;
import me.kiip.internal.e.i;
import me.kiip.internal.e.l;
import me.kiip.internal.e.n;

public final class e extends ResponseCache {
    private static final char[] b;
    final h a;
    private final me.kiip.internal.d.c c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    final class AnonymousClass_2 extends FilterInputStream {
        final /* synthetic */ me.kiip.internal.d.c.c a;

        AnonymousClass_2(InputStream inputStream, me.kiip.internal.d.c.c cVar) {
            this.a = cVar;
            super(inputStream);
        }

        public void close() {
            this.a.close();
            super.close();
        }
    }

    static /* synthetic */ class AnonymousClass_3 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[i.values().length];
            try {
                a[i.a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[i.b.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            a[i.c.ordinal()] = 3;
        }
    }

    private final class a extends CacheRequest {
        private final me.kiip.internal.d.c.a b;
        private OutputStream c;
        private boolean d;
        private OutputStream e;

        class AnonymousClass_1 extends FilterOutputStream {
            final /* synthetic */ e a;
            final /* synthetic */ me.kiip.internal.d.c.a b;

            AnonymousClass_1(OutputStream outputStream, e eVar, me.kiip.internal.d.c.a aVar) {
                this.a = eVar;
                this.b = aVar;
                super(outputStream);
            }

            public void close() {
                synchronized (a.this.a) {
                    if (a.this.d) {
                    } else {
                        a.this.d = true;
                        e.b(a.this.a);
                        super.close();
                        this.b.a();
                    }
                }
            }

            public void write(byte[] bArr, int i, int i2) {
                this.out.write(bArr, i, i2);
            }
        }

        public a(me.kiip.internal.d.c.a aVar) {
            this.b = aVar;
            this.c = aVar.a(1);
            this.e = new AnonymousClass_1(this.c, e.this, aVar);
        }

        public void abort() {
            synchronized (e.this) {
                if (this.d) {
                } else {
                    this.d = true;
                    e.c(e.this);
                    h.a(this.c);
                    try {
                        this.b.b();
                    } catch (IOException e) {
                    }
                }
            }
        }

        public OutputStream getBody() {
            return this.e;
        }
    }

    private static final class b {
        private final String a;
        private final l b;
        private final String c;
        private final l d;
        private final String e;
        private final Certificate[] f;
        private final Certificate[] g;

        public b(InputStream inputStream) {
            int i = 0;
            g gVar = new g(inputStream, h.d);
            this.a = gVar.a();
            this.c = gVar.a();
            this.b = new l();
            int b = gVar.b();
            int i2 = 0;
            while (i2 < b) {
                this.b.c(gVar.a());
                i2++;
            }
            this.d = new l();
            this.d.b(gVar.a());
            i2 = gVar.b();
            while (i < i2) {
                this.d.c(gVar.a());
                i++;
            }
            if (a()) {
                String a = gVar.a();
                if (a.length() > 0) {
                    throw new IOException("expected \"\" but was \"" + a + "\"");
                }
                this.e = gVar.a();
                this.f = a(gVar);
                this.g = a(gVar);
            } else {
                this.e = null;
                this.f = null;
                this.g = null;
            }
            inputStream.close();
        }

        public b(URI uri, l lVar, HttpURLConnection httpURLConnection) {
            Certificate[] certificateArr = null;
            this.a = uri.toString();
            this.b = lVar;
            this.c = httpURLConnection.getRequestMethod();
            this.d = l.a(httpURLConnection.getHeaderFields(), true);
            SSLSocket a = a(httpURLConnection);
            if (a != null) {
                this.e = a.getSession().getCipherSuite();
                try {
                    certificateArr = a.getSession().getPeerCertificates();
                } catch (SSLPeerUnverifiedException e) {
                }
                this.f = certificateArr;
                this.g = a.getSession().getLocalCertificates();
            } else {
                this.e = null;
                this.f = null;
                this.g = null;
            }
        }

        private SSLSocket a(HttpURLConnection httpURLConnection) {
            me.kiip.internal.e.e a = httpURLConnection instanceof i ? ((i) httpURLConnection).a() : ((me.kiip.internal.e.g) httpURLConnection).b();
            return a instanceof me.kiip.internal.e.h ? ((me.kiip.internal.e.h) a).u() : null;
        }

        private void a(Writer writer, Certificate[] certificateArr) {
            if (certificateArr == null) {
                writer.write("-1\n");
            } else {
                try {
                    writer.write(Integer.toString(certificateArr.length) + '\n');
                    int length = certificateArr.length;
                    int i = 0;
                    while (i < length) {
                        writer.write(me.kiip.internal.d.b.b(certificateArr[i].getEncoded()) + '\n');
                        i++;
                    }
                } catch (CertificateEncodingException e) {
                    throw new IOException(e.getMessage());
                }
            }
        }

        private boolean a() {
            return this.a.startsWith("https://");
        }

        private Certificate[] a(g gVar) {
            int b = gVar.b();
            if (b == -1) {
                return null;
            }
            try {
                CertificateFactory instance = CertificateFactory.getInstance("X.509");
                Certificate[] certificateArr = new Certificate[b];
                int i = 0;
                while (i < certificateArr.length) {
                    certificateArr[i] = instance.generateCertificate(new ByteArrayInputStream(me.kiip.internal.d.b.a(gVar.a().getBytes("US-ASCII"))));
                    i++;
                }
                return certificateArr;
            } catch (CertificateException e) {
                throw new IOException(e.getMessage());
            }
        }

        public void a(me.kiip.internal.d.c.a aVar) {
            int i = 0;
            Writer bufferedWriter = new BufferedWriter(new OutputStreamWriter(aVar.a(0), h.e));
            bufferedWriter.write(this.a + '\n');
            bufferedWriter.write(this.c + '\n');
            bufferedWriter.write(Integer.toString(this.b.e()) + '\n');
            int i2 = 0;
            while (i2 < this.b.e()) {
                bufferedWriter.write(this.b.a(i2) + ": " + this.b.b(i2) + '\n');
                i2++;
            }
            bufferedWriter.write(this.d.a() + '\n');
            bufferedWriter.write(Integer.toString(this.d.e()) + '\n');
            while (i < this.d.e()) {
                bufferedWriter.write(this.d.a(i) + ": " + this.d.b(i) + '\n');
                i++;
            }
            if (a()) {
                bufferedWriter.write(R.styleable.MapAttrs_uiZoomControls);
                bufferedWriter.write(this.e + '\n');
                a(bufferedWriter, this.f);
                a(bufferedWriter, this.g);
            }
            bufferedWriter.close();
        }

        public boolean a(URI uri, String str, Map map) {
            return this.a.equals(uri.toString()) && this.c.equals(str) && new n(uri, this.d).a(this.b.a(false), map);
        }
    }

    static class c extends CacheResponse {
        private final b a;
        private final me.kiip.internal.d.c.c b;
        private final InputStream c;

        public c(b bVar, me.kiip.internal.d.c.c cVar) {
            this.a = bVar;
            this.b = cVar;
            this.c = e.b(cVar);
        }

        public InputStream getBody() {
            return this.c;
        }

        public Map getHeaders() {
            return this.a.d.a(true);
        }
    }

    static class d extends SecureCacheResponse {
        private final b a;
        private final me.kiip.internal.d.c.c b;
        private final InputStream c;

        public d(b bVar, me.kiip.internal.d.c.c cVar) {
            this.a = bVar;
            this.b = cVar;
            this.c = e.b(cVar);
        }

        public InputStream getBody() {
            return this.c;
        }

        public String getCipherSuite() {
            return this.a.e;
        }

        public Map getHeaders() {
            return this.a.d.a(true);
        }

        public List getLocalCertificateChain() {
            return (this.a.g == null || this.a.g.length == 0) ? null : Arrays.asList((Object[]) this.a.g.clone());
        }

        public Principal getLocalPrincipal() {
            return (this.a.g == null || this.a.g.length == 0) ? null : ((X509Certificate) this.a.g[0]).getSubjectX500Principal();
        }

        public Principal getPeerPrincipal() {
            if (this.a.f != null && this.a.f.length != 0) {
                return ((X509Certificate) this.a.f[0]).getSubjectX500Principal();
            }
            throw new SSLPeerUnverifiedException(null);
        }

        public List getServerCertificateChain() {
            if (this.a.f != null && this.a.f.length != 0) {
                return Arrays.asList((Object[]) this.a.f.clone());
            }
            throw new SSLPeerUnverifiedException(null);
        }
    }

    static {
        b = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    }

    public e(File file, long j) {
        this.a = new h() {
            public CacheRequest a(URI uri, URLConnection uRLConnection) {
                return e.this.put(uri, uRLConnection);
            }

            public CacheResponse a(URI uri, String str, Map map) {
                return e.this.get(uri, str, map);
            }

            public void a() {
                e.this.a();
            }

            public void a(String str, URI uri) {
                e.this.a(str, uri);
            }

            public void a(CacheResponse cacheResponse, HttpURLConnection httpURLConnection) {
                e.this.a(cacheResponse, httpURLConnection);
            }

            public void a(i iVar) {
                e.this.a(iVar);
            }
        };
        this.c = me.kiip.internal.d.c.a(file, 201105, GoogleScorer.CLIENT_PLUS, j);
    }

    private String a(URI uri) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(uri.toString().getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT)));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    private static String a(byte[] bArr) {
        int i = 0;
        char[] cArr = b;
        char[] cArr2 = new char[(bArr.length * 2)];
        int length = bArr.length;
        int i2 = 0;
        while (i < length) {
            byte b = bArr[i];
            int i3 = i2 + 1;
            cArr2[i2] = cArr[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr2[i3] = cArr[b & 15];
            i++;
        }
        return new String(cArr2);
    }

    private me.kiip.internal.e.e a(URLConnection uRLConnection) {
        if (uRLConnection instanceof me.kiip.internal.e.g) {
            return ((me.kiip.internal.e.g) uRLConnection).b();
        }
        return uRLConnection instanceof i ? ((i) uRLConnection).a() : null;
    }

    private synchronized void a() {
        this.g++;
    }

    private void a(CacheResponse cacheResponse, URLConnection uRLConnection) {
        me.kiip.internal.e.e a = a(uRLConnection);
        b bVar = new b(a.a(), a.h().c().a(a.i().g()), uRLConnection);
        try {
            me.kiip.internal.d.c.a a2 = (cacheResponse instanceof c ? ((c) cacheResponse).b : ((d) cacheResponse).b).a();
            if (a2 != null) {
                try {
                    bVar.a(a2);
                    a2.a();
                } catch (IOException e) {
                    a(a2);
                }
            }
        } catch (IOException e2) {
            a2 = null;
            a(a2);
        }
    }

    private synchronized void a(i iVar) {
        this.h++;
        switch (AnonymousClass_3.a[iVar.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                this.g++;
                break;
            case GoogleScorer.CLIENT_PLUS:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                this.f++;
                break;
        }
    }

    private void a(me.kiip.internal.d.c.a aVar) {
        if (aVar != null) {
            try {
                aVar.b();
            } catch (IOException e) {
            }
        }
    }

    private boolean a(String str, URI uri) {
        if (!str.equals("POST") && !str.equals("PUT") && !str.equals("DELETE")) {
            return false;
        }
        try {
            this.c.c(a(uri));
        } catch (IOException e) {
        }
        return true;
    }

    static /* synthetic */ int b(e eVar) {
        int i = eVar.d;
        eVar.d = i + 1;
        return i;
    }

    private static InputStream b(me.kiip.internal.d.c.c cVar) {
        return new AnonymousClass_2(cVar.a(1), cVar);
    }

    static /* synthetic */ int c(e eVar) {
        int i = eVar.e;
        eVar.e = i + 1;
        return i;
    }

    public CacheResponse get(URI uri, String str, Map map) {
        CacheResponse cacheResponse = null;
        try {
            me.kiip.internal.d.c.c a = this.c.a(a(uri));
            if (a == null) {
                return cacheResponse;
            }
            b bVar = new b(a.a(0));
            if (!bVar.a(uri, str, map)) {
                a.close();
                return cacheResponse;
            } else if (bVar.a()) {
                return new d(bVar, a);
            } else {
                return new c(bVar, a);
            }
        } catch (IOException e) {
            return cacheResponse;
        }
    }

    public CacheRequest put(URI uri, URLConnection uRLConnection) {
        if (!(uRLConnection instanceof HttpURLConnection)) {
            return null;
        }
        uRLConnection = (HttpURLConnection) uRLConnection;
        String requestMethod = uRLConnection.getRequestMethod();
        if (a(requestMethod, uri) || !requestMethod.equals("GET")) {
            return null;
        }
        me.kiip.internal.e.e a = a(uRLConnection);
        if (a == null) {
            return null;
        }
        n i = a.i();
        if (i.i()) {
            return null;
        }
        b bVar = new b(uri, a.h().c().a(i.g()), uRLConnection);
        try {
            me.kiip.internal.d.c.a b = this.c.b(a(uri));
            if (b == null) {
                return null;
            }
            try {
                bVar.a(b);
                return new a(b);
            } catch (IOException e) {
                aVar = b;
                a(aVar);
                return null;
            }
        } catch (IOException e2) {
            me.kiip.internal.d.c.a aVar2 = null;
            a(aVar2);
            return null;
        }
    }
}