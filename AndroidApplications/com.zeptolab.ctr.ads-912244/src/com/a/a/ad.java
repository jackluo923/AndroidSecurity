package com.a.a;

public class ad extends af {
    private a p;
    private long q;

    public static interface a {
        void a_(ad adVar, long j, long j2);
    }

    public ad() {
        this.q = -1;
    }

    void a(float f) {
    }

    public void a(a aVar) {
        this.p = aVar;
    }

    boolean c(long j) {
        long j2 = 0;
        if (this.i == 0) {
            this.i = 1;
            if (this.h < 0) {
                this.g = j;
            } else {
                this.g = j - this.h;
                this.h = -1;
            }
        }
        if (this.p != null) {
            long j3 = j - this.g;
            if (this.q >= 0) {
                j2 = j - this.q;
            }
            this.q = j;
            this.p.a(this, j3, j2);
        }
        return false;
    }

    void n() {
    }
}