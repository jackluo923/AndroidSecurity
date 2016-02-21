package com.flurry.sdk;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class ek extends fd {
    private static final String a;
    private static SSLContext b;
    private static HostnameVerifier c;
    private String d;
    private a e;
    private int f;
    private int i;
    private boolean j;
    private final dp k;
    private c l;
    private HttpURLConnection m;
    private HttpClient n;
    private boolean o;
    private boolean p;
    private Exception q;
    private int r;
    private final dp s;
    private final Object t;

    public static interface c {
        void a(ek ekVar);

        void a(ek ekVar, InputStream inputStream);

        void a(ek ekVar, OutputStream outputStream);
    }

    static /* synthetic */ class AnonymousClass_3 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.flurry.sdk.ek.a.values().length];
            try {
                a[com.flurry.sdk.ek.a.c.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.flurry.sdk.ek.a.d.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[com.flurry.sdk.ek.a.e.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[com.flurry.sdk.ek.a.f.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a[com.flurry.sdk.ek.a.b.ordinal()] = 5;
        }
    }

    public enum a {
        kUnknown,
        kGet,
        kPost,
        kPut,
        kDelete,
        kHead;

        static {
            a = new com.flurry.sdk.ek.a("kUnknown", 0);
            b = new com.flurry.sdk.ek.a("kGet", 1);
            c = new com.flurry.sdk.ek.a("kPost", 2);
            d = new com.flurry.sdk.ek.a("kPut", 3);
            e = new com.flurry.sdk.ek.a("kDelete", 4);
            f = new com.flurry.sdk.ek.a("kHead", 5);
            g = new com.flurry.sdk.ek.a[]{a, b, c, d, e, f};
        }

        public HttpRequestBase a_(String str) {
            switch (AnonymousClass_3.a[ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    return new HttpPost(str);
                case GoogleScorer.CLIENT_PLUS:
                    return new HttpPut(str);
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return new HttpDelete(str);
                case GoogleScorer.CLIENT_APPSTATE:
                    return new HttpHead(str);
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return new HttpGet(str);
                default:
                    return null;
            }
        }

        public String toString() {
            switch (AnonymousClass_3.a[ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    return "POST";
                case GoogleScorer.CLIENT_PLUS:
                    return "PUT";
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    return "DELETE";
                case GoogleScorer.CLIENT_APPSTATE:
                    return "HEAD";
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return "GET";
                default:
                    return null;
            }
        }
    }

    public static class b implements com.flurry.sdk.ek.c {
        public void a(ek ekVar) {
        }

        public void a(ek ekVar, InputStream inputStream) {
        }

        public void a(ek ekVar, OutputStream outputStream) {
        }
    }

    static {
        a = ek.class.getSimpleName();
    }

    public ek() {
        this.f = 10000;
        this.i = 15000;
        this.j = true;
        this.k = new dp();
        this.r = -1;
        this.s = new dp();
        this.t = new Object();
    }

    private void a(InputStream inputStream) {
        if (this.l != null && !b() && inputStream != null) {
            this.l.a(this, inputStream);
        }
    }

    private void a(OutputStream outputStream) {
        if (this.l != null && !b() && outputStream != null) {
            this.l.a(this, outputStream);
        }
    }

    private static synchronized SSLContext m() {
        SSLContext sSLContext;
        synchronized (ek.class) {
            if (b != null) {
                sSLContext = b;
            } else {
                try {
                    TrustManager[] trustManagerArr = new TrustManager[]{new eg(null)};
                    b = SSLContext.getInstance("TLS");
                    b.init(null, trustManagerArr, new SecureRandom());
                } catch (Exception e) {
                    el.a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Exception creating SSL context", e);
                }
                sSLContext = b;
            }
        }
        return sSLContext;
    }

    private static synchronized HostnameVerifier n() {
        HostnameVerifier hostnameVerifier;
        synchronized (ek.class) {
            if (c != null) {
                hostnameVerifier = c;
            } else {
                c = new ee();
                hostnameVerifier = c;
            }
        }
        return hostnameVerifier;
    }

    private void o() {
        Closeable outputStream;
        Closeable bufferedOutputStream;
        Throwable th;
        Closeable closeable = null;
        if (!this.p) {
            Entry entry;
            this.m = (HttpURLConnection) new URL(this.d).openConnection();
            this.m.setConnectTimeout(this.f);
            this.m.setReadTimeout(this.i);
            this.m.setRequestMethod(this.e.toString());
            this.m.setInstanceFollowRedirects(this.j);
            this.m.setDoOutput(a.c.equals(this.e));
            this.m.setDoInput(true);
            if (el.d() && this.m instanceof HttpsURLConnection) {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) this.m;
                httpsURLConnection.setHostnameVerifier(n());
                httpsURLConnection.setSSLSocketFactory(m().getSocketFactory());
            }
            Iterator it = this.k.b().iterator();
            while (it.hasNext()) {
                entry = (Entry) it.next();
                this.m.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            if (!(a.b.equals(this.e) || a.c.equals(this.e))) {
                this.m.setRequestProperty(AsyncHttpClient.HEADER_ACCEPT_ENCODING, AdTrackerConstants.BLANK);
            }
            if (this.p) {
                r();
            } else {
                if (a.c.equals(this.e)) {
                    try {
                        outputStream = this.m.getOutputStream();
                        try {
                            bufferedOutputStream = new BufferedOutputStream(outputStream);
                            try {
                                a((OutputStream)bufferedOutputStream);
                                fb.a(bufferedOutputStream);
                                fb.a(outputStream);
                            } catch (Throwable th2) {
                                th = th2;
                                closeable = outputStream;
                                fb.a(bufferedOutputStream);
                                fb.a(closeable);
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedOutputStream = null;
                            closeable = outputStream;
                            fb.a(bufferedOutputStream);
                            fb.a(closeable);
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedOutputStream = null;
                        fb.a(bufferedOutputStream);
                        fb.a(closeable);
                        throw th;
                    }
                }
                this.r = this.m.getResponseCode();
                it = this.m.getHeaderFields().entrySet().iterator();
                while (it.hasNext()) {
                    entry = (Entry) it.next();
                    Iterator it2 = ((List) entry.getValue()).iterator();
                    while (it2.hasNext()) {
                        this.s.a(entry.getKey(), (String) it2.next());
                    }
                }
                if (!a.b.equals(this.e) && !a.c.equals(this.e)) {
                    r();
                } else if (this.p) {
                    r();
                } else {
                    try {
                        outputStream = this.m.getInputStream();
                        try {
                            bufferedOutputStream = new BufferedInputStream(outputStream);
                            try {
                                a((InputStream)bufferedOutputStream);
                                fb.a(bufferedOutputStream);
                                fb.a(outputStream);
                                r();
                            } catch (Throwable th5) {
                                th = th5;
                                closeable = bufferedOutputStream;
                                bufferedOutputStream = outputStream;
                                fb.a(closeable);
                                fb.a(bufferedOutputStream);
                                throw th;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            bufferedOutputStream = outputStream;
                            fb.a(closeable);
                            fb.a(bufferedOutputStream);
                            throw th;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        bufferedOutputStream = null;
                        fb.a(closeable);
                        fb.a(bufferedOutputStream);
                        throw th;
                    }
                }
            }
        }
    }

    private void p() {
        Closeable bufferedInputStream;
        Throwable th;
        Closeable closeable = null;
        if (!this.p) {
            HttpUriRequest a = this.e.a(this.d);
            Iterator it = this.k.b().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                a.setHeader((String) entry.getKey(), (String) entry.getValue());
            }
            if (!(a.b.equals(this.e) || a.c.equals(this.e))) {
                a.removeHeaders(AsyncHttpClient.HEADER_ACCEPT_ENCODING);
            }
            if (a.c.equals(this.e)) {
                ((HttpPost) a).setEntity(new AbstractHttpEntity() {
                    public InputStream getContent() {
                        throw new UnsupportedOperationException();
                    }

                    public long getContentLength() {
                        return -1;
                    }

                    public boolean isRepeatable() {
                        return false;
                    }

                    public boolean isStreaming() {
                        return false;
                    }

                    @TargetApi(9)
                    public void writeTo(OutputStream outputStream) {
                        Throwable th;
                        Closeable closeable = null;
                        try {
                            Closeable bufferedOutputStream = new BufferedOutputStream(outputStream);
                            try {
                                ek.this.a((OutputStream)bufferedOutputStream);
                                fb.a(bufferedOutputStream);
                            } catch (IOException e) {
                                iOException = e;
                                throw iOException;
                            } catch (Exception e2) {
                                th = e2;
                                if (VERSION.SDK_INT < 9) {
                                    throw new IOException(th);
                                }
                                throw new IOException(th.toString());
                            }
                        } catch (IOException e3) {
                            IOException iOException2 = e3;
                            bufferedOutputStream = closeable;
                            throw iOException2;
                        } catch (Exception e4) {
                            th = e4;
                            bufferedOutputStream = closeable;
                            if (VERSION.SDK_INT < 9) {
                                throw new IOException(th.toString());
                            }
                            throw new IOException(th);
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = closeable;
                            fb.a(bufferedOutputStream);
                            throw th;
                        }
                    }
                });
            }
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.f);
            HttpConnectionParams.setSoTimeout(basicHttpParams, this.i);
            basicHttpParams.setParameter("http.protocol.handle-redirects", Boolean.valueOf(this.j));
            this.n = eh.a(basicHttpParams);
            HttpResponse execute = this.n.execute(a);
            if (this.p) {
                throw new Exception("Request cancelled");
            }
            if (execute != null) {
                this.r = execute.getStatusLine().getStatusCode();
                Header[] allHeaders = execute.getAllHeaders();
                if (allHeaders != null) {
                    int length = allHeaders.length;
                    int i = 0;
                    while (i < length) {
                        HeaderElement[] elements = allHeaders[i].getElements();
                        int length2 = elements.length;
                        int i2 = 0;
                        while (i2 < length2) {
                            HeaderElement headerElement = elements[i2];
                            this.s.a(headerElement.getName(), headerElement.getValue());
                            i2++;
                        }
                        i++;
                    }
                }
                if (!a.b.equals(this.e) && !a.c.equals(this.e)) {
                    r();
                    return;
                } else if (this.p) {
                    throw new Exception("Request cancelled");
                } else {
                    HttpEntity entity = execute.getEntity();
                    if (entity != null) {
                        try {
                            Closeable content = entity.getContent();
                            try {
                                bufferedInputStream = new BufferedInputStream(content);
                                try {
                                    a((InputStream)bufferedInputStream);
                                    fb.a(bufferedInputStream);
                                    fb.a(content);
                                } catch (Throwable th2) {
                                    th = th2;
                                    closeable = content;
                                    fb.a(bufferedInputStream);
                                    fb.a(closeable);
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedInputStream = null;
                                closeable = content;
                                fb.a(bufferedInputStream);
                                fb.a(closeable);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedInputStream = null;
                            fb.a(bufferedInputStream);
                            fb.a(closeable);
                            throw th;
                        }
                    }
                }
            }
            r();
        }
    }

    private void q() {
        if (this.l != null && !b()) {
            this.l.a(this);
        }
    }

    private void r() {
        if (!this.o) {
            this.o = true;
            if (this.m != null) {
                this.m.disconnect();
            }
            if (this.n != null) {
                this.n.getConnectionManager().shutdown();
            }
        }
    }

    private void s() {
        if (!this.o) {
            this.o = true;
            if (this.m != null || this.n != null) {
                new Thread() {
                    public void run() {
                        if (ek.this.m != null) {
                            ek.this.m.disconnect();
                        }
                        if (ek.this.n != null) {
                            ek.this.n.getConnectionManager().shutdown();
                        }
                    }
                }.start();
            }
        }
    }

    public void a() {
        try {
            if (this.d == null) {
                q();
            } else if (es.a().c()) {
                if (this.e == null || a.a.equals(this.e)) {
                    this.e = a.b;
                }
                if (VERSION.SDK_INT >= 9) {
                    o();
                } else {
                    p();
                }
                el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "HTTP status: " + this.r + " for url: " + this.d);
                q();
            } else {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Network not available, aborting http request: " + this.d);
                q();
            }
        } catch (Exception e) {
            Throwable th = e;
            el.a((int)GoogleScorer.CLIENT_APPSTATE, a, "HTTP status: " + this.r + " for url: " + this.d);
            el.a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Exception during http request: " + this.d, th);
            this.q = th;
            q();
        }
    }

    public void a(a aVar) {
        this.e = aVar;
    }

    public void a(c cVar) {
        this.l = cVar;
    }

    public void a(String str) {
        this.d = str;
    }

    public void a(Object obj, Object obj2) {
        this.k.a(obj, obj2);
    }

    public void a(boolean z) {
        this.j = z;
    }

    public List b(Object obj) {
        return obj == null ? null : this.s.a(obj);
    }

    public boolean b() {
        boolean z;
        synchronized (this.t) {
            z = this.p;
        }
        return z;
    }

    public boolean c() {
        return !f() && d();
    }

    public boolean d() {
        return this.r >= 200 && this.r < 400;
    }

    public int e() {
        return this.r;
    }

    public boolean f() {
        return this.q != null;
    }

    public void g() {
        synchronized (this.t) {
            this.p = true;
        }
        s();
    }

    public void h() {
        g();
    }
}