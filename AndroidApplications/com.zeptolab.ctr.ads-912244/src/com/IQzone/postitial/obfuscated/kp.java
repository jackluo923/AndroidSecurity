package com.IQzone.postitial.obfuscated;

import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class kp {
    private static final ql a;
    private final Executor b;
    private final qe c;
    private final ks d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    static {
        a = new ql();
    }

    public kp(qe qeVar, ks ksVar) {
        this.b = new no(Executors.newSingleThreadExecutor());
        this.c = qeVar;
        this.d = ksVar;
    }

    public static String a(String str) {
        if (str != null) {
            return qd.a(new URL(str), new HashMap());
        }
        throw new IllegalArgumentException("Url must not be null.");
    }

    public static void a(List list, Executor executor) {
        if (list != null) {
            ql qlVar = a;
            new StringBuilder("tracking ").append(list.size()).toString();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                executor.execute(new kr((String) it.next()));
            }
        }
    }

    public final void a() {
        a(this.d.a(), this.b);
        this.c.post(new kq(this));
    }

    public final void b() {
        float duration = (float) this.c.getDuration();
        if (duration > 0.0f) {
            ql qlVar;
            duration = ((float) this.c.getCurrentPosition()) / duration;
            if (duration > 0.25f && !this.e) {
                qlVar = a;
                this.e = true;
                a(this.d.b(), this.b);
            }
            if (duration > 0.5f && !this.f) {
                qlVar = a;
                this.f = true;
                a(this.d.c(), this.b);
            }
            if (duration > 0.75f && !this.g) {
                qlVar = a;
                this.g = true;
                a(this.d.d(), this.b);
            }
            if (duration > 0.75f && !this.h) {
                ql qlVar2 = a;
                this.h = true;
                a(this.d.e(), this.b);
            }
        }
    }
}