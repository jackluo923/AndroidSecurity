package com.google.ads.b;

import java.net.HttpURLConnection;
import java.net.URL;

final class z implements aa {
    z() {
    }

    public final HttpURLConnection a(URL url) {
        return (HttpURLConnection) url.openConnection();
    }
}