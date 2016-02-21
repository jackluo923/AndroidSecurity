package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.af;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.b.c;
import com.millennialmedia.a.a.b.p;
import com.millennialmedia.a.a.b.x;
import com.millennialmedia.a.a.b.y;
import com.millennialmedia.a.a.d.d;
import com.millennialmedia.a.a.d.e;
import com.millennialmedia.a.a.j;
import com.millennialmedia.a.a.k;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class m implements am {
    private final c a;
    private final j b;
    private final p c;

    public static final class a extends ak {
        private final x a;
        private final Map b;

        private a(x xVar, Map map) {
            this.a = xVar;
            this.b = map;
        }

        public void a_(e eVar, Object obj) {
            if (obj == null) {
                eVar.f();
            } else {
                eVar.d();
                try {
                    Iterator it = this.b.values().iterator();
                    while (it.hasNext()) {
                        b bVar = (b) it.next();
                        if (bVar.h) {
                            eVar.a(bVar.g);
                            bVar.a(eVar, obj);
                        }
                    }
                    eVar.e();
                } catch (IllegalAccessException e) {
                    throw new AssertionError();
                }
            }
        }

        public Object b(com.millennialmedia.a.a.d.a aVar) {
            if (aVar.f() == d.i) {
                aVar.j();
                return null;
            } else {
                Object a = this.a.a();
                try {
                    aVar.c();
                    while (aVar.e()) {
                        b bVar = (b) this.b.get(aVar.g());
                        if (bVar == null || !bVar.i) {
                            aVar.n();
                        } else {
                            bVar.a(aVar, a);
                        }
                    }
                    aVar.d();
                    return a;
                } catch (IllegalStateException e) {
                    throw new af(e);
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                }
            }
        }
    }

    static abstract class b {
        final String g;
        final boolean h;
        final boolean i;

        protected b(String str, boolean z, boolean z2) {
            this.g = str;
            this.h = z;
            this.i = z2;
        }

        abstract void a(com.millennialmedia.a.a.d.a aVar, Object obj);

        abstract void a(e eVar, Object obj);
    }

    public m(c cVar, j jVar, p pVar) {
        this.a = cVar;
        this.b = jVar;
        this.c = pVar;
    }

    private b a(k kVar, Field field, String str, com.millennialmedia.a.a.c.a aVar, boolean z, boolean z2) {
        return new n(this, str, z, z2, kVar, aVar, field, y.a(aVar.a()));
    }

    private String a(Field field) {
        com.millennialmedia.a.a.a.b bVar = (com.millennialmedia.a.a.a.b) field.getAnnotation(com.millennialmedia.a.a.a.b.class);
        return bVar == null ? this.b.a(field) : bVar.a();
    }

    private Map a(k kVar, com.millennialmedia.a.a.c.a aVar, Class cls) {
        Map linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b = aVar.b();
        while (cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                boolean a = a(field, true);
                boolean a2 = a(field, false);
                if (a || a2) {
                    field.setAccessible(true);
                    Type a3 = com.millennialmedia.a.a.b.b.a(aVar.b(), cls, field.getGenericType());
                    b a4 = a(kVar, field, a(field), com.millennialmedia.a.a.c.a.b(a3), a, a2);
                    a4 = (b) linkedHashMap.put(a4.g, a4);
                    if (a4 != null) {
                        throw new IllegalArgumentException(b + " declares multiple JSON fields named " + a4.g);
                    }
                }
                i++;
            }
            aVar = com.millennialmedia.a.a.c.a.b(com.millennialmedia.a.a.b.b.a(aVar.b(), cls, cls.getGenericSuperclass()));
            cls = aVar.a();
        }
        return linkedHashMap;
    }

    public ak a(k kVar, com.millennialmedia.a.a.c.a aVar) {
        Class a = aVar.a();
        return Object.class.isAssignableFrom(a) ? new a(a(kVar, aVar, a), null) : null;
    }

    public boolean a(Field field, boolean z) {
        return !this.c.a(field.getType(), z) && !this.c.a(field, z);
    }
}