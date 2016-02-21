package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.b.b;
import com.millennialmedia.a.a.b.x;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.k;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

public final class c implements am {
    private final com.millennialmedia.a.a.b.c a;

    private static final class a extends ak {
        private final ak a;
        private final x b;

        public a(k kVar, Type type, ak akVar, x xVar) {
            this.a = new s(kVar, akVar, type);
            this.b = xVar;
        }

        public Collection a_(com.millennialmedia.a.a.d.a aVar) {
            if (aVar.f() == d.i) {
                aVar.j();
                return null;
            } else {
                Collection collection = (Collection) this.b.a();
                aVar.a();
                while (aVar.e()) {
                    collection.add(this.a.b(aVar));
                }
                aVar.b();
                return collection;
            }
        }

        public void a_(e eVar, Collection collection) {
            if (collection == null) {
                eVar.f();
            } else {
                eVar.b();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    this.a.a(eVar, it.next());
                }
                eVar.c();
            }
        }

        public /* synthetic */ Object b(com.millennialmedia.a.a.d.a aVar) {
            return a(aVar);
        }
    }

    public c(com.millennialmedia.a.a.b.c cVar) {
        this.a = cVar;
    }

    public ak a(k kVar, com.millennialmedia.a.a.c.a aVar) {
        Type b = aVar.b();
        Class a = aVar.a();
        if (!Collection.class.isAssignableFrom(a)) {
            return null;
        }
        Type a2 = b.a(b, a);
        return new a(kVar, a2, kVar.a(com.millennialmedia.a.a.c.a.b(a2)), this.a.a(aVar));
    }
}