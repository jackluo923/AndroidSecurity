package com.jirbo.adcolony;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

class ADCStreamReader extends InputStream {
    byte[] buffer;
    int buffer_count;
    int buffer_position;
    int dx;
    InputStream input;
    int position;
    int size;
    int x;

    ADCStreamReader(String str) {
        this.buffer = new byte[1024];
        if (log_level != 0) {
            this.dx = 23;
            this.x = 23;
        }
        this.size = (int) new File(str).length();
        this.input = new FileInputStream(str);
    }

    public int available() {
        return this.buffer_count - this.buffer_position + this.input.available();
    }

    public void close() {
        this.input.close();
    }

    void fillBuffer() {
        this.buffer_count = 0;
        while (this.buffer_count == 0) {
            this.buffer_count = this.input.read(this.buffer, 0, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        }
        int i = 0;
        while (i < this.buffer_count) {
            this.buffer[i] = (byte) (this.buffer[i] ^ this.x);
            this.x += this.dx;
            i++;
        }
        this.buffer_position = 0;
    }

    public void mark(int i) {
    }

    public boolean markSupported() {
        return false;
    }

    public int read() {
        if (this.position == this.size) {
            return -1;
        }
        if (this.buffer_position >= this.buffer_count) {
            fillBuffer();
        }
        this.position++;
        byte[] bArr = this.buffer;
        int i = this.buffer_position;
        this.buffer_position = i + 1;
        return bArr[i];
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        if (this.position == this.size) {
            return -1;
        }
        int i3 = this.size - this.position;
        if (i2 > i3) {
            i2 = i3;
        }
        int i4 = 0;
        int i5 = i2;
        int i6 = i;
        while (i5 > 0) {
            if (this.buffer_position == this.buffer_count) {
                fillBuffer();
            }
            i3 = i5 < this.buffer_count ? i5 : this.buffer_count;
            int i7 = i6;
            i6 = 0;
            while (i6 < i3) {
                int i8 = i7 + 1;
                byte[] bArr2 = this.buffer;
                int i9 = this.buffer_position;
                this.buffer_position = i9 + 1;
                bArr[i7] = bArr2[i9];
                i6++;
                i7 = i8;
            }
            i5 -= i3;
            i4 += i3;
            this.position = i3 + this.position;
            i6 = i7;
        }
        return i4;
    }

    public void reset() {
        throw new IOException("ADCStreamReader does not support reset().");
    }

    public long skip(long j) {
        throw new IOException("ADCStreamReader does not support skip().");
    }
}