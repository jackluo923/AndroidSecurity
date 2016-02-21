package com.IQzone.postitial.obfuscated;

final class j implements Runnable {
    private /* synthetic */ ah a;
    private /* synthetic */ i b;

    j(i iVar, ah ahVar) {
        this.b = iVar;
        this.a = ahVar;
    }

    public final void run() {
        boolean z = 1;
        synchronized (this.b.g.b) {
            if (this.b.a != this.b.g.b.i() || this.b.g.b.f()) {
                z = false;
            } else if (this.a.b) {
                h.f;
                this.b.b + " AD LOADED";
                Integer num = (Integer) this.b.g.i.get(this.b.b);
                if (num == null) {
                    num = Integer.valueOf(-1);
                }
                this.b.g.b.b(true);
                this.b.g.b.c(true);
                this.b.g.b.a(num.intValue());
                this.b.g.b.a(this.a.c);
                if (this.a.a) {
                    this.b.g.b.a(System.currentTimeMillis());
                }
                z = false;
            }
        }
        if (i != 0) {
            this.b.c.removeAllViews();
            this.b.g.a(this.b.d, this.b.e, this.b.c, this.b.a, this.b.f);
        }
    }
}