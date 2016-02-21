package com.IQzone.postitial.obfuscated;

import com.facebook.ads.internal.AdWebViewUtils;

public final class nt {
    public Object a;
    private Object b;
    private int c;
    private boolean d;

    public nt() {
        this.b = new Object();
    }

    public final void a() {
        synchronized (this.b) {
            int i = this.c + 1;
            this.c = i;
            while (i > 0) {
                if (!Thread.currentThread().isInterrupted()) {
                    if (this.d) {
                        break;
                    }
                    this.b.wait(AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                } else {
                    throw new InterruptedException("<ParallelControl><1>, was interrupted");
                }
            }
        }
    }

    public final void b() {
        synchronized (this.b) {
            this.d = true;
            this.b.notifyAll();
        }
    }
}