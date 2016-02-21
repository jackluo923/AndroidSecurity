package com.millennialmedia.a.a.d;

import com.admarvel.android.ads.Constants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class e implements Closeable, Flushable {
    private static final String[] a;
    private static final String[] b;
    private final Writer c;
    private int[] d;
    private int e;
    private String f;
    private String g;
    private boolean h;
    private boolean i;
    private String j;
    private boolean k;

    static {
        a = new String[128];
        int i = 0;
        while (i <= 31) {
            a[i] = String.format("\\u%04x", new Object[]{Integer.valueOf(i)});
            i++;
        }
        a[34] = "\\\"";
        a[92] = "\\\\";
        a[9] = "\\t";
        a[8] = "\\b";
        a[10] = "\\n";
        a[13] = "\\r";
        a[12] = "\\f";
        b = (String[]) a.clone();
        b[60] = "\\u003c";
        b[62] = "\\u003e";
        b[38] = "\\u0026";
        b[61] = "\\u003d";
        b[39] = "\\u0027";
    }

    public e(Writer writer) {
        this.d = new int[32];
        this.e = 0;
        a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR);
        this.g = ":";
        this.k = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.c = writer;
    }

    private int a() {
        if (this.e != 0) {
            return this.d[this.e - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private e a(int i, int i2, String str) {
        int a = a();
        if (a != i2 && a != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.j != null) {
            throw new IllegalStateException("Dangling name: " + this.j);
        } else {
            this.e--;
            if (a == i2) {
                k();
            }
            this.c.write(str);
            return this;
        }
    }

    private e a(int i, String str) {
        e(true);
        a(i);
        this.c.write(str);
        return this;
    }

    private void a(int i) {
        if (this.e == this.d.length) {
            Object obj = new Object[(this.e * 2)];
            System.arraycopy(this.d, 0, obj, 0, this.e);
            this.d = obj;
        }
        int[] iArr = this.d;
        int i2 = this.e;
        this.e = i2 + 1;
        iArr[i2] = i;
    }

    private void b(int i) {
        this.d[this.e - 1] = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d(java.lang.String r8) {
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.a.a.d.e.d(java.lang.String):void");
        /*
        r7 = this;
        r1 = 0;
        r0 = r7.i;
        if (r0 == 0) goto L_0x0025;
    L_0x0005:
        r0 = b;
    L_0x0007:
        r2 = r7.c;
        r3 = "\"";
        r2.write(r3);
        r4 = r8.length();
        r3 = r1;
    L_0x0013:
        if (r3 >= r4) goto L_0x0046;
    L_0x0015:
        r2 = r8.charAt(r3);
        r5 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        if (r2 >= r5) goto L_0x0028;
    L_0x001d:
        r2 = r0[r2];
        if (r2 != 0) goto L_0x002e;
    L_0x0021:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x0013;
    L_0x0025:
        r0 = a;
        goto L_0x0007;
    L_0x0028:
        r5 = 8232; // 0x2028 float:1.1535E-41 double:4.067E-320;
        if (r2 != r5) goto L_0x003f;
    L_0x002c:
        r2 = "\\u2028";
    L_0x002e:
        if (r1 >= r3) goto L_0x0037;
    L_0x0030:
        r5 = r7.c;
        r6 = r3 - r1;
        r5.write(r8, r1, r6);
    L_0x0037:
        r1 = r7.c;
        r1.write(r2);
        r1 = r3 + 1;
        goto L_0x0021;
    L_0x003f:
        r5 = 8233; // 0x2029 float:1.1537E-41 double:4.0676E-320;
        if (r2 != r5) goto L_0x0021;
    L_0x0043:
        r2 = "\\u2029";
        goto L_0x002e;
    L_0x0046:
        if (r1 >= r4) goto L_0x004f;
    L_0x0048:
        r0 = r7.c;
        r2 = r4 - r1;
        r0.write(r8, r1, r2);
    L_0x004f:
        r0 = r7.c;
        r1 = "\"";
        r0.write(r1);
        return;
        */
    }

    private void e_(boolean z) {
        switch (a()) {
            case GoogleScorer.CLIENT_GAMES:
                b((int)GoogleScorer.CLIENT_PLUS);
                k();
            case GoogleScorer.CLIENT_PLUS:
                this.c.append(',');
                k();
            case GoogleScorer.CLIENT_APPSTATE:
                this.c.append(this.g);
                b((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                if (this.h || z) {
                    b((int)GoogleScorer.CLIENT_ALL);
                } else {
                    throw new IllegalStateException("JSON must start with an array or an object.");
                }
            case GoogleScorer.CLIENT_ALL:
                if (!this.h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                b((int)GoogleScorer.CLIENT_ALL);
            default:
                throw new IllegalStateException("Nesting problem.");
        }
    }

    private void j() {
        if (this.j != null) {
            l();
            d(this.j);
            this.j = null;
        }
    }

    private void k() {
        if (this.f != null) {
            this.c.write(Constants.FORMATTER);
            int i = 1;
            int i2 = this.e;
            while (i < i2) {
                this.c.write(this.f);
                i++;
            }
        }
    }

    private void l() {
        int a = a();
        if (a == 5) {
            this.c.write(ApiEventType.API_MRAID_SET_VIDEO_VOLUME);
        } else if (a != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b((int)GoogleScorer.CLIENT_APPSTATE);
    }

    public e a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        j();
        e(false);
        this.c.append(Double.toString(d));
        return this;
    }

    public e a(long j) {
        j();
        e(false);
        this.c.write(Long.toString(j));
        return this;
    }

    public e a(Number number) {
        if (number == null) {
            return f();
        }
        j();
        CharSequence toString = number.toString();
        if (this.h || !(toString.equals("-Infinity") || toString.equals("Infinity") || toString.equals("NaN"))) {
            e(false);
            this.c.append(toString);
            return this;
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
    }

    public e a(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.j != null) {
            throw new IllegalStateException();
        } else if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        } else {
            this.j = str;
            return this;
        }
    }

    public e a(boolean z) {
        j();
        e(false);
        this.c.write(z ? "true" : "false");
        return this;
    }

    public e b() {
        j();
        return a(1, "[");
    }

    public e b(String str) {
        if (str == null) {
            return f();
        }
        j();
        e(false);
        d(str);
        return this;
    }

    public final void b(boolean z) {
        this.h = z;
    }

    public e c() {
        return a(1, GoogleScorer.CLIENT_PLUS, "]");
    }

    public final void c(String str) {
        if (str.length() == 0) {
            this.f = null;
            this.g = ":";
        } else {
            this.f = str;
            this.g = ": ";
        }
    }

    public final void c(boolean z) {
        this.i = z;
    }

    public void close() {
        this.c.close();
        int i = this.e;
        if (i > 1 || (i == 1 && this.d[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.e = 0;
    }

    public e d() {
        j();
        return a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, "{");
    }

    public final void d(boolean z) {
        this.k = z;
    }

    public e e_() {
        return a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, "}");
    }

    public e f() {
        if (this.j == null || !this.k) {
            this.j = null;
        } else {
            j();
            e(false);
            this.c.write("null");
        }
        return this;
    }

    public void flush() {
        if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.c.flush();
    }

    public boolean g() {
        return this.h;
    }

    public final boolean h() {
        return this.i;
    }

    public final boolean i() {
        return this.k;
    }
}