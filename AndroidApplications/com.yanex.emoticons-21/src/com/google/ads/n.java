package com.google.ads;

import android.content.Context;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.net.HttpURLConnection;
import java.net.URL;

public final class n implements Runnable {
    private final Context a;
    private final String b;

    public n(String str, Context context) {
        this.b = str;
        this.a = context;
    }

    public final void run() {
        try {
            g.a(new StringBuilder("Pinging URL: ").append(this.b).toString());
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
            AdUtil.a(httpURLConnection, this.a);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                g.e(new StringBuilder("Did not receive 2XX (got ").append(responseCode).append(") from pinging URL: ").append(this.b).toString());
            }
            httpURLConnection.disconnect();
        } catch (Throwable th) {
            try {
                g.d(new StringBuilder("Unable to ping the URL: ").append(this.b).toString(), th);
            }
        }
    }
}