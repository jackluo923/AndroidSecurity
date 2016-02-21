package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.a.c;
import com.millennialmedia.a.a.a.d;
import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.am;
import com.millennialmedia.a.a.b;
import com.millennialmedia.a.a.c.a;
import com.millennialmedia.a.a.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class p implements am, Cloneable {
    public static final p a;
    private static final double b = -1.0d;
    private double c;
    private int d;
    private boolean e;
    private boolean f;
    private List g;
    private List h;

    static {
        a = new p();
    }

    public p() {
        this.c = -1.0d;
        this.d = 136;
        this.e = true;
        this.g = Collections.emptyList();
        this.h = Collections.emptyList();
    }

    private boolean a(c cVar) {
        return cVar == null || cVar.a() <= this.c;
    }

    private boolean a(c cVar, d dVar) {
        return a(cVar) && a(dVar);
    }

    private boolean a(d dVar) {
        return dVar == null || dVar.a() > this.c;
    }

    private boolean a(Class cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean b(Class cls) {
        return cls.isMemberClass() && !c(cls);
    }

    private boolean c(Class cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    public ak a(k kVar, a aVar) {
        Class a = aVar.a();
        boolean a2 = a(a, true);
        boolean a3 = a(a, false);
        return (a2 || a3) ? new q(this, a3, a2, kVar, aVar) : null;
    }

    protected p a() {
        try {
            return (p) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public p a(double d) {
        p a = a();
        a.c = d;
        return a;
    }

    public p a(b bVar, boolean z, boolean z2) {
        p a = a();
        if (z) {
            a.g = new ArrayList(this.g);
            a.g.add(bVar);
        }
        if (z2) {
            a.h = new ArrayList(this.h);
            a.h.add(bVar);
        }
        return a;
    }

    public p a(int... iArr) {
        int i = 0;
        p a = a();
        a.d = 0;
        int length = iArr.length;
        while (i < length) {
            a.d = iArr[i] | a.d;
            i++;
        }
        return a;
    }

    public boolean a(Class cls, boolean z) {
        if (this.c != -1.0d && !a((c) cls.getAnnotation(c.class), (d) cls.getAnnotation(d.class))) {
            return true;
        }
        if (!this.e && b(cls)) {
            return true;
        }
        if (a(cls)) {
            return true;
        }
        Iterator it = (z ? this.g : this.h).iterator();
        while (it.hasNext()) {
            if (((b) it.next()).a(cls)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.lang.reflect.Field r6, boolean r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.a.a.b.p.a(java.lang.reflect.Field, boolean):boolean");
        /*
        r5 = this;
        r2 = 1;
        r0 = r5.d;
        r1 = r6.getModifiers();
        r0 = r0 & r1;
        if (r0 == 0) goto L_0x000c;
    L_0x000a:
        r0 = r2;
    L_0x000b:
        return r0;
    L_0x000c:
        r0 = r5.c;
        r3 = -4616189618054758400; // 0xbff0000000000000 float:0.0 double:-1.0;
        r0 = (r0 > r3 ? 1 : (r0 == r3? 0 : -1));
        if (r0 == 0) goto L_0x002c;
    L_0x0014:
        r0 = com.millennialmedia.a.a.a.c.class;
        r0 = r6.getAnnotation(r0);
        r0 = (com.millennialmedia.a.a.a.c) r0;
        r1 = com.millennialmedia.a.a.a.d.class;
        r1 = r6.getAnnotation(r1);
        r1 = (com.millennialmedia.a.a.a.d) r1;
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
        r0 = r5.f;
        if (r0 == 0) goto L_0x0052;
    L_0x0038:
        r0 = com.millennialmedia.a.a.a.a.class;
        r0 = r6.getAnnotation(r0);
        r0 = (com.millennialmedia.a.a.a.a) r0;
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
        r0 = r5.e;
        if (r0 != 0) goto L_0x0062;
    L_0x0056:
        r0 = r6.getType();
        r0 = r5.b(r0);
        if (r0 == 0) goto L_0x0062;
    L_0x0060:
        r0 = r2;
        goto L_0x000b;
    L_0x0062:
        r0 = r6.getType();
        r0 = r5.a(r0);
        if (r0 == 0) goto L_0x006e;
    L_0x006c:
        r0 = r2;
        goto L_0x000b;
    L_0x006e:
        if (r7 == 0) goto L_0x0096;
    L_0x0070:
        r0 = r5.g;
    L_0x0072:
        r1 = r0.isEmpty();
        if (r1 != 0) goto L_0x0099;
    L_0x0078:
        r1 = new com.millennialmedia.a.a.c;
        r1.<init>(r6);
        r3 = r0.iterator();
    L_0x0081:
        r0 = r3.hasNext();
        if (r0 == 0) goto L_0x0099;
    L_0x0087:
        r0 = r3.next();
        r0 = (com.millennialmedia.a.a.b) r0;
        r0 = r0.a(r1);
        if (r0 == 0) goto L_0x0081;
    L_0x0093:
        r0 = r2;
        goto L_0x000b;
    L_0x0096:
        r0 = r5.h;
        goto L_0x0072;
    L_0x0099:
        r0 = 0;
        goto L_0x000b;
        */
    }

    public p b() {
        p a = a();
        a.e = false;
        return a;
    }

    public p c() {
        p a = a();
        a.f = true;
        return a;
    }

    protected /* synthetic */ Object clone() {
        return a();
    }
}