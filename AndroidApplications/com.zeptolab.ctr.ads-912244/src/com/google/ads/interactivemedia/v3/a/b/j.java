package com.google.ads.interactivemedia.v3.a.b;

import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.d.d;
import com.google.ads.interactivemedia.v3.a.l;
import com.google.ads.interactivemedia.v3.a.m;
import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.t;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class j {

    private static final class a extends Writer {
        private final Appendable a;
        private final a b;

        static class a implements CharSequence {
            char[] a;

            a() {
            }

            public final char charAt(int i) {
                return this.a[i];
            }

            public final int length() {
                return this.a.length;
            }

            public final CharSequence subSequence(int i, int i2) {
                return new String(this.a, i, i2 - i);
            }
        }

        private a(Appendable appendable) {
            this.b = new a();
            this.a = appendable;
        }

        public final void close() {
        }

        public final void flush() {
        }

        public final void write(int i) {
            this.a.append((char) i);
        }

        public final void write(char[] cArr, int i, int i2) {
            this.b.a = cArr;
            this.a.append(this.b, i, i + i2);
        }
    }

    public static l a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        try {
            aVar.f();
            return (l) com.google.ads.interactivemedia.v3.a.b.a.l.P.a(aVar);
        } catch (EOFException e) {
            th = e;
            if (1 != 0) {
                return n.a;
            }
            Throwable th2;
            throw new t(th2);
        } catch (d e2) {
            throw new t(e2);
        } catch (IOException e3) {
            throw new m(e3);
        } catch (NumberFormatException e4) {
            throw new t(e4);
        }
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a((byte) 0);
    }

    public static void a(l lVar, c cVar) {
        com.google.ads.interactivemedia.v3.a.b.a.l.P.a(cVar, lVar);
    }
}