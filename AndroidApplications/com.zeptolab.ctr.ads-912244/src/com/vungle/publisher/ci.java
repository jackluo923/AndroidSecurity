package com.vungle.publisher;

import com.vungle.log.Logger;

final class ci implements Runnable {
    final co a;
    volatile boolean b;
    private final cj c;

    ci(cj cjVar) {
        this.c = cjVar;
        this.a = new co();
    }

    public final void run() {
        boolean z = false;
        while (true) {
            try {
                cn b = this.a.b();
                if (b == null) {
                    synchronized (this) {
                        b = this.a.a();
                        if (b == null) {
                            this.b = false;
                            this.b = z;
                            return;
                        }
                    }
                }
                this.c.a(b);
            } catch (InterruptedException e) {
                Logger.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                this.b = z;
            }
        }
    }
}