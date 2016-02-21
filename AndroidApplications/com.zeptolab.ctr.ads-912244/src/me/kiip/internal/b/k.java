package me.kiip.internal.b;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.ByteArrayOutputStream;

public class k extends ByteArrayOutputStream {
    private final b a;

    public k(b bVar, int i) {
        this.a = bVar;
        this.buf = this.a.a(Math.max(i, AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY));
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            Object a = this.a.a((this.count + i) * 2);
            System.arraycopy(this.buf, 0, a, 0, this.count);
            this.a.a(this.buf);
            this.buf = a;
        }
    }

    public void close() {
        this.a.a(this.buf);
        this.buf = null;
        super.close();
    }

    public void finalize() {
        this.a.a(this.buf);
    }

    public synchronized void write(int i) {
        a(1);
        super.write(i);
    }

    public synchronized void write(byte[] bArr, int i, int i2) {
        a(i2);
        super.write(bArr, i, i2);
    }
}