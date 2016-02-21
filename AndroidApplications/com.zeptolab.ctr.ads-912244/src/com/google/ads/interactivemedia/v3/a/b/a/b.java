package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.b.c;
import com.google.ads.interactivemedia.v3.a.b.h;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public final class b implements x {
    private final c a;

    private static final class a extends w {
        private final w a;
        private final h b;

        public a(f fVar, Type type, w wVar, h hVar) {
            this.a = new k(fVar, wVar, type);
            this.b = hVar;
        }

        public final /* synthetic */ Object a_(com.google.ads.interactivemedia.v3.a.d.a aVar) {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.i) {
                aVar.j();
                return null;
            } else {
                Collection collection = (Collection) this.b.a();
                aVar.a();
                while (aVar.e()) {
                    collection.add(this.a.a(aVar));
                }
                aVar.b();
                return collection;
            }
        }

        public final /* synthetic */ void a_(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
            Collection collection = (Collection) obj;
            if (collection == null) {
                cVar.f();
            } else {
                cVar.b();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    this.a.a(cVar, it.next());
                }
                cVar.c();
            }
        }
    }

    public b(c cVar) {
        this.a = cVar;
    }

    public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
        Type b = aVar.b();
        Class a = aVar.a();
        if (!Collection.class.isAssignableFrom(a)) {
            return null;
        }
        Type a2 = com.google.ads.interactivemedia.v3.a.b.b.a(b, a);
        return new a(fVar, a2, fVar.a(com.google.ads.interactivemedia.v3.a.c.a.a(a2)), this.a.a(aVar));
    }
}