package com.google.ads.b;

import com.google.ads.util.g;

public final class m extends Exception {
    public final boolean a;

    public m(String str) {
        super(str);
        this.a = true;
    }

    public m(String str, Throwable th) {
        super(str, th);
        this.a = true;
    }

    public final void a(String str) {
        g.b(c(str));
        g.a(null, this);
    }

    public final void b(String str) {
        String c = c(str);
        if (!this.a) {
            this = null;
        }
        throw new RuntimeException(c, this);
    }

    public final String c(String str) {
        return this.a ? str + ": " + getMessage() : str;
    }
}