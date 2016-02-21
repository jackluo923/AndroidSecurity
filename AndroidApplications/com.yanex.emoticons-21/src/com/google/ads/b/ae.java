package com.google.ads.b;

import android.content.Context;
import com.google.ads.bo;
import com.google.ads.bp;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public final class ae implements Runnable {
    private String a;
    private Context b;

    public ae(String str, Context context) {
        this.a = str;
        this.b = context;
    }

    public final void run() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((String) ((bp) bo.a().b.a()).h.a()).openConnection();
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setInstanceFollowRedirects(true);
            AdUtil.a(httpURLConnection, this.b);
            httpURLConnection.setRequestProperty("Accept", "application/json");
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            byte[] bytes = new af(this.a).a().toString().getBytes();
            httpURLConnection.setFixedLengthStreamingMode(bytes.length);
            OutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            bufferedOutputStream.write(bytes);
            bufferedOutputStream.close();
            if (httpURLConnection.getResponseCode() != 200) {
                g.b(new StringBuilder("Got error response from BadAd backend: ").append(httpURLConnection.getResponseMessage()).toString());
            }
            httpURLConnection.disconnect();
        } catch (IOException e) {
            try {
                g.b("Error reporting bad ad.", e);
            }
        }
    }
}