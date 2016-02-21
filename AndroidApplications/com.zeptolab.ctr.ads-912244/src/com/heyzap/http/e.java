package com.heyzap.http;

import org.apache.http.Header;

class e implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ int b;
    final /* synthetic */ Header[] c;
    final /* synthetic */ BaseJsonHttpResponseHandler d;

    e(BaseJsonHttpResponseHandler baseJsonHttpResponseHandler, String str, int i, Header[] headerArr) {
        this.d = baseJsonHttpResponseHandler;
        this.a = str;
        this.b = i;
        this.c = headerArr;
    }

    public void run() {
        try {
            this.d.postRunnable(new f(this, this.d.parseResponse(this.a, false)));
        } catch (Throwable th) {
            this.d.postRunnable(new g(this, th));
        }
    }
}