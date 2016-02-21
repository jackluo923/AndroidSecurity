package com.flurry.sdk;

import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class dz {
    private static dz a;
    private final UncaughtExceptionHandler b;
    private final Map c;

    final class a implements UncaughtExceptionHandler {
        private a() {
        }

        public void uncaughtException(Thread thread, Throwable th) {
            dz.this.a(thread, th);
            dz.this.b(thread, th);
        }
    }

    private dz() {
        this.c = new WeakHashMap();
        this.b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new a(null));
    }

    public static synchronized dz a() {
        dz dzVar;
        synchronized (dz.class) {
            if (a == null) {
                a = new dz();
            }
            dzVar = a;
        }
        return dzVar;
    }

    private void a(Thread thread, Throwable th) {
        Iterator it = b().iterator();
        while (it.hasNext()) {
            try {
                ((UncaughtExceptionHandler) it.next()).uncaughtException(thread, th);
            } catch (Throwable th2) {
            }
        }
    }

    private Set b() {
        Set keySet;
        synchronized (this.c) {
            keySet = this.c.keySet();
        }
        return keySet;
    }

    private void b(Thread thread, Throwable th) {
        if (this.b != null) {
            this.b.uncaughtException(thread, th);
        }
    }

    public void a(UncaughtExceptionHandler uncaughtExceptionHandler) {
        synchronized (this.c) {
            this.c.put(uncaughtExceptionHandler, null);
        }
    }
}