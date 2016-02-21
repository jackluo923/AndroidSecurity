package com.IQzone.postitial.obfuscated;

import java.net.HttpURLConnection;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

public class lz extends pp {
    private static final ql a;
    private final String b;
    private pq c;

    static {
        a = new ql();
    }

    public lz(String str) {
        this.b = String.format("https://%spssvc.iqzone.com/e.asmx", new Object[]{str});
        this.c = new lw(str);
    }

    private HttpURLConnection a(ly lyVar) {
        try {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(this.b).openConnection();
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setRequestProperty("Content-Type", "text/xml");
            return httpsURLConnection;
        } catch (Exception e) {
            ql qlVar = a;
            return (HttpURLConnection) this.c.a(lyVar);
        }
    }
}