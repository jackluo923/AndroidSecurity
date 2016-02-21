package com.vungle.publisher;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;

final class cl extends Handler {
    final co a;
    boolean b;
    private final int c;
    private final cj d;

    cl(cj cjVar, Looper looper) {
        super(looper);
        this.d = cjVar;
        this.c = 10;
        this.a = new co();
    }

    public final void handleMessage(Message message) {
        boolean z = false;
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                cn a = this.a.a();
                if (a == null) {
                    synchronized (this) {
                        a = this.a.a();
                        if (a == null) {
                            this.b = false;
                            this.b = z;
                            return;
                        }
                    }
                }
                this.d.a(a);
            } while (SystemClock.uptimeMillis() - uptimeMillis < ((long) this.c));
            if (sendMessage(obtainMessage())) {
                this.b = true;
            } else {
                throw new ck("Could not send handler message");
            }
        } catch (Throwable th) {
        }
    }
}