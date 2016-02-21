package com.google.ads.interactivemedia.v3.a;

import com.google.ads.interactivemedia.v3.a.b.j;
import com.google.ads.interactivemedia.v3.a.d.c;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

public abstract class l {
    public Number a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final boolean g() {
        return this instanceof i;
    }

    public final boolean h() {
        return this instanceof o;
    }

    public final boolean i() {
        return this instanceof q;
    }

    public final boolean j() {
        return this instanceof n;
    }

    public final o k() {
        if (this instanceof o) {
            return (o) this;
        }
        throw new IllegalStateException(new StringBuilder("Not a JSON Object: ").append(this).toString());
    }

    public final i l_() {
        if (this instanceof i) {
            return (i) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public final q m() {
        if (this instanceof q) {
            return (q) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public String toString() {
        try {
            Writer stringWriter = new StringWriter();
            c cVar = new c(stringWriter);
            cVar.b(true);
            j.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}