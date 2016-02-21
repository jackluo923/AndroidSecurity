package com.google.ads.interactivemedia.v3.a.b;

import com.google.ads.interactivemedia.v3.a.b;
import com.google.ads.interactivemedia.v3.a.c.a;
import com.google.ads.interactivemedia.v3.a.d.c;
import com.google.ads.interactivemedia.v3.a.f;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class d implements x, Cloneable {
    public static final d a;
    private double b;
    private int c;
    private boolean d;
    private boolean e;
    private List f;
    private List g;

    final class AnonymousClass_1 extends w {
        final /* synthetic */ boolean a;
        final /* synthetic */ boolean b;
        final /* synthetic */ f c;
        final /* synthetic */ a d;
        private w f;

        AnonymousClass_1(boolean z, boolean z2, f fVar, a aVar) {
            this.a = z;
            this.b = z2;
            this.c = fVar;
            this.d = aVar;
        }

        private w a() {
            w wVar = this.f;
            if (wVar != null) {
                return wVar;
            }
            wVar = this.c.a(d.this, this.d);
            this.f = wVar;
            return wVar;
        }

        public final Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
            if (!this.a) {
                return a().a(aVar);
            }
            aVar.n();
            return null;
        }

        public final void a(c cVar, Object obj) {
            if (this.b) {
                cVar.f();
            } else {
                a().a(cVar, obj);
            }
        }
    }

    static {
        a = new d();
    }

    public d() {
        this.b = -1.0d;
        this.c = 136;
        this.d = true;
        this.f = Collections.emptyList();
        this.g = Collections.emptyList();
    }

    private d a() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    private boolean a(com.google.ads.interactivemedia.v3.a.a.c cVar, com.google.ads.interactivemedia.v3.a.a.d dVar) {
        int i = cVar == null || cVar.a() <= this.b;
        if (i != 0) {
            i = dVar == null || dVar.a() > this.b;
            if (i != 0) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(Class cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private static boolean b(Class cls) {
        if (cls.isMemberClass()) {
            if (((cls.getModifiers() & 8) != 0) == 0) {
                return true;
            }
        }
        return false;
    }

    public final w a(f fVar, a aVar) {
        Class a = aVar.a();
        boolean a2 = a(a, true);
        boolean a3 = a(a, false);
        return (a2 || a3) ? new AnonymousClass_1(a3, a2, fVar, aVar) : null;
    }

    public final boolean a(Class cls, boolean z) {
        if (this.b != -1.0d && !a((com.google.ads.interactivemedia.v3.a.a.c) cls.getAnnotation(com.google.ads.interactivemedia.v3.a.a.c.class), (com.google.ads.interactivemedia.v3.a.a.d) cls.getAnnotation(com.google.ads.interactivemedia.v3.a.a.d.class))) {
            return true;
        }
        if (!this.d && b(cls)) {
            return true;
        }
        if (a(cls)) {
            return true;
        }
        Iterator it = (z ? this.f : this.g).iterator();
        while (it.hasNext()) {
            if (((b) it.next()).b()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(java.lang.reflect.Field r6, boolean r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.interactivemedia.v3.a.b.d.a(java.lang.reflect.Field, boolean):boolean");
        /*
        r5 = this;
        r2 = 1;
        r0 = r5.c;
        r1 = r6.getModifiers();
        r0 = r0 & r1;
        if (r0 == 0) goto L_0x000c;
    L_0x000a:
        r0 = r2;
    L_0x000b:
        return r0;
    L_0x000c:
        r0 = r5.b;
        r3 = -4616189618054758400; // 0xbff0000000000000 float:0.0 double:-1.0;
        r0 = (r0 > r3 ? 1 : (r0 == r3? 0 : -1));
        if (r0 == 0) goto L_0x002c;
    L_0x0014:
        r0 = com.google.ads.interactivemedia.v3.a.a.c.class;
        r0 = r6.getAnnotation(r0);
        r0 = (com.google.ads.interactivemedia.v3.a.a.c) r0;
        r1 = com.google.ads.interactivemedia.v3.a.a.d.class;
        r1 = r6.getAnnotation(r1);
        r1 = (com.google.ads.interactivemedia.v3.a.a.d) r1;
        r0 = r5.a(r0, r1);
        if (r0 != 0) goto L_0x002c;
    L_0x002a:
        r0 = r2;
        goto L_0x000b;
    L_0x002c:
        r0 = r6.isSynthetic();
        if (r0 == 0) goto L_0x0034;
    L_0x0032:
        r0 = r2;
        goto L_0x000b;
    L_0x0034:
        r0 = r5.e;
        if (r0 == 0) goto L_0x0052;
    L_0x0038:
        r0 = com.google.ads.interactivemedia.v3.a.a.a.class;
        r0 = r6.getAnnotation(r0);
        r0 = (com.google.ads.interactivemedia.v3.a.a.a) r0;
        if (r0 == 0) goto L_0x004a;
    L_0x0042:
        if (r7 == 0) goto L_0x004c;
    L_0x0044:
        r0 = r0.a();
        if (r0 != 0) goto L_0x0052;
    L_0x004a:
        r0 = r2;
        goto L_0x000b;
    L_0x004c:
        r0 = r0.b();
        if (r0 == 0) goto L_0x004a;
    L_0x0052:
        r0 = r5.d;
        if (r0 != 0) goto L_0x0062;
    L_0x0056:
        r0 = r6.getType();
        r0 = b(r0);
        if (r0 == 0) goto L_0x0062;
    L_0x0060:
        r0 = r2;
        goto L_0x000b;
    L_0x0062:
        r0 = r6.getType();
        r0 = a(r0);
        if (r0 == 0) goto L_0x006e;
    L_0x006c:
        r0 = r2;
        goto L_0x000b;
    L_0x006e:
        if (r7 == 0) goto L_0x0096;
    L_0x0070:
        r0 = r5.f;
    L_0x0072:
        r1 = r0.isEmpty();
        if (r1 != 0) goto L_0x0099;
    L_0x0078:
        r1 = new com.google.ads.interactivemedia.v3.a.c;
        r1.<init>(r6);
        r1 = r0.iterator();
    L_0x0081:
        r0 = r1.hasNext();
        if (r0 == 0) goto L_0x0099;
    L_0x0087:
        r0 = r1.next();
        r0 = (com.google.ads.interactivemedia.v3.a.b) r0;
        r0 = r0.a();
        if (r0 == 0) goto L_0x0081;
    L_0x0093:
        r0 = r2;
        goto L_0x000b;
    L_0x0096:
        r0 = r5.g;
        goto L_0x0072;
    L_0x0099:
        r0 = 0;
        goto L_0x000b;
        */
    }

    protected final /* synthetic */ Object clone() {
        return a();
    }
}