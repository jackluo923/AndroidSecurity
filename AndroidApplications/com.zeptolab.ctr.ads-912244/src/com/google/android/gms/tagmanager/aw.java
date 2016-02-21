package com.google.android.gms.tagmanager;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

class aw implements bl {
    private HttpURLConnection Vj;

    aw() {
    }

    private InputStream a(HttpURLConnection httpURLConnection) {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200) {
            return httpURLConnection.getInputStream();
        }
        String str = "Bad response: " + responseCode;
        if (responseCode == 404) {
            throw new FileNotFoundException(str);
        }
        throw new IOException(str);
    }

    private void b(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public InputStream bo(String str) {
        this.Vj = bp(str);
        return a(this.Vj);
    }

    HttpURLConnection bp(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(WebRequest.DEFAULT_TIMEOUT);
        httpURLConnection.setConnectTimeout(WebRequest.DEFAULT_TIMEOUT);
        return httpURLConnection;
    }

    public void close() {
        b(this.Vj);
    }
}