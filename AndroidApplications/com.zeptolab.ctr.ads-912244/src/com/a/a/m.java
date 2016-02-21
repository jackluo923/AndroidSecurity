package com.a.a;

import android.view.View;
import com.a.b.d;
import com.a.c.a.a;
import java.util.HashMap;
import java.util.Map;

public final class m extends af {
    private static final boolean p = false;
    private static final Map q;
    private Object r;
    private String s;
    private d t;

    static {
        q = new HashMap();
        q.put("alpha", n.a);
        q.put("pivotX", n.b);
        q.put("pivotY", n.c);
        q.put("translationX", n.d);
        q.put("translationY", n.e);
        q.put("rotation", n.f);
        q.put("rotationX", n.g);
        q.put("rotationY", n.h);
        q.put("scaleX", n.i);
        q.put("scaleY", n.j);
        q.put("scrollX", n.k);
        q.put("scrollY", n.l);
        q.put("x", n.m);
        q.put("y", n.n);
    }

    private m(Object obj, d dVar) {
        this.r = obj;
        a(dVar);
    }

    private m(Object obj, String str) {
        this.r = obj;
        a(str);
    }

    public static m a(Object obj, d dVar, ae aeVar, Object... objArr) {
        m mVar = new m(obj, dVar);
        mVar.a(objArr);
        mVar.a(aeVar);
        return mVar;
    }

    public static m a(Object obj, d dVar, float... fArr) {
        m mVar = new m(obj, dVar);
        mVar.a(fArr);
        return mVar;
    }

    public static m a(Object obj, d dVar, int... iArr) {
        m mVar = new m(obj, dVar);
        mVar.a(iArr);
        return mVar;
    }

    public static m a(Object obj, String str, ae aeVar, Object... objArr) {
        m mVar = new m(obj, str);
        mVar.a(objArr);
        mVar.a(aeVar);
        return mVar;
    }

    public static m a(Object obj, String str, float... fArr) {
        m mVar = new m(obj, str);
        mVar.a(fArr);
        return mVar;
    }

    public static m a(Object obj, String str, int... iArr) {
        m mVar = new m(obj, str);
        mVar.a(iArr);
        return mVar;
    }

    public static m a(Object obj, ac... acVarArr) {
        m mVar = new m();
        mVar.r = obj;
        mVar.b(acVarArr);
        return mVar;
    }

    public void a() {
        super.a();
    }

    void a(float f) {
        super.a(f);
        int length = this.k.length;
        int i = 0;
        while (i < length) {
            this.k[i].d(this.r);
            i++;
        }
    }

    public void a(d dVar) {
        if (this.k != null) {
            ac acVar = this.k[0];
            String c = acVar.c();
            acVar.a(dVar);
            this.l.remove(c);
            this.l.put(this.s, acVar);
        }
        if (this.t != null) {
            this.s = dVar.b();
        }
        this.t = dVar;
        this.j = false;
    }

    public void a(Object obj) {
        if (this.r != obj) {
            Object obj2 = this.r;
            this.r = obj;
            if (obj2 == null || obj == null || obj2.getClass() != obj.getClass()) {
                this.j = false;
            }
        }
    }

    public void a(String str) {
        if (this.k != null) {
            ac acVar = this.k[0];
            String c = acVar.c();
            acVar.a(str);
            this.l.remove(c);
            this.l.put(str, acVar);
        }
        this.s = str;
        this.j = false;
    }

    public void a(float... fArr) {
        if (this.k != null && this.k.length != 0) {
            super.a(fArr);
        } else if (this.t != null) {
            b(new ac[]{ac.a(this.t, fArr)});
        } else {
            b(new ac[]{ac.a(this.s, fArr)});
        }
    }

    public void a(int... iArr) {
        if (this.k != null && this.k.length != 0) {
            super.a(iArr);
        } else if (this.t != null) {
            b(new ac[]{ac.a(this.t, iArr)});
        } else {
            b(new ac[]{ac.a(this.s, iArr)});
        }
    }

    public void a(Object... objArr) {
        if (this.k != null && this.k.length != 0) {
            super.a(objArr);
        } else if (this.t != null) {
            b(new ac[]{ac.a(this.t, (ae) false, objArr)});
        } else {
            b(new ac[]{ac.a(this.s, (ae) false, objArr)});
        }
    }

    public m a_(long j) {
        super.d(j);
        return this;
    }

    public /* synthetic */ a b(long j) {
        return a_(j);
    }

    public /* synthetic */ Object clone() {
        return p();
    }

    public /* synthetic */ af d(long j) {
        return a_(j);
    }

    public /* synthetic */ a j() {
        return p();
    }

    public void k() {
        n();
        int length = this.k.length;
        int i = 0;
        while (i < length) {
            this.k[i].b(this.r);
            i++;
        }
    }

    public void l() {
        n();
        int length = this.k.length;
        int i = 0;
        while (i < length) {
            this.k[i].c(this.r);
            i++;
        }
    }

    public String m_() {
        return this.s;
    }

    void n() {
        if (!this.j) {
            if (this.t == null && a.a && this.r instanceof View && q.containsKey(this.s)) {
                a((d) q.get(this.s));
            }
            int length = this.k.length;
            int i = 0;
            while (i < length) {
                this.k[i].a(this.r);
                i++;
            }
            super.n();
        }
    }

    public Object o() {
        return this.r;
    }

    public m p() {
        return (m) super.q();
    }

    public /* synthetic */ af q() {
        return p();
    }

    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.r;
        if (this.k != null) {
            int i = 0;
            while (i < this.k.length) {
                str = str + "\n    " + this.k[i].toString();
                i++;
            }
        }
        return str;
    }
}