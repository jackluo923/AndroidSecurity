package me.kiip.internal.e;

import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.util.Map;
import me.kiip.internal.c.h;
import me.kiip.internal.c.i;

public final class j implements h {
    private final ResponseCache a;

    public j(ResponseCache responseCache) {
        this.a = responseCache;
    }

    public CacheRequest a(URI uri, URLConnection uRLConnection) {
        return this.a.put(uri, uRLConnection);
    }

    public CacheResponse a(URI uri, String str, Map map) {
        return this.a.get(uri, str, map);
    }

    public void a() {
    }

    public void a(String str, URI uri) {
    }

    public void a(CacheResponse cacheResponse, HttpURLConnection httpURLConnection) {
    }

    public void a(i iVar) {
    }
}