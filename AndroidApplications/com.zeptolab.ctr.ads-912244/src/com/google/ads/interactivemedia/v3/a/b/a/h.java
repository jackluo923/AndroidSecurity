package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.b.c;
import com.google.ads.interactivemedia.v3.a.b.d;
import com.google.ads.interactivemedia.v3.a.b.i;
import com.google.ads.interactivemedia.v3.a.e;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class h implements x {
    private final c a;
    private final e b;
    private final d c;

    static abstract class b {
        final String g;
        final boolean h;
        final boolean i;

        protected b(String str, boolean z, boolean z2) {
            this.g = str;
            this.h = z;
            this.i = z2;
        }

        abstract void a(com.google.ads.interactivemedia.v3.a.d.a aVar, Object obj);

        abstract void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj);
    }

    final class AnonymousClass_1 extends b {
        final w a;
        final /* synthetic */ f b;
        final /* synthetic */ com.google.ads.interactivemedia.v3.a.c.a c;
        final /* synthetic */ Field d;
        final /* synthetic */ boolean e;

        AnonymousClass_1(String str, boolean z, boolean z2, f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar, Field field, boolean z3) {
            this.b = fVar;
            this.c = aVar;
            this.d = field;
            this.e = z3;
            super(str, z, z2);
            this.a = this.b.a(this.c);
        }

        final void a(com.google.ads.interactivemedia.v3.a.d.a aVar, Object obj) {
            Object a = this.a.a(aVar);
            if (a != null || !this.e) {
                this.d.set(obj, a);
            }
        }

        final void a(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
            new k(this.b, this.a, this.c.b()).a(cVar, this.d.get(obj));
        }
    }

    public static final class a extends w {
        private final com.google.ads.interactivemedia.v3.a.b.h a;
        private final Map b;

        private a(com.google.ads.interactivemedia.v3.a.b.h hVar, Map map) {
            this.a = hVar;
            this.b = map;
        }

        public final Object a_(com.google.ads.interactivemedia.v3.a.d.a aVar) {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.i) {
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
                    throw new t(e);
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                }
            }
        }

        public final void a_(com.google.ads.interactivemedia.v3.a.d.c cVar, Object obj) {
            if (obj == null) {
                cVar.f();
            } else {
                cVar.d();
                try {
                    Iterator it = this.b.values().iterator();
                    while (it.hasNext()) {
                        b bVar = (b) it.next();
                        if (bVar.h) {
                            cVar.a(bVar.g);
                            bVar.a(cVar, obj);
                        }
                    }
                    cVar.e();
                } catch (IllegalAccessException e) {
                    throw new AssertionError();
                }
            }
        }
    }

    public h(c cVar, e eVar, d dVar) {
        this.a = cVar;
        this.b = eVar;
        this.c = dVar;
    }

    private Map a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar, Class cls) {
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
                    String a3;
                    field.setAccessible(true);
                    Type a4 = com.google.ads.interactivemedia.v3.a.b.b.a(aVar.b(), cls, field.getGenericType());
                    com.google.ads.interactivemedia.v3.a.a.b bVar = (com.google.ads.interactivemedia.v3.a.a.b) field.getAnnotation(com.google.ads.interactivemedia.v3.a.a.b.class);
                    a3 = bVar == null ? this.b.a(field) : bVar.a();
                    com.google.ads.interactivemedia.v3.a.c.a a5 = com.google.ads.interactivemedia.v3.a.c.a.a(a4);
                    b anonymousClass_1 = new AnonymousClass_1(a3, a, a2, fVar, a5, field, i.a(a5.a()));
                    anonymousClass_1 = (b) linkedHashMap.put(anonymousClass_1.g, anonymousClass_1);
                    if (anonymousClass_1 != null) {
                        throw new IllegalArgumentException(b + " declares multiple JSON fields named " + anonymousClass_1.g);
                    }
                }
                i++;
            }
            aVar = com.google.ads.interactivemedia.v3.a.c.a.a(com.google.ads.interactivemedia.v3.a.b.b.a(aVar.b(), cls, cls.getGenericSuperclass()));
            cls = aVar.a();
        }
        return linkedHashMap;
    }

    private boolean a(Field field, boolean z) {
        return !this.c.a(field.getType(), z) && !this.c.a(field, z);
    }

    public final w a(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
        Class a = aVar.a();
        return Object.class.isAssignableFrom(a) ? new a(a(fVar, aVar, a), (byte) 0) : null;
    }
}