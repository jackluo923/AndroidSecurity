package org.acra.e;

import com.andymstone.core.o;
import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import org.acra.ACRA;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;
import org.apache.http.HttpResponse;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.util.EntityUtils;

public final class c {
    private static /* synthetic */ int[] g;
    private String a;
    private String b;
    private int c;
    private int d;
    private int e;
    private Map f;

    public c() {
        this.c = 3000;
        this.d = 3000;
        this.e = 3;
    }

    static /* synthetic */ int[] a() {
        int[] iArr = g;
        if (iArr == null) {
            iArr = new int[Method.values().length];
            try {
                iArr[Method.POST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Method.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            g = iArr;
        }
        return iArr;
    }

    public static String b(Map map) {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (stringBuilder.length() != 0) {
                stringBuilder.append('&');
            }
            Object obj = map.get(next);
            if (obj == null) {
                obj = "";
            }
            stringBuilder.append(URLEncoder.encode(next.toString(), "UTF-8"));
            stringBuilder.append('=');
            stringBuilder.append(URLEncoder.encode(obj.toString(), "UTF-8"));
        }
        return stringBuilder.toString();
    }

    private HttpClient b() {
        HttpParams basicHttpParams = new BasicHttpParams();
        basicHttpParams.setParameter("http.protocol.cookie-policy", "rfc2109");
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, this.c);
        HttpConnectionParams.setSoTimeout(basicHttpParams, this.d);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", new PlainSocketFactory(), 80));
        if (ACRA.getConfig().N()) {
            schemeRegistry.register(new Scheme("https", new b(), 443));
        } else {
            schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        }
        HttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        defaultHttpClient.setHttpRequestRetryHandler(new d(this.e, null));
        return defaultHttpClient;
    }

    private HttpEntityEnclosingRequestBase b(URL url, Method method, String str, Type type) {
        HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase;
        switch (a()[method.ordinal()]) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
                httpEntityEnclosingRequestBase = new HttpPost(url.toString());
                break;
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                httpEntityEnclosingRequestBase = new HttpPut(url.toString());
                break;
            default:
                throw new UnsupportedOperationException(new StringBuilder("Unknown method: ").append(method.name()).toString());
        }
        Credentials c = c();
        if (c != null) {
            httpEntityEnclosingRequestBase.addHeader(BasicScheme.authenticate(c, "UTF-8", false));
        }
        httpEntityEnclosingRequestBase.setHeader("User-Agent", "Android");
        httpEntityEnclosingRequestBase.setHeader("Accept", "text/html,application/xml,application/json,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5");
        httpEntityEnclosingRequestBase.setHeader("Content-Type", type.getContentType());
        if (this.f != null) {
            Iterator it = this.f.keySet().iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                httpEntityEnclosingRequestBase.setHeader(str2, (String) this.f.get(str2));
            }
        }
        httpEntityEnclosingRequestBase.setEntity(new StringEntity(str, "UTF-8"));
        return httpEntityEnclosingRequestBase;
    }

    private UsernamePasswordCredentials c_() {
        return (this.a == null && this.b == null) ? null : new UsernamePasswordCredentials(this.a, this.b);
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(URL url, Method method, String str, Type type) {
        HttpClient b = b();
        HttpUriRequest b2 = b(url, method, str, type);
        ACRA.log.a(ACRA.LOG_TAG, new StringBuilder("Sending request to ").append(url).toString());
        HttpResponse httpResponse = null;
        try {
            httpResponse = b.execute(b2, new BasicHttpContext());
            if (httpResponse != null) {
                if (httpResponse.getStatusLine() != null) {
                    String toString = Integer.toString(httpResponse.getStatusLine().getStatusCode());
                    if (!(toString.equals("409") || toString.equals("403") || (!toString.startsWith("4") && !toString.startsWith("5")))) {
                        throw new IOException(new StringBuilder("Host returned error code ").append(toString).toString());
                    }
                }
                EntityUtils.toString(httpResponse.getEntity());
            }
            if (httpResponse != null) {
                httpResponse.getEntity().consumeContent();
            }
        } catch (Throwable th) {
            if (httpResponse != null) {
                httpResponse.getEntity().consumeContent();
            }
        }
    }

    public void a(Map map) {
        this.f = map;
    }

    public void b(int i) {
        this.d = i;
    }

    public void b(String str) {
        this.b = str;
    }

    public void c_(int i) {
        this.e = i;
    }
}