package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.z;
import com.millennialmedia.a.a.d.e;

final class aj extends ak {
    private final ad a;
    private final u b;
    private final k c;
    private final com.millennialmedia.a.a.c.a d;
    private final am e;
    private ak f;

    private static class a implements am {
        private final com.millennialmedia.a.a.c.a a;
        private final boolean b;
        private final Class c;
        private final ad d;
        private final u e;

        private a(Object obj, com.millennialmedia.a.a.c.a aVar, boolean z, Class cls) {
            boolean z2;
            this.d = obj instanceof ad ? (ad) obj : null;
            this.e = obj instanceof u ? (u) obj : null;
            z2 = this.d != null || this.e != null;
            com.millennialmedia.a.a.b.a.a(z2);
            this.a = aVar;
            this.b = z;
            this.c = cls;
        }

        public ak a_(k kVar, com.millennialmedia.a.a.c.a aVar) {
            boolean isAssignableFrom;
            if (this.a == null) {
                isAssignableFrom = this.c.isAssignableFrom(aVar.a());
            } else if (this.a.equals(aVar) || (this.b && this.a.b() == aVar.a())) {
                isAssignableFrom = true;
            } else {
                isAssignableFrom = false;
            }
            return z ? new aj(this.e, kVar, aVar, this, null) : null;
        }
    }

    private aj(ad adVar, u uVar, k kVar, com.millennialmedia.a.a.c.a aVar, am amVar) {
        this.a = adVar;
        this.b = uVar;
        this.c = kVar;
        this.d = aVar;
        this.e = amVar;
    }

    public static am a(com.millennialmedia.a.a.c.a aVar, Object obj) {
        return new a(aVar, false, null, null);
    }

    public static am a(Class cls, Object obj) {
        return new a(null, false, cls, null);
    }

    private ak b() {
        ak akVar = this.f;
        if (akVar != null) {
            return akVar;
        }
        akVar = this.c.a(this.e, this.d);
        this.f = akVar;
        return akVar;
    }

    public static am b(com.millennialmedia.a.a.c.a aVar, Object obj) {
        return new a(aVar, aVar.b() == aVar.a(), null, null);
    }

    public void a(e eVar, Object obj) {
        if (this.a == null) {
            b().a(eVar, obj);
        } else if (obj == null) {
            eVar.f();
        } else {
            z.a(this.a.a(obj, this.d.b(), this.c.c), eVar);
        }
    }

    public Object b(com.millennialmedia.a.a.d.a aVar) {
        if (this.b == null) {
            return b().b(aVar);
        }
        v a = z.a(aVar);
        return a.s() ? null : this.b.b(a, this.d.b(), this.c.b);
    }
}