package com.heyzap.http;

class g implements Runnable {
    final /* synthetic */ Throwable a;
    final /* synthetic */ e b;

    g(e eVar, Throwable th) {
        this.b = eVar;
        this.a = th;
    }

    public void run() {
        this.b.d.onFailure(this.b.b, this.b.c, this.a, this.b.a, null);
    }
}