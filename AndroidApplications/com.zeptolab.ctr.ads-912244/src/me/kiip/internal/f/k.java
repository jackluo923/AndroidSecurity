package me.kiip.internal.f;

import java.io.InputStream;
import java.io.OutputStream;

interface k {
    public static final k b;
    public static final k c;

    static {
        b = new h();
        c = new d();
    }

    b a(InputStream inputStream, boolean z);

    c a(OutputStream outputStream, boolean z);
}