package com.heyzap.http;

import org.apache.http.Header;

class h implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ int b;
    final /* synthetic */ Header[] c;
    final /* synthetic */ Throwable d;
    final /* synthetic */ BaseJsonHttpResponseHandler e;

    h(BaseJsonHttpResponseHandler baseJsonHttpResponseHandler, String str, int i, Header[] headerArr, Throwable th) {
        this.e = baseJsonHttpResponseHandler;
        this.a = str;
        this.b = i;
        this.c = headerArr;
        this.d = th;
    }

    public void run() {
        try {
            this.e.postRunnable(new i(this, this.e.parseResponse(this.a, true)));
        } catch (Throwable th) {
            this.e.postRunnable(new j(this));
        }
    }
}