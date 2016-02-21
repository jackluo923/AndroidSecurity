package com.google.ads.b;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.google.ads.bn;
import com.google.ads.bq;
import com.google.ads.e;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public final class y implements Runnable {
    private final bn a;
    private final aa b;
    private volatile boolean c;
    private boolean d;
    private String e;
    private Thread f;

    y(bn bnVar) {
        this(bnVar, new z());
    }

    private y(bn bnVar, aa aaVar) {
        this.f = null;
        this.a = bnVar;
        this.b = aaVar;
    }

    private void a(HttpURLConnection httpURLConnection) {
        String[] split;
        int length;
        int i;
        int i2 = 0;
        String headerField = httpURLConnection.getHeaderField("X-Afma-Debug-Dialog");
        if (!TextUtils.isEmpty(headerField)) {
            ((n) this.a.b.a()).f(headerField);
        }
        Object headerField2 = httpURLConnection.getHeaderField("X-Afma-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField2)) {
            split = headerField2.trim().split("\\s+");
            length = split.length;
            i = 0;
            while (i < length) {
                ((w) ((bq) this.a.a.a()).b.a()).b(split[i]);
                i++;
            }
        }
        headerField2 = httpURLConnection.getHeaderField("X-Afma-Manual-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField2)) {
            split = headerField2.trim().split("\\s+");
            length = split.length;
            i = 0;
            while (i < length) {
                ((w) ((bq) this.a.a.a()).b.a()).c(split[i]);
                i++;
            }
        }
        headerField2 = httpURLConnection.getHeaderField("X-Afma-Click-Tracking-Urls");
        if (!TextUtils.isEmpty(headerField2)) {
            String[] split2 = headerField2.trim().split("\\s+");
            int length2 = split2.length;
            while (i2 < length2) {
                ((n) this.a.b.a()).a(split2[i2]);
                i2++;
            }
        }
        String headerField3 = httpURLConnection.getHeaderField("X-Afma-Refresh-Rate");
        if (!TextUtils.isEmpty(headerField3)) {
            try {
                float parseFloat = Float.parseFloat(headerField3);
                w wVar = (w) ((bq) this.a.a.a()).b.a();
                if (parseFloat > 0.0f) {
                    wVar.a(parseFloat);
                    if (!wVar.p()) {
                        wVar.f();
                    }
                } else if (wVar.p()) {
                    wVar.e();
                }
            } catch (NumberFormatException e) {
                g.d(new StringBuilder("Could not get refresh value: ").append(headerField3).toString(), e);
            }
        }
        String headerField4 = httpURLConnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (!TextUtils.isEmpty(headerField4)) {
            try {
                ((w) ((bq) this.a.a.a()).b.a()).a((long) (Float.parseFloat(headerField4) * 1000.0f));
            } catch (NumberFormatException e2) {
                g.d(new StringBuilder("Could not get timeout value: ").append(headerField4).toString(), e2);
            }
        }
        headerField3 = httpURLConnection.getHeaderField("X-Afma-Orientation");
        if (!TextUtils.isEmpty(headerField3)) {
            if (headerField3.equals("portrait")) {
                ((n) this.a.b.a()).a(AdUtil.b());
            } else if (headerField3.equals("landscape")) {
                ((n) this.a.b.a()).a(AdUtil.a());
            }
        }
        if (!TextUtils.isEmpty(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"))) {
            try {
                ((w) ((bq) this.a.a.a()).b.a()).b(Long.parseLong(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life")));
            } catch (NumberFormatException e3) {
                g.e(new StringBuilder("Got bad value of Doritos cookie cache life from header: ").append(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life")).append(". Using default value instead.").toString());
            }
        }
        headerField4 = httpURLConnection.getHeaderField("Cache-Control");
        if (!TextUtils.isEmpty(headerField4)) {
            ((n) this.a.b.a()).c(headerField4);
        }
        Object headerField5 = httpURLConnection.getHeaderField("X-Afma-Mediation");
        if (!TextUtils.isEmpty(headerField5)) {
            ((n) this.a.b.a()).b(Boolean.valueOf(headerField5).booleanValue());
        }
        headerField4 = httpURLConnection.getHeaderField("Content-Type");
        if (!TextUtils.isEmpty(headerField4)) {
            ((n) this.a.b.a()).b(headerField4);
        }
        headerField3 = httpURLConnection.getHeaderField("X-Afma-Ad-Size");
        if (!TextUtils.isEmpty(headerField3)) {
            try {
                String[] split3 = headerField3.split("x", IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
                if (split3.length != 2) {
                    g.e(new StringBuilder("Could not parse size header: ").append(headerField3).toString());
                } else {
                    ((n) this.a.b.a()).a(new com.google.ads.g(Integer.parseInt(split3[0]), Integer.parseInt(split3[1])));
                }
            } catch (NumberFormatException e4) {
                g.e(new StringBuilder("Could not parse size header: ").append(headerField3).toString());
            }
        }
        headerField5 = httpURLConnection.getHeaderField("X-Afma-Disable-Activation-And-Scroll");
        if (!TextUtils.isEmpty(headerField5)) {
            ((n) this.a.b.a()).a(headerField5.equals("1"));
        }
    }

    final void a() {
        this.c = true;
    }

    final synchronized void a(String str) {
        if (this.f == null) {
            this.e = str;
            this.c = false;
            this.f = new Thread(this);
            this.f.start();
        }
    }

    public final void a(boolean z) {
        this.d = z;
    }

    public final void run() {
        while (!this.c) {
            try {
                HttpURLConnection a = this.b.a(new URL(this.e));
                String string = PreferenceManager.getDefaultSharedPreferences((Context) ((bq) this.a.a.a()).f.a()).getString("drt", "");
                if (this.d && !TextUtils.isEmpty(string)) {
                    if (AdUtil.a == 8) {
                        a.addRequestProperty("X-Afma-drt-Cookie", string);
                    } else {
                        a.addRequestProperty("Cookie", string);
                    }
                }
                AdUtil.a(a, (Context) ((bq) this.a.a.a()).f.a());
                a.setInstanceFollowRedirects(false);
                a.connect();
                int responseCode = a.getResponseCode();
                String headerField;
                if (300 <= responseCode && responseCode < 400) {
                    headerField = a.getHeaderField("Location");
                    if (headerField == null) {
                        g.c(new StringBuilder("Could not get redirect location from a ").append(responseCode).append(" redirect.").toString());
                        ((n) this.a.b.a()).a(e.d);
                        this.c = true;
                    } else {
                        a(a);
                        this.e = headerField;
                    }
                } else if (responseCode == 200) {
                    a(a);
                    headerField = AdUtil.a(new InputStreamReader(a.getInputStream())).trim();
                    g.a(new StringBuilder("Response content is: ").append(headerField).toString());
                    if (TextUtils.isEmpty(headerField)) {
                        g.a(new StringBuilder("Response message is null or zero length: ").append(headerField).toString());
                        ((n) this.a.b.a()).a(e.b);
                        this.c = true;
                    } else {
                        ((n) this.a.b.a()).a(headerField, this.e);
                        this.c = true;
                    }
                } else if (responseCode == 400) {
                    g.c("Bad request");
                    ((n) this.a.b.a()).a(e.a);
                    this.c = true;
                } else {
                    g.c(new StringBuilder("Invalid response code: ").append(responseCode).toString());
                    ((n) this.a.b.a()).a(e.d);
                    this.c = true;
                }
                a.disconnect();
            } catch (MalformedURLException e) {
                g.b("Received malformed ad url from javascript.", e);
                ((n) this.a.b.a()).a(e.d);
            } catch (IOException e2) {
                g.b("IOException connecting to ad url.", e2);
                ((n) this.a.b.a()).a(e.c);
            } catch (Throwable th) {
                g.b("An unknown error occurred in AdResponseLoader.", th);
                ((n) this.a.b.a()).a(e.d);
            }
        }
    }
}