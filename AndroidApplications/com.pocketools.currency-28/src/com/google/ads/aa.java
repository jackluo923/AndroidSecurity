package com.google.ads;

import android.content.Context;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class aa implements Runnable {
    private Context a;
    private String b;

    public aa(String str, Context context) {
        this.b = str;
        this.a = context;
    }

    protected HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    public void run() {
        try {
            b.a("Pinging URL: " + this.b);
            HttpURLConnection a = a(new URL(this.b));
            AdUtil.a(a, this.a);
            a.setInstanceFollowRedirects(true);
            a.connect();
            int responseCode = a.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                b.e("Did not receive 2XX (got " + responseCode + ") from pinging URL: " + this.b);
            }
            a.disconnect();
        } catch (IOException e) {
            try {
                b.d("Unable to ping the URL: " + this.b, e);
            }
        }
    }
}