package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;

class dj {
    private Timer a;
    private a b;
    private b c;

    public static interface b {
        void q();
    }

    class a extends TimerTask {
        private com.flurry.sdk.dj.b b;

        a(com.flurry.sdk.dj.b bVar) {
            this.b = bVar;
        }

        public void run() {
            dj.this.a();
            if (this.b != null) {
                this.b.q();
            }
        }
    }

    dj(b bVar) {
        this.c = bVar;
    }

    public synchronized void a() {
        if (this.a != null) {
            this.a.cancel();
            this.a = null;
        }
        this.b = null;
    }

    public synchronized void a(long j) {
        if (b()) {
            a();
        }
        this.a = new Timer("FlurrySessionTimer");
        this.b = new a(this.c);
        this.a.schedule(this.b, j);
    }

    public boolean b() {
        return this.a != null;
    }
}