package com.millennialmedia.a.a.d;

import java.io.IOException;

public final class f extends IOException {
    private static final long a = 1;

    public f(String str) {
        super(str);
    }

    public f(String str, Throwable th) {
        super(str);
        initCause(th);
    }

    public f(Throwable th) {
        initCause(th);
    }
}