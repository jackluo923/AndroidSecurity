package com.vungle.publisher;

public final class cg extends cf {
    public final boolean a(int i, int i2, boolean z) {
        int i3;
        i3 = z ? 1 : 0;
        a(i2);
        b();
        ca.a(i3);
        int i4;
        do {
            i4 = this.b.get();
            if (i != (i4 >>> this.a)) {
                return false;
            }
        } while (!this.b.compareAndSet(i4, b(i2, ca.a(i4, 0, i3))));
        return true;
    }
}