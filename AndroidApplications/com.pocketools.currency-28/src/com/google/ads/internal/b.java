package com.google.ads.internal;

public final class b extends Exception {
    public final boolean a;

    public b(String str, boolean z) {
        super(str);
        this.a = z;
    }

    public b(String str, boolean z, Throwable th) {
        super(str, th);
        this.a = z;
    }

    public void a(String str) {
        com.google.ads.util.b.b(c(str));
        com.google.ads.util.b.a(null, this);
    }

    public void b_(String str) {
        String c = c(str);
        if (!this.a) {
            this = null;
        }
        throw new RuntimeException(c, this);
    }

    public String c(String str) {
        return this.a ? str + ": " + getMessage() : str;
    }
}