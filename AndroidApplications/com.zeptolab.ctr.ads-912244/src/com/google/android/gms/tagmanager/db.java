package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.admarvel.android.ads.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.HttpClient;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class db implements ab {
    private final Context Xf;
    private final String Xw;
    private final HttpClient Xx;
    private a Xy;

    public static interface a {
        void a_(ap apVar);

        void b(ap apVar);

        void c(ap apVar);
    }

    db(HttpClient httpClient, Context context, a aVar) {
        this.Xf = context.getApplicationContext();
        this.Xw = a("GoogleTagManager", "3.02b1", VERSION.RELEASE, b(Locale.getDefault()), Build.MODEL, Build.ID);
        this.Xx = httpClient;
        this.Xy = aVar;
    }

    private HttpEntityEnclosingRequest a(URL url) {
        HttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
        try {
            basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", url.toURI().toString());
            try {
                basicHttpEntityEnclosingRequest.addHeader("User-Agent", this.Xw);
            } catch (URISyntaxException e) {
                uRISyntaxException = e;
                bh.w("Exception sending hit: " + uRISyntaxException.getClass().getSimpleName());
                bh.w(uRISyntaxException.getMessage());
                return basicHttpEntityEnclosingRequest;
            }
        } catch (URISyntaxException e2) {
            basicHttpEntityEnclosingRequest = null;
            URISyntaxException uRISyntaxException2 = e2;
            bh.w("Exception sending hit: " + uRISyntaxException2.getClass().getSimpleName());
            bh.w(uRISyntaxException2.getMessage());
            return basicHttpEntityEnclosingRequest;
        }
        return basicHttpEntityEnclosingRequest;
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
                bh.v("Error Writing hit to log...");
            }
        }
        bh.v(stringBuffer.toString());
    }

    static String b(Locale locale) {
        if (locale == null || locale.getLanguage() == null || locale.getLanguage().length() == 0) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(locale.getLanguage().toLowerCase());
        if (!(locale.getCountry() == null || locale.getCountry().length() == 0)) {
            stringBuilder.append("-").append(locale.getCountry().toLowerCase());
        }
        return stringBuilder.toString();
    }

    String a(String str, String str2, String str3, String str4, String str5, String str6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[]{str, str2, str3, str4, str5, str6});
    }

    public boolean bA() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.Xf.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        bh.v("...no network connectivity");
        return false;
    }

    URL d(ap apVar) {
        try {
            return new URL(apVar.jf());
        } catch (MalformedURLException e) {
            bh.t("Error trying to parse the GTM url.");
            return null;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e(java.util.List r11) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.db.e(java.util.List):void");
        /*
        r10 = this;
        r3 = 0;
        r0 = r11.size();
        r1 = 40;
        r5 = java.lang.Math.min(r0, r1);
        r1 = 1;
        r4 = r3;
    L_0x000d:
        if (r4 >= r5) goto L_0x00df;
    L_0x000f:
        r0 = r11.get(r4);
        r0 = (com.google.android.gms.tagmanager.ap) r0;
        r2 = r10.d(r0);
        if (r2 != 0) goto L_0x002b;
    L_0x001b:
        r2 = "No destination: discarding hit.";
        com.google.android.gms.tagmanager.bh.w(r2);
        r2 = r10.Xy;
        r2.b(r0);
        r0 = r1;
    L_0x0026:
        r1 = r4 + 1;
        r4 = r1;
        r1 = r0;
        goto L_0x000d;
    L_0x002b:
        r6 = r10.a(r2);
        if (r6 != 0) goto L_0x0038;
    L_0x0031:
        r2 = r10.Xy;
        r2.b(r0);
        r0 = r1;
        goto L_0x0026;
    L_0x0038:
        r7 = new org.apache.http.HttpHost;
        r8 = r2.getHost();
        r9 = r2.getPort();
        r2 = r2.getProtocol();
        r7.<init>(r8, r9, r2);
        r2 = "Host";
        r8 = r7.toHostString();
        r6.addHeader(r2, r8);
        r10.a(r6);
        if (r1 == 0) goto L_0x005d;
    L_0x0057:
        r2 = r10.Xf;	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        com.google.android.gms.tagmanager.bn.p(r2);	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r1 = r3;
    L_0x005d:
        r2 = r10.Xx;	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2 = r2.execute(r7, r6);	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r6 = r2.getStatusLine();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r6 = r6.getStatusCode();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r7 = r2.getEntity();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        if (r7 == 0) goto L_0x0074;
    L_0x0071:
        r7.consumeContent();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
    L_0x0074:
        r7 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r6 == r7) goto L_0x009d;
    L_0x0078:
        r6 = new java.lang.StringBuilder;	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r6.<init>();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r7 = "Bad response: ";
        r6 = r6.append(r7);	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2 = r2.getStatusLine();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2 = r2.getStatusCode();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2 = r6.append(r2);	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2 = r2.toString();	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        com.google.android.gms.tagmanager.bh.w(r2);	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2 = r10.Xy;	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2.c(r0);	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
    L_0x009b:
        r0 = r1;
        goto L_0x0026;
    L_0x009d:
        r2 = r10.Xy;	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        r2.a(r0);	 Catch:{ ClientProtocolException -> 0x00a3, IOException -> 0x00b1 }
        goto L_0x009b;
    L_0x00a3:
        r2 = move-exception;
        r2 = "ClientProtocolException sending hit; discarding hit...";
        com.google.android.gms.tagmanager.bh.w(r2);
        r2 = r10.Xy;
        r2.b(r0);
        r0 = r1;
        goto L_0x0026;
    L_0x00b1:
        r2 = move-exception;
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "Exception sending hit: ";
        r6 = r6.append(r7);
        r7 = r2.getClass();
        r7 = r7.getSimpleName();
        r6 = r6.append(r7);
        r6 = r6.toString();
        com.google.android.gms.tagmanager.bh.w(r6);
        r2 = r2.getMessage();
        com.google.android.gms.tagmanager.bh.w(r2);
        r2 = r10.Xy;
        r2.c(r0);
        r0 = r1;
        goto L_0x0026;
    L_0x00df:
        return;
        */
    }
}