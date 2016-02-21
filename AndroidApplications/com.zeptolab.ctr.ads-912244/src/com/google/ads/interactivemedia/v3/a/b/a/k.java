package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.d.a;
import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.w;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class k extends w {
    private final f a;
    private final w b;
    private final Type c;

    k(f fVar, w wVar, Type type) {
        this.a = fVar;
        this.b = wVar;
        this.c = type;
    }

    public final Object a(a aVar) {
        return this.b.a(aVar);
    }

    public final void a(c cVar, Object obj) {
        w a;
        w wVar = this.b;
        Type type = this.c;
        if (obj != null) {
            if (type == Object.class || type instanceof TypeVariable || type instanceof Class) {
                type = obj.getClass();
            }
        }
        if (type != this.c) {
            a = this.a.a(com.google.ads.interactivemedia.v3.a.c.a.a(type));
            if (a instanceof h.a && !this.b instanceof h.a) {
                a = this.b;
            }
        } else {
            a = wVar;
        }
        a.a(cVar, obj);
    }
}