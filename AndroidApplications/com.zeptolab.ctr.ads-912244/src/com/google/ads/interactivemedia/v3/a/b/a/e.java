package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.i;
import com.google.ads.interactivemedia.v3.a.l;
import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.o;
import com.google.ads.interactivemedia.v3.a.q;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class e extends c {
    private static final Writer a;
    private static final q b;
    private final List c;
    private String d;
    private l e;

    static {
        a = new Writer() {
            public final void close() {
                throw new AssertionError();
            }

            public final void flush() {
                throw new AssertionError();
            }

            public final void write(char[] cArr, int i, int i2) {
                throw new AssertionError();
            }
        };
        b = new q("closed");
    }

    public e() {
        super(a);
        this.c = new ArrayList();
        this.e = n.a;
    }

    private void a(l lVar) {
        if (this.d != null) {
            if (!lVar.j() || i()) {
                ((o) j()).a(this.d, lVar);
            }
            this.d = null;
        } else if (this.c.isEmpty()) {
            this.e = lVar;
        } else {
            l j = j();
            if (j instanceof i) {
                ((i) j).a(lVar);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    private l j() {
        return (l) this.c.get(this.c.size() - 1);
    }

    public final c a(long j) {
        a(new q(Long.valueOf(j)));
        return this;
    }

    public final c a(Number number) {
        if (number == null) {
            return f();
        }
        if (!g()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException(new StringBuilder("JSON forbids NaN and infinities: ").append(number).toString());
            }
        }
        a(new q(number));
        return this;
    }

    public final c a(String str) {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof o) {
            this.d = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public final c a(boolean z) {
        a(new q(Boolean.valueOf(z)));
        return this;
    }

    public final l a() {
        if (this.c.isEmpty()) {
            return this.e;
        }
        throw new IllegalStateException(new StringBuilder("Expected one JSON element but was ").append(this.c).toString());
    }

    public final c b() {
        l iVar = new i();
        a(iVar);
        this.c.add(iVar);
        return this;
    }

    public final c b(String str) {
        if (str == null) {
            return f();
        }
        a(new q(str));
        return this;
    }

    public final c c() {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof i) {
            this.c.remove(this.c.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public final void close() {
        if (this.c.isEmpty()) {
            this.c.add(b);
        } else {
            throw new IOException("Incomplete document");
        }
    }

    public final c d() {
        l oVar = new o();
        a(oVar);
        this.c.add(oVar);
        return this;
    }

    public final c e_() {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof o) {
            this.c.remove(this.c.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public final c f() {
        a(n.a);
        return this;
    }

    public final void flush() {
    }
}