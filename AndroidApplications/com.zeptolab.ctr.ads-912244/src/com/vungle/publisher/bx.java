package com.vungle.publisher;

import com.vungle.log.Logger;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.HttpTransaction.a;

final class bx implements bk, Runnable {
    private final String a;
    private final HttpTransaction b;
    private final a c;

    bx(String str, HttpTransaction httpTransaction, a aVar) {
        this.a = str;
        this.b = httpTransaction;
        this.c = aVar;
    }

    public final void run() {
        try {
            Logger.d(Logger.SERVICE_TAG, this.a + " executing " + this.b);
            this.b.a(this.c);
        } catch (Exception e) {
            Logger.e(Logger.SERVICE_TAG, this.a + " error processing transaction: " + this.b, e);
        }
    }
}