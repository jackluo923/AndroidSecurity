package com.heyzap.http;

class f implements Runnable {
    final /* synthetic */ Object a;
    final /* synthetic */ e b;

    f(e eVar, Object obj) {
        this.b = eVar;
        this.a = obj;
    }

    public void run() {
        this.b.d.onSuccess(this.b.b, this.b.c, this.b.a, this.a);
    }
}