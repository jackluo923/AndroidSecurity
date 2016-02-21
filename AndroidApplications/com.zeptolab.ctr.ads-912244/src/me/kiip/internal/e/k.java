package me.kiip.internal.e;

import java.net.HttpURLConnection;
import java.net.URL;

public interface k {
    HttpURLConnection a();

    long c();

    int d();

    long getIfModifiedSince();

    URL getURL();

    boolean getUseCaches();

    boolean usingProxy();
}