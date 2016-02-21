package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.k;
import java.lang.reflect.Field;

class n extends b {
    final ak a;
    final /* synthetic */ k b;
    final /* synthetic */ a c;
    final /* synthetic */ Field d;
    final /* synthetic */ boolean e;
    final /* synthetic */ m f;

    n(m mVar, String str, boolean z, boolean z2, k kVar, a aVar, Field field, boolean z3) {
        this.f = mVar;
        this.b = kVar;
        this.c = aVar;
        this.d = field;
        this.e = z3;
        super(str, z, z2);
        this.a = this.b.a(this.c);
    }

    void a(com.millennialmedia.a.a.d.a aVar, Object obj) {
        Object b = this.a.b(aVar);
        if (b != null || !this.e) {
            this.d.set(obj, b);
        }
    }

    void a(e eVar, Object obj) {
        new s(this.b, this.a, this.c.b()).a(eVar, this.d.get(obj));
    }
}