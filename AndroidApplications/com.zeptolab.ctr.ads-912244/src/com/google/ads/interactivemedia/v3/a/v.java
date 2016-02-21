package com.google.ads.interactivemedia.v3.a;

import com.google.ads.interactivemedia.v3.a.b.j;
import com.google.ads.interactivemedia.v3.a.d.c;
import java.lang.reflect.Type;

final class v extends w {
    private final s a;
    private final k b;
    private final f c;
    private final com.google.ads.interactivemedia.v3.a.c.a d;
    private final x e;
    private w f;

    private static class a implements x {
        private final com.google.ads.interactivemedia.v3.a.c.a a;
        private final boolean b;
        private final Class c;
        private final s d;
        private final k e;

        private a(Object obj, com.google.ads.interactivemedia.v3.a.c.a aVar, boolean z) {
            boolean z2;
            this.d = obj instanceof s ? (s) obj : null;
            this.e = obj instanceof k ? (k) obj : null;
            z2 = this.d != null || this.e != null;
            com.google.ads.interactivemedia.v3.a.b.a.a(z2);
            this.a = aVar;
            this.b = z;
            this.c = null;
        }

        public final w a_(f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar) {
            boolean isAssignableFrom;
            if (this.a == null) {
                isAssignableFrom = this.c.isAssignableFrom(aVar.a());
            } else if (this.a.equals(aVar) || (this.b && this.a.b() == aVar.a())) {
                isAssignableFrom = true;
            } else {
                isAssignableFrom = false;
            }
            return z ? new v(this.e, fVar, aVar, this, (byte) 0) : null;
        }
    }

    private v(s sVar, k kVar, f fVar, com.google.ads.interactivemedia.v3.a.c.a aVar, x xVar) {
        this.a = sVar;
        this.b = kVar;
        this.c = fVar;
        this.d = aVar;
        this.e = xVar;
    }

    private w a() {
        w wVar = this.f;
        if (wVar != null) {
            return wVar;
        }
        wVar = this.c.a(this.e, this.d);
        this.f = wVar;
        return wVar;
    }

    public static x a(com.google.ads.interactivemedia.v3.a.c.a aVar, Object obj) {
        return new a(aVar, false, (byte) 0);
    }

    public final Object a(com.google.ads.interactivemedia.v3.a.d.a aVar) {
        if (this.b == null) {
            return a().a(aVar);
        }
        l a = j.a(aVar);
        if (a.j()) {
            return null;
        }
        try {
            k kVar = this.b;
            Type b = this.d.b();
            j jVar = this.c.a;
            return kVar.a(a, b);
        } catch (p e) {
            throw e;
        } catch (Exception e2) {
            throw new p(e2);
        }
    }

    public final void a(c cVar, Object obj) {
        if (this.a == null) {
            a().a(cVar, obj);
        } else if (obj == null) {
            cVar.f();
        } else {
            s sVar = this.a;
            this.d.b();
            r rVar = this.c.b;
            j.a(sVar.a(obj), cVar);
        }
    }
}