package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.b.a.t;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.d.f;
import com.millennialmedia.a.a.v;
import com.millennialmedia.a.a.w;
import com.millennialmedia.a.a.x;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class z {

    private static final class a extends Writer {
        private final Appendable a;
        private final a b;

        static class a implements CharSequence {
            char[] a;

            a() {
            }

            public char charAt(int i) {
                return this.a[i];
            }

            public int length() {
                return this.a.length;
            }

            public CharSequence subSequence(int i, int i2) {
                return new String(this.a, i, i2 - i);
            }
        }

        private a(Appendable appendable) {
            this.b = new a();
            this.a = appendable;
        }

        public void close() {
        }

        public void flush() {
        }

        public void write(int i) {
            this.a.append((char) i);
        }

        public void write(char[] cArr, int i, int i2) {
            this.b.a = cArr;
            this.a.append(this.b, i, i + i2);
        }
    }

    public static v a(com.millennialmedia.a.a.d.a aVar) {
        try {
            aVar.f();
            return (v) t.P.b(aVar);
        } catch (EOFException e) {
            th = e;
            if (1 != 0) {
                return x.a;
            }
            Throwable th2;
            throw new af(th2);
        } catch (f e2) {
            throw new af(e2);
        } catch (IOException e3) {
            throw new w(e3);
        } catch (NumberFormatException e4) {
            throw new af(e4);
        }
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(null);
    }

    public static void a(Object obj, e eVar) {
        t.P.a(eVar, obj);
    }
}