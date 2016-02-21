package com.IQzone.postitial.obfuscated;

final class nc implements Runnable {
    final /* synthetic */ mz a;

    nc(mz mzVar) {
        this.a = mzVar;
    }

    public final void run() {
        synchronized (this.a.e) {
            if (this.a.d != 0) {
                try {
                    this.a.e.wait(this.a.d);
                } catch (InterruptedException e) {
                    mz.a;
                }
            }
        }
        this.a.c.execute(new nd(this));
        synchronized (this.a) {
            this.a.g = false;
        }
    }
}