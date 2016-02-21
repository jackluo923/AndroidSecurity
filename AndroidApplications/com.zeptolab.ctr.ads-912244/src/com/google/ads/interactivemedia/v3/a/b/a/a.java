package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.b.b;
import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public final class a extends w {
    public static final x a;
    private final Class b;
    private final w c;

    static {
        a = new x() {
            public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
                Type b = aVar.b();
                if (!(b instanceof GenericArrayType) && (!(b instanceof Class) || !((Class) b).isArray())) {
                    return null;
                }
                b = b.d(b);
                return new a(fVar, fVar.a(com.google.ads.interactivemedia.v3.a.c.a.a(b)), b.b(b));
            }
        };
    }

    public a(f fVar, w wVar, Class cls) {
        this.c = new k(fVar, wVar, cls);
        this.b = cls;
    }

    public final Object a_(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.i) {
            aVar.j();
            return null;
        } else {
            List arrayList = new ArrayList();
            aVar.a();
            while (aVar.e()) {
                arrayList.add(this.c.a(aVar));
            }
            aVar.b();
            Object newInstance = Array.newInstance(this.b, arrayList.size());
            int i = 0;
            while (i < arrayList.size()) {
                Array.set(newInstance, i, arrayList.get(i));
                i++;
            }
            return newInstance;
        }
    }

    public final void a_(c cVar, Object obj) {
        if (obj == null) {
            cVar.f();
        } else {
            cVar.b();
            int i = 0;
            int length = Array.getLength(obj);
            while (i < length) {
                this.c.a(cVar, Array.get(obj, i));
                i++;
            }
            cVar.c();
        }
    }
}