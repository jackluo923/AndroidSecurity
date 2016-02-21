package com.heyzap.http;

import org.apache.http.Header;
import org.json.JSONException;

class n implements Runnable {
    final /* synthetic */ byte[] a;
    final /* synthetic */ int b;
    final /* synthetic */ Header[] c;
    final /* synthetic */ Throwable d;
    final /* synthetic */ JsonHttpResponseHandler e;

    n(JsonHttpResponseHandler jsonHttpResponseHandler, byte[] bArr, int i, Header[] headerArr, Throwable th) {
        this.e = jsonHttpResponseHandler;
        this.a = bArr;
        this.b = i;
        this.c = headerArr;
        this.d = th;
    }

    public void run() {
        try {
            this.e.postRunnable(new o(this, this.e.parseResponse(this.a)));
        } catch (JSONException e) {
            this.e.postRunnable(new p(this, e));
        }
    }
}