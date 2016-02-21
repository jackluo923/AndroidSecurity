package com.IQzone.postitial.obfuscated;

final class qm implements Runnable {
    private /* synthetic */ long a;
    private /* synthetic */ np b;

    qm(np npVar, long j) {
        this.b = npVar;
        this.a = j;
    }

    public final void run() {
        while (System.currentTimeMillis() - this.a < 7000) {
            try {
                if (np.a(this.b.i)) {
                    this.b.a();
                    return;
                } else if (this.b.l()) {
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e) {
                        np.a;
                    }
                } else {
                    this.b.a();
                    return;
                }
            } catch (Throwable th) {
                np.a;
            }
        }
    }
}