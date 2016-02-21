package me.kiip.internal.c;

import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URLConnection;
import java.util.Map;

public interface h {
    CacheRequest a(URI uri, URLConnection uRLConnection);

    CacheResponse a(URI uri, String str, Map map);

    void a();

    void a(String str, URI uri);

    void a(CacheResponse cacheResponse, HttpURLConnection httpURLConnection);

    void a(i iVar);
}