package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ab;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.s;
import com.millennialmedia.a.a.v;
import com.millennialmedia.a.a.x;
import com.millennialmedia.a.a.y;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class h extends e {
    private static final Writer a;
    private static final ab b;
    private final List c;
    private String d;
    private v e;

    static {
        a = new i();
        b = new ab("closed");
    }

    public h() {
        super(a);
        this.c = new ArrayList();
        this.e = x.a;
    }

    private void a(v vVar) {
        if (this.d != null) {
            if (!vVar.s() || i()) {
                ((y) j()).a(this.d, vVar);
            }
            this.d = null;
        } else if (this.c.isEmpty()) {
            this.e = vVar;
        } else {
            v j = j();
            if (j instanceof s) {
                ((s) j).a(vVar);
            } else {
                throw new IllegalStateException();
            }
        }
    }

    private v j() {
        return (v) this.c.get(this.c.size() - 1);
    }

    public e a(double d) {
        if (g() || !(Double.isNaN(d) || Double.isInfinite(d))) {
            a(new ab(Double.valueOf(d)));
            return this;
        } else {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d);
        }
    }

    public e a(long j) {
        a(new ab(Long.valueOf(j)));
        return this;
    }

    public e a(Number number) {
        if (number == null) {
            return f();
        }
        if (!g()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a(new ab(number));
        return this;
    }

    public e a(String str) {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof y) {
            this.d = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public e a(boolean z) {
        a(new ab(Boolean.valueOf(z)));
        return this;
    }

    public v a() {
        if (this.c.isEmpty()) {
            return this.e;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.c);
    }

    public e b() {
        v sVar = new s();
        a(sVar);
        this.c.add(sVar);
        return this;
    }

    public e b(String str) {
        if (str == null) {
            return f();
        }
        a(new ab(str));
        return this;
    }

    public e c() {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof s) {
            this.c.remove(this.c.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public void close() {
        if (this.c.isEmpty()) {
            this.c.add(b);
        } else {
            throw new IOException("Incomplete document");
        }
    }

    public e d() {
        v yVar = new y();
        a(yVar);
        this.c.add(yVar);
        return this;
    }

    public e e() {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        } else if (j() instanceof y) {
            this.c.remove(this.c.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    public e f() {
        a(x.a);
        return this;
    }

    public void flush() {
    }
}