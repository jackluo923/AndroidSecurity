package com.vungle.publisher;

final class ch implements Runnable {
    final co a;
    private final cj b;

    ch(cj cjVar) {
        this.b = cjVar;
        this.a = new co();
    }

    public final void run() {
        cn a = this.a.a();
        if (a == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.b.a(a);
    }
}