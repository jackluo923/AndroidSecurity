package android.support.v4.c;

import android.util.Log;
import java.io.Writer;

public class b extends Writer {
    private final String a;
    private StringBuilder b;

    public b(String str) {
        this.b = new StringBuilder(128);
        this.a = str;
    }

    private void a() {
        if (this.b.length() > 0) {
            Log.d(this.a, this.b.toString());
            this.b.delete(0, this.b.length());
        }
    }

    public void close() {
        a();
    }

    public void flush() {
        a();
    }

    public void write(char[] cArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            char c = cArr[i + i3];
            if (c == '\n') {
                a();
            } else {
                this.b.append(c);
            }
            i3++;
        }
    }
}