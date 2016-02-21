package com.IQzone.postitial.obfuscated;

final class ob implements Runnable {
    private /* synthetic */ oa a;

    ob(oa oaVar) {
        this.a = oaVar;
    }

    public final void run() {
        oa.a;
        synchronized (this.a.d) {
            oa.b(this.a);
            Object peek = this.a.d.peek();
            if (peek == null) {
                this.a.c = false;
                this.a.b();
            } else {
                oa.a;
                try {
                    this.a.a();
                    while (true) {
                        oa.a;
                        try {
                            this.a.a(peek);
                            if (this.a.g) {
                                synchronized (this.a.d) {
                                    this.a.d.poll();
                                    peek = this.a.d.peek();
                                    if (peek == null) {
                                        this.a.c = false;
                                        this.a.b();
                                        return;
                                    }
                                }
                            } else {
                                synchronized (this.a.d) {
                                    this.a.c = false;
                                    this.a.b();
                                }
                                return;
                            }
                        } catch (ol e) {
                            oa.a;
                            synchronized (this.a.d) {
                            }
                            this.a.c = false;
                            this.a.b();
                        }
                    }
                } catch (ol e2) {
                    oa.a;
                    synchronized (this.a.d) {
                    }
                    this.a.c = false;
                    this.a.b();
                }
            }
        }
    }
}