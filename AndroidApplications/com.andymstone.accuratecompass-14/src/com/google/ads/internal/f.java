package com.google.ads.internal;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public final class f implements Runnable {
    private final c a;
    private final d b;
    private final a c;
    private volatile boolean d;
    private boolean e;
    private String f;
    private Thread g;

    public interface a {
        HttpURLConnection a_(URL url);
    }

    f(c cVar, d dVar) {
        this(cVar, dVar, new a() {
            public HttpURLConnection a(URL url) {
                return (HttpURLConnection) url.openConnection();
            }
        });
    }

    f(c cVar, d dVar, a aVar) {
        this.g = null;
        this.a = cVar;
        this.b = dVar;
        this.c = aVar;
    }

    private void a(Context context, HttpURLConnection httpURLConnection) {
        String string = PreferenceManager.getDefaultSharedPreferences(context).getString("drt", "");
        if (this.e && !TextUtils.isEmpty(string)) {
            if (AdUtil.a == 8) {
                httpURLConnection.addRequestProperty("X-Afma-drt-Cookie", string);
            } else {
                httpURLConnection.addRequestProperty("Cookie", string);
            }
        }
    }

    private void a(HttpURLConnection httpURLConnection) {
        b(httpURLConnection);
        f(httpURLConnection);
        g(httpURLConnection);
        h(httpURLConnection);
        e(httpURLConnection);
        i(httpURLConnection);
        j(httpURLConnection);
        k(httpURLConnection);
        d(httpURLConnection);
        c(httpURLConnection);
        l(httpURLConnection);
    }

    private void a(HttpURLConnection httpURLConnection, int i) {
        String headerField;
        if (300 <= i && i < 400) {
            headerField = httpURLConnection.getHeaderField("Location");
            if (headerField == null) {
                b.c("Could not get redirect location from a " + i + " redirect.");
                this.a.a(ErrorCode.d);
                a();
            } else {
                a(httpURLConnection);
                this.f = headerField;
            }
        } else if (i == 200) {
            a(httpURLConnection);
            headerField = AdUtil.a(new InputStreamReader(httpURLConnection.getInputStream())).trim();
            b.a("Response content is: " + headerField);
            if (TextUtils.isEmpty(headerField)) {
                b.a("Response message is null or zero length: " + headerField);
                this.a.a(ErrorCode.b);
                a();
            } else {
                this.a.a(headerField, this.f);
                a();
            }
        } else if (i == 400) {
            b.c("Bad request");
            this.a.a(ErrorCode.a);
            a();
        } else {
            b.c("Invalid response code: " + i);
            this.a.a(ErrorCode.d);
            a();
        }
    }

    private void b() {
        while (!this.d) {
            HttpURLConnection a = this.c.a(new URL(this.f));
            a((Context) this.b.h().f.a(), a);
            AdUtil.a(a, (Context) this.b.h().f.a());
            a.setInstanceFollowRedirects(false);
            a.connect();
            a(a, a.getResponseCode());
            a.disconnect();
        }
    }

    private void b(HttpURLConnection httpURLConnection) {
        Object headerField = httpURLConnection.getHeaderField("X-Afma-Debug-Dialog");
        if (!TextUtils.isEmpty(headerField)) {
            this.a.e(headerField);
        }
    }

    private void c(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Content-Type");
        if (!TextUtils.isEmpty(headerField)) {
            this.a.b(headerField);
        }
    }

    private void d(HttpURLConnection httpURLConnection) {
        Object headerField = httpURLConnection.getHeaderField("X-Afma-Mediation");
        if (!TextUtils.isEmpty(headerField)) {
            this.a.a(Boolean.valueOf(headerField).booleanValue());
        }
    }

    private void e(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (!TextUtils.isEmpty(headerField)) {
            try {
                this.b.a((long) (Float.parseFloat(headerField) * 1000.0f));
            } catch (NumberFormatException e) {
                b.d("Could not get timeout value: " + headerField, e);
            }
        }
    }

    private void f_(HttpURLConnection httpURLConnection) {
        Object headerField = httpURLConnection.getHeaderField("X-Afma-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField)) {
            String[] split = headerField.trim().split("\\s+");
            int length = split.length;
            int i = 0;
            while (i < length) {
                this.b.b(split[i]);
                i++;
            }
        }
    }

    private void g(HttpURLConnection httpURLConnection) {
        Object headerField = httpURLConnection.getHeaderField("X-Afma-Click-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField)) {
            String[] split = headerField.trim().split("\\s+");
            int length = split.length;
            int i = 0;
            while (i < length) {
                this.a.a(split[i]);
                i++;
            }
        }
    }

    private void h(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("X-Afma-Refresh-Rate");
        if (!TextUtils.isEmpty(headerField)) {
            try {
                float parseFloat = Float.parseFloat(headerField);
                if (parseFloat > 0.0f) {
                    this.b.a(parseFloat);
                    if (!this.b.r()) {
                        this.b.f();
                    }
                } else if (this.b.r()) {
                    this.b.e();
                }
            } catch (NumberFormatException e) {
                b.d("Could not get refresh value: " + headerField, e);
            }
        }
    }

    private void i(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("X-Afma-Orientation");
        if (!TextUtils.isEmpty(headerField)) {
            if (headerField.equals("portrait")) {
                this.a.a(AdUtil.b());
            } else if (headerField.equals("landscape")) {
                this.a.a(AdUtil.a());
            }
        }
    }

    private void j(HttpURLConnection httpURLConnection) {
        if (!TextUtils.isEmpty(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"))) {
            try {
                this.b.b(Long.parseLong(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life")));
            } catch (NumberFormatException e) {
                b.e("Got bad value of Doritos cookie cache life from header: " + httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life") + ". Using default value instead.");
            }
        }
    }

    private void k(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Cache-Control");
        if (!TextUtils.isEmpty(headerField)) {
            this.a.c(headerField);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void l(java.net.HttpURLConnection r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.internal.f.l(java.net.HttpURLConnection):void");
        /*
        r4 = this;
        r3 = 2;
        r0 = "X-Afma-Ad-Size";
        r0 = r5.getHeaderField(r0);
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x002d;
    L_0x000d:
        r1 = "x";
        r2 = 2;
        r1 = r0.split(r1, r2);	 Catch:{ NumberFormatException -> 0x0047 }
        r2 = r1.length;	 Catch:{ NumberFormatException -> 0x0047 }
        if (r2 == r3) goto L_0x002e;
    L_0x0017:
        r1 = new java.lang.StringBuilder;	 Catch:{ NumberFormatException -> 0x0047 }
        r1.<init>();	 Catch:{ NumberFormatException -> 0x0047 }
        r2 = "Could not parse size header: ";
        r1 = r1.append(r2);	 Catch:{ NumberFormatException -> 0x0047 }
        r1 = r1.append(r0);	 Catch:{ NumberFormatException -> 0x0047 }
        r1 = r1.toString();	 Catch:{ NumberFormatException -> 0x0047 }
        com.google.ads.util.b.e(r1);	 Catch:{ NumberFormatException -> 0x0047 }
    L_0x002d:
        return;
    L_0x002e:
        r2 = 0;
        r2 = r1[r2];	 Catch:{ NumberFormatException -> 0x0047 }
        r2 = java.lang.Integer.parseInt(r2);	 Catch:{ NumberFormatException -> 0x0047 }
        r3 = 1;
        r1 = r1[r3];	 Catch:{ NumberFormatException -> 0x0047 }
        r0 = java.lang.Integer.parseInt(r1);	 Catch:{ NumberFormatException -> 0x0047 }
        r1 = r4.a;
        r3 = new com.google.ads.AdSize;
        r3.<init>(r2, r0);
        r1.a(r3);
        goto L_0x002d;
    L_0x0047:
        r1 = move-exception;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Could not parse size header: ";
        r1 = r1.append(r2);
        r0 = r1.append(r0);
        r0 = r0.toString();
        com.google.ads.util.b.e(r0);
        goto L_0x002d;
        */
    }

    void a() {
        this.d = true;
    }

    synchronized void a(String str) {
        if (this.g == null) {
            this.f = str;
            this.d = false;
            this.g = new Thread(this);
            this.g.start();
        }
    }

    public void a(boolean z) {
        this.e = z;
    }

    public void run() {
        try {
            b();
        } catch (MalformedURLException e) {
            b.b("Received malformed ad url from javascript.", e);
            this.a.a(ErrorCode.d);
        } catch (IOException e2) {
            b.d("IOException connecting to ad url.", e2);
            this.a.a(ErrorCode.c);
        } catch (Throwable th) {
            b.b("An unknown error occurred in AdResponseLoader.", th);
            this.a.a(ErrorCode.d);
        }
    }
}