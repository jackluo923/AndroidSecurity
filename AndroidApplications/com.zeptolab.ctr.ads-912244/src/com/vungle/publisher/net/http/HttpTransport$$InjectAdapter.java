package com.vungle.publisher.net.http;

import a.a.b;
import javax.inject.Provider;

public final class HttpTransport$$InjectAdapter extends b implements Provider {
    public HttpTransport$$InjectAdapter() {
        super("com.vungle.publisher.net.http.HttpTransport", "members/com.vungle.publisher.net.http.HttpTransport", true, HttpTransport.class);
    }

    public final HttpTransport get() {
        return new HttpTransport();
    }
}