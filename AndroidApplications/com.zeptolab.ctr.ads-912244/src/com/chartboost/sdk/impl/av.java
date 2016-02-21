package com.chartboost.sdk.impl;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class av extends au {
    private static bm g;
    final byte[] a;
    final char[] b;
    final List c;
    final aw d;
    private final a e;
    private final a f;

    final class AnonymousClass_1 extends bm {
        AnonymousClass_1(int i) {
            super(i);
        }

        protected byte[] a() {
            return new byte[16384];
        }

        protected /* synthetic */ Object b() {
            return a();
        }
    }

    static class a {
        int a;
        int b;

        a() {
            a();
        }

        void a_() {
            this.a = -1;
            this.b = 0;
        }

        void a_(int i) {
            this.a = i / 16384 - 1;
            this.b = i % 16384;
        }

        void a_(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
        }

        int b() {
            return (this.a + 1) * 16384 + this.b;
        }

        void b(int i) {
            this.b += i;
            if (this.b > 16384) {
                throw new IllegalArgumentException("something is wrong");
            }
        }

        int c() {
            int i = this.b;
            this.b = i + 1;
            return i;
        }

        int c(int i) {
            return i < this.a ? AccessibilityNodeInfoCompat.ACTION_COPY : this.b;
        }

        void d() {
            if (this.b != 16384) {
                throw new IllegalArgumentException("broken");
            }
            this.a++;
            this.b = 0;
        }

        public String toString() {
            return this.a + "," + this.b;
        }
    }

    static {
        g = new AnonymousClass_1(640);
    }

    public av() {
        this.a = new byte[16384];
        this.b = new char[16384];
        this.c = new ArrayList();
        this.d = new aw();
        this.e = new a();
        this.f = new a();
        d();
    }

    public int a() {
        return this.e.b();
    }

    public int a(OutputStream outputStream) {
        if (outputStream == null) {
            throw new NullPointerException("out is null");
        }
        int i = -1;
        int i2 = 0;
        while (i < this.c.size()) {
            byte[] b = b(i);
            int c = this.f.c(i);
            outputStream.write(b, 0, c);
            i2 += c;
            i++;
        }
        return i2;
    }

    public void a(int i) {
        this.e.a(i);
    }

    public int b() {
        return this.f.b();
    }

    byte[] b(int i) {
        return i < 0 ? this.a : (byte[]) this.c.get(i);
    }

    public void d() {
        this.e.a();
        this.f.a();
        int i = 0;
        while (i < this.c.size()) {
            g.b(this.c.get(i));
            i++;
        }
        this.c.clear();
    }

    void e() {
        if (this.e.b() >= this.f.b()) {
            this.f.a(this.e);
            if (this.f.b >= 16384) {
                this.c.add(g.c());
                this.f.d();
                this.e.a(this.f);
            }
        } else if (this.e.b == 16384) {
            this.e.d();
        }
    }

    byte[] f() {
        return b(this.e.a);
    }

    public void write(int i) {
        f()[this.e.c()] = (byte) (i & 255);
        e();
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            Object f = f();
            int min = Math.min(f.length - this.e.b, i2);
            System.arraycopy(bArr, i, f, this.e.b, min);
            this.e.b(min);
            i2 -= min;
            i += min;
            e();
        }
    }
}