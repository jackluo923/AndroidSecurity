package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.z;
import com.millennialmedia.a.a.d.e;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class v {
    public Number c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public BigDecimal f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public BigInteger g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public float h() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long i() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int j() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public byte k() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public char l() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public short m() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean n() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    abstract v o();

    public boolean p() {
        return this instanceof s;
    }

    public boolean q() {
        return this instanceof y;
    }

    public boolean r() {
        return this instanceof ab;
    }

    public boolean s() {
        return this instanceof x;
    }

    public y t() {
        if (q()) {
            return (y) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public String toString() {
        try {
            Writer stringWriter = new StringWriter();
            e eVar = new e(stringWriter);
            eVar.b(true);
            z.a(this, eVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public s u() {
        if (p()) {
            return (s) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public ab v_() {
        if (r()) {
            return (ab) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public x w() {
        if (s()) {
            return (x) this;
        }
        throw new IllegalStateException("This is not a JSON Null.");
    }

    Boolean x() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }
}