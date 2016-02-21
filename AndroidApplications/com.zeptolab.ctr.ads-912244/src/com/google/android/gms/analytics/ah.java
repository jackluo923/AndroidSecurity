package com.google.android.gms.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.admarvel.android.ads.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class ah implements n {
    private final Context mContext;
    private GoogleAnalytics rA;
    private final String ul;
    private final HttpClient um;
    private URL un;

    ah(HttpClient httpClient, Context context) {
        this(httpClient, GoogleAnalytics.getInstance(context), context);
    }

    ah(HttpClient httpClient, GoogleAnalytics googleAnalytics, Context context) {
        this.mContext = context.getApplicationContext();
        this.ul = a("GoogleAnalytics", "3.0", VERSION.RELEASE, ak.a(Locale.getDefault()), Build.MODEL, Build.ID);
        this.um = httpClient;
        this.rA = googleAnalytics;
    }

    private void a(ab abVar, URL url, boolean z) {
        if (!TextUtils.isEmpty(abVar.cn())) {
            URL url2;
            if (url == null) {
                try {
                    url2 = this.un != null ? this.un : new URL("https://ssl.google-analytics.com/collect");
                } catch (MalformedURLException e) {
                }
            } else {
                url2 = url;
            }
            HttpHost httpHost = new HttpHost(url2.getHost(), url2.getPort(), url2.getProtocol());
            try {
                HttpEntityEnclosingRequest c = c(abVar.cn(), url2.getPath());
                if (c != null) {
                    c.addHeader("Host", httpHost.toHostString());
                    if (aa.cm()) {
                        a(c);
                    }
                    if (z) {
                        q.p(this.mContext);
                    }
                    HttpResponse execute = this.um.execute(httpHost, c);
                    int statusCode = execute.getStatusLine().getStatusCode();
                    HttpEntity entity = execute.getEntity();
                    if (entity != null) {
                        entity.consumeContent();
                    }
                    if (statusCode != 200) {
                        aa.w("Bad response: " + execute.getStatusLine().getStatusCode());
                    }
                }
            } catch (ClientProtocolException e2) {
                aa.w("ClientProtocolException sending monitoring hit.");
            } catch (IOException e3) {
                IOException iOException = e3;
                aa.w("Exception sending monitoring hit: " + iOException.getClass().getSimpleName());
                aa.w(iOException.getMessage());
            }
        }
    }

    private void a(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        StringBuffer stringBuffer = new StringBuffer();
        Header[] allHeaders = httpEntityEnclosingRequest.getAllHeaders();
        int length = allHeaders.length;
        int i = 0;
        while (i < length) {
            stringBuffer.append(allHeaders[i].toString()).append(Constants.FORMATTER);
            i++;
        }
        stringBuffer.append(httpEntityEnclosingRequest.getRequestLine().toString()).append(Constants.FORMATTER);
        if (httpEntityEnclosingRequest.getEntity() != null) {
            try {
                InputStream content = httpEntityEnclosingRequest.getEntity().getContent();
                if (content != null) {
                    int available = content.available();
                    if (available > 0) {
                        byte[] bArr = new byte[available];
                        content.read(bArr);
                        stringBuffer.append("POST:\n");
                        stringBuffer.append(new String(bArr)).append(Constants.FORMATTER);
                    }
                }
            } catch (IOException e) {
                aa.v("Error Writing hit to log...");
            }
        }
        aa.v(stringBuffer.toString());
    }

    private HttpEntityEnclosingRequest c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            aa.w("Empty hit, discarding.");
            return null;
        } else {
            HttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
            String str3 = str2 + "?" + str;
            if (str3.length() < 2036) {
                basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", str3);
            } else {
                basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", str2);
                try {
                    basicHttpEntityEnclosingRequest.setEntity(new StringEntity(str));
                } catch (UnsupportedEncodingException e) {
                    aa.w("Encoding error, discarding hit");
                    return null;
                }
            }
            basicHttpEntityEnclosingRequest.addHeader("User-Agent", this.ul);
            return basicHttpEntityEnclosingRequest;
        }
    }

    public void A(String str) {
        try {
            this.un = new URL(str);
        } catch (MalformedURLException e) {
            this.un = null;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int a(java.util.List r13, com.google.android.gms.analytics.ab r14, boolean r15) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.ah.a(java.util.List, com.google.android.gms.analytics.ab, boolean):int");
        /*
        r12 = this;
        r5 = 0;
        r0 = r13.size();
        r1 = 40;
        r7 = java.lang.Math.min(r0, r1);
        r0 = "_hr";
        r1 = r13.size();
        r14.c(r0, r1);
        r2 = 0;
        r3 = 0;
        r1 = 1;
        r0 = 0;
        r6 = r0;
    L_0x0019:
        if (r6 >= r7) goto L_0x0161;
    L_0x001b:
        r0 = r13.get(r6);
        r0 = (com.google.android.gms.analytics.x) r0;
        r4 = r12.a(r0);
        r8 = r0.ch();
        r9 = "_t=flow";
        r8.contains(r9);
        if (r4 != 0) goto L_0x0063;
    L_0x0030:
        r4 = com.google.android.gms.analytics.aa.cm();
        if (r4 == 0) goto L_0x005d;
    L_0x0036:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r8 = "No destination: discarding hit: ";
        r4 = r4.append(r8);
        r0 = r0.ch();
        r0 = r4.append(r0);
        r0 = r0.toString();
        com.google.android.gms.analytics.aa.w(r0);
    L_0x0050:
        r0 = r5 + 1;
        r2 = r2 + 1;
        r11 = r3;
        r3 = r0;
        r0 = r11;
    L_0x0057:
        r4 = r6 + 1;
        r6 = r4;
        r5 = r3;
        r3 = r0;
        goto L_0x0019;
    L_0x005d:
        r0 = "No destination: discarding hit.";
        com.google.android.gms.analytics.aa.w(r0);
        goto L_0x0050;
    L_0x0063:
        r3 = new org.apache.http.HttpHost;
        r8 = r4.getHost();
        r9 = r4.getPort();
        r10 = r4.getProtocol();
        r3.<init>(r8, r9, r10);
        r8 = r4.getPath();
        r9 = r0.ch();
        r9 = android.text.TextUtils.isEmpty(r9);
        if (r9 == 0) goto L_0x0091;
    L_0x0082:
        r0 = "";
    L_0x0084:
        r8 = r12.c(r0, r8);
        if (r8 != 0) goto L_0x009a;
    L_0x008a:
        r0 = r5 + 1;
        r2 = r2 + 1;
        r3 = r0;
        r0 = r4;
        goto L_0x0057;
    L_0x0091:
        r9 = java.lang.System.currentTimeMillis();
        r0 = com.google.android.gms.analytics.y.a(r0, r9);
        goto L_0x0084;
    L_0x009a:
        r9 = "Host";
        r10 = r3.toHostString();
        r8.addHeader(r9, r10);
        r9 = com.google.android.gms.analytics.aa.cm();
        if (r9 == 0) goto L_0x00ac;
    L_0x00a9:
        r12.a(r8);
    L_0x00ac:
        r9 = r0.length();
        r10 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        if (r9 <= r10) goto L_0x00ca;
    L_0x00b4:
        r3 = "Hit too long (> 8192 bytes)--not sent";
        com.google.android.gms.analytics.aa.w(r3);
        r2 = r2 + 1;
    L_0x00bb:
        r3 = "_td";
        r0 = r0.getBytes();
        r0 = r0.length;
        r14.c(r3, r0);
        r0 = r5 + 1;
        r3 = r0;
        r0 = r4;
        goto L_0x0057;
    L_0x00ca:
        r9 = r12.rA;
        r9 = r9.isDryRunEnabled();
        if (r9 == 0) goto L_0x00d8;
    L_0x00d2:
        r3 = "Dry run enabled. Hit not actually sent.";
        com.google.android.gms.analytics.aa.u(r3);
        goto L_0x00bb;
    L_0x00d8:
        if (r1 == 0) goto L_0x00e0;
    L_0x00da:
        r9 = r12.mContext;	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        com.google.android.gms.analytics.q.p(r9);	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r1 = 0;
    L_0x00e0:
        r9 = r12.um;	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r3 = r9.execute(r3, r8);	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r8 = r3.getStatusLine();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r8 = r8.getStatusCode();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r9 = r3.getEntity();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        if (r9 == 0) goto L_0x00f7;
    L_0x00f4:
        r9.consumeContent();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
    L_0x00f7:
        r9 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r8 == r9) goto L_0x00bb;
    L_0x00fb:
        r8 = new java.lang.StringBuilder;	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r8.<init>();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r9 = "Bad response: ";
        r8 = r8.append(r9);	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r3 = r3.getStatusLine();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r3 = r3.getStatusCode();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r3 = r8.append(r3);	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        r3 = r3.toString();	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        com.google.android.gms.analytics.aa.w(r3);	 Catch:{ ClientProtocolException -> 0x011a, IOException -> 0x0126 }
        goto L_0x00bb;
    L_0x011a:
        r3 = move-exception;
        r3 = "ClientProtocolException sending hit; discarding hit...";
        com.google.android.gms.analytics.aa.w(r3);
        r3 = "_hd";
        r14.c(r3, r2);
        goto L_0x00bb;
    L_0x0126:
        r0 = move-exception;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r6 = "Exception sending hit: ";
        r3 = r3.append(r6);
        r6 = r0.getClass();
        r6 = r6.getSimpleName();
        r3 = r3.append(r6);
        r3 = r3.toString();
        com.google.android.gms.analytics.aa.w(r3);
        r0 = r0.getMessage();
        com.google.android.gms.analytics.aa.w(r0);
        r0 = "_de";
        r3 = 1;
        r14.c(r0, r3);
        r0 = "_hd";
        r14.c(r0, r2);
        r0 = "_hs";
        r14.c(r0, r5);
        r12.a(r14, r4, r1);
        r0 = r5;
    L_0x0160:
        return r0;
    L_0x0161:
        r0 = "_hd";
        r14.c(r0, r2);
        r0 = "_hs";
        r14.c(r0, r5);
        if (r15 == 0) goto L_0x0170;
    L_0x016d:
        r12.a(r14, r3, r1);
    L_0x0170:
        r0 = r5;
        goto L_0x0160;
        */
    }

    String a(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{str, str2, str3, str4, str5, str6});
    }

    URL a(x xVar) {
        if (this.un != null) {
            return this.un;
        }
        try {
            return new URL("http:".equals(xVar.ck()) ? "http://www.google-analytics.com/collect" : "https://ssl.google-analytics.com/collect");
        } catch (MalformedURLException e) {
            aa.t("Error trying to parse the hardcoded host url. This really shouldn't happen.");
            return null;
        }
    }

    public boolean bA() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        aa.v("...no network connectivity");
        return false;
    }
}