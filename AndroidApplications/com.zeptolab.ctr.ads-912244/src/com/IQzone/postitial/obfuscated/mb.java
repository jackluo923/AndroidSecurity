package com.IQzone.postitial.obfuscated;

import java.io.InputStream;
import java.net.HttpURLConnection;

final class mb extends of {
    private /* synthetic */ HttpURLConnection a;

    mb(ma maVar, InputStream inputStream, HttpURLConnection httpURLConnection) {
        this.a = httpURLConnection;
        super(inputStream);
    }

    public final void close() {
        super.close();
        this.a.disconnect();
    }
}