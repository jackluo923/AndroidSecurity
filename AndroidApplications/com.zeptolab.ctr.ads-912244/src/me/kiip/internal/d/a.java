package me.kiip.internal.d;

import java.io.IOException;
import java.io.OutputStream;

public abstract class a extends OutputStream {
    protected boolean a;

    protected final void a_() {
        if (this.a) {
            throw new IOException("stream closed");
        }
    }

    public boolean b() {
        return this.a;
    }

    public final void write(int i) {
        write(new byte[]{(byte) i});
    }
}