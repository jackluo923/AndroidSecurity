package com.heyzap.http;

import org.apache.http.Header;
import org.json.JSONException;

class k implements Runnable {
    final /* synthetic */ byte[] a;
    final /* synthetic */ int b;
    final /* synthetic */ Header[] c;
    final /* synthetic */ JsonHttpResponseHandler d;

    k(JsonHttpResponseHandler jsonHttpResponseHandler, byte[] bArr, int i, Header[] headerArr) {
        this.d = jsonHttpResponseHandler;
        this.a = bArr;
        this.b = i;
        this.c = headerArr;
    }

    public void run() {
        try {
            this.d.postRunnable(new l(this, this.d.parseResponse(this.a)));
        } catch (JSONException e) {
            this.d.postRunnable(new m(this, e));
        }
    }
}