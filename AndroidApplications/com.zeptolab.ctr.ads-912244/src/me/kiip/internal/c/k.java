package me.kiip.internal.c;

import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.SSLHandshakeException;

public final class k {
    private final Set a;

    public k() {
        this.a = new LinkedHashSet();
    }

    public synchronized void a(j jVar) {
        this.a.remove(jVar);
    }

    public synchronized void a(j jVar, IOException iOException) {
        this.a.add(jVar);
        if (!iOException instanceof SSLHandshakeException) {
            this.a.add(jVar.c());
        }
    }

    public synchronized boolean b(j jVar) {
        return this.a.contains(jVar);
    }
}