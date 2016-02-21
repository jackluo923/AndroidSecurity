package com.vungle.publisher;

import com.zeptolab.ctr.ads.R;
import java.lang.reflect.Array;

public final class cb {
    private final Class a;
    private final Object[] b;
    private int c;
    private int d;

    public cb(Class cls) {
        this.a = cls;
        this.b = a(R.styleable.MapAttrs_uiZoomControls);
    }

    private Object[] a(int i) {
        return (Object[]) Array.newInstance(this.a, i);
    }

    private Object[] b() {
        Object a;
        synchronized (this.b) {
            int length = this.b.length;
            int c = c();
            a = a(c);
            if (this.c + c > length) {
                length -= this.c;
                System.arraycopy(this.b, this.c, a, 0, length);
                System.arraycopy(this.b, 0, a, length, c - length);
            } else {
                System.arraycopy(this.b, this.c, a, 0, c);
            }
        }
        return a;
    }

    private int c() {
        int i;
        synchronized (this.b) {
            i = this.d;
        }
        return i;
    }

    public final Object[] a() {
        Object[] b;
        synchronized (this.b) {
            try {
                b = b();
                synchronized (this.b) {
                    this.d = 0;
                }
            } catch (Throwable th) {
            }
        }
        return b;
    }
}