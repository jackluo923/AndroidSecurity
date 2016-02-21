package com.flurry.sdk;

import com.flurry.sdk.ek.c;
import java.io.InputStream;
import java.io.OutputStream;

public class ei extends ek {
    private a a;
    private Object b;
    private Object c;
    private eu d;
    private eu e;

    public static interface a {
        void a_(ei eiVar, Object obj);
    }

    private void m() {
        a(new c() {
            public void a(ek ekVar) {
                ei.this.n();
            }

            public void a(ek ekVar, InputStream inputStream) {
                if (ekVar.d() && ei.this.e != null) {
                    ei.this.c = ei.this.e.a(inputStream);
                }
            }

            public void a(ek ekVar, OutputStream outputStream) {
                if (ei.this.b != null && ei.this.d != null) {
                    ei.this.d.a(outputStream, ei.this.b);
                }
            }
        });
    }

    private void n() {
        if (this.a != null && !b()) {
            this.a.a(this, this.c);
        }
    }

    public void a() {
        m();
        super.a();
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    public void a(eu euVar) {
        this.d = euVar;
    }

    public void a(Object obj) {
        this.b = obj;
    }

    public void b(eu euVar) {
        this.e = euVar;
    }
}