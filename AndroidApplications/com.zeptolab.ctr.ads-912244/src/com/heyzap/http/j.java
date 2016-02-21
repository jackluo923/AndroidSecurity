package com.heyzap.http;

class j implements Runnable {
    final /* synthetic */ h a;

    j(h hVar) {
        this.a = hVar;
    }

    public void run() {
        this.a.e.onFailure(this.a.b, this.a.c, this.a.d, this.a.a, null);
    }
}