package me.kiip.internal.n;

import java.net.HttpURLConnection;
import java.net.URL;
import me.kiip.internal.b.g;

public class c extends g {
    private final me.kiip.internal.c.g a;

    public c() {
        this(new me.kiip.internal.c.g());
    }

    public c(me.kiip.internal.c.g gVar) {
        if (gVar == null) {
            throw new NullPointerException("Client must not be null.");
        }
        this.a = gVar;
    }

    protected HttpURLConnection a(URL url) {
        return this.a.a(url);
    }
}