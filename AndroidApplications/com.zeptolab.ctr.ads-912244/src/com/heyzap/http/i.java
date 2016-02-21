package com.heyzap.http;

class i implements Runnable {
    final /* synthetic */ Object a;
    final /* synthetic */ h b;

    i(h hVar, Object obj) {
        this.b = hVar;
        this.a = obj;
    }

    public void run() {
        this.b.e.onFailure(this.b.b, this.b.c, this.b.d, this.b.a, this.a);
    }
}