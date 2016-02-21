package com.a.c;

import android.view.View;
import android.view.animation.Interpolator;
import com.a.a.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

class g extends b {
    private static final int l = 0;
    private static final int m = 1;
    private static final int n = 2;
    private static final int o = 4;
    private static final int p = 8;
    private static final int q = 16;
    private static final int r = 32;
    private static final int s = 64;
    private static final int t = 128;
    private static final int u = 256;
    private static final int v = 512;
    private static final int w = 511;
    ArrayList a;
    private final com.a.c.a.a b;
    private final WeakReference c;
    private long d;
    private boolean e;
    private long f;
    private boolean g;
    private Interpolator h;
    private boolean i;
    private com.a.a.a.a j;
    private a k;
    private Runnable x;
    private HashMap y;

    private class a implements com.a.a.a.a, com.a.a.af.b {
        private a() {
        }

        public void a_(com.a.a.a aVar) {
            if (g.this.j != null) {
                g.this.j.a(aVar);
            }
        }

        public void a_(af afVar) {
            float A = afVar.A();
            c cVar = (c) g.this.y.get(afVar);
            if ((g.this & 511) != 0) {
                View view = (View) g.this.c.get();
                if (view != null) {
                    view.invalidate();
                }
            }
            ArrayList arrayList = cVar.b;
            if (arrayList != null) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    b bVar = (b) arrayList.get(i);
                    g.this.c(g.this, bVar.b + bVar.c * A);
                    i++;
                }
            }
            View view2 = (View) g.this.c.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }

        public void b(com.a.a.a aVar) {
            if (g.this.j != null) {
                g.this.j.b(aVar);
            }
            g.this.y.remove(aVar);
            if (g.this.y.isEmpty()) {
                g.this.j = null;
            }
        }

        public void c(com.a.a.a aVar) {
            if (g.this.j != null) {
                g.this.j.c(aVar);
            }
        }

        public void d(com.a.a.a aVar) {
            if (g.this.j != null) {
                g.this.j.d(aVar);
            }
        }
    }

    private static class b {
        int a;
        float b;
        float c;

        b(int i, float f, float f2) {
            this.a = i;
            this.b = f;
            this.c = f2;
        }
    }

    private static class c {
        int a;
        ArrayList b;

        c(int i, ArrayList arrayList) {
            this.a = i;
            this.b = arrayList;
        }

        boolean a(int i) {
            if (!((this.a & i) == 0 || this.b == null)) {
                int size = this.b.size();
                int i2 = 0;
                while (i2 < size) {
                    if (((b) this.b.get(i2)).a == i) {
                        this.b.remove(i2);
                        this.a &= i ^ -1;
                        return true;
                    } else {
                        i2++;
                    }
                }
            }
            return false;
        }
    }

    g(View view) {
        this.e = false;
        this.f = 0;
        this.g = false;
        this.i = false;
        this.j = null;
        this.k = new a(null);
        this.a = new ArrayList();
        this.x = new h(this);
        this.y = new HashMap();
        this.c = new WeakReference(view);
        this.b = com.a.c.a.a.a(view);
    }

    private float a(int i) {
        switch (i) {
            case m:
                return this.b.k();
            case n:
                return this.b.l();
            case o:
                return this.b.g();
            case p:
                return this.b.h();
            case q:
                return this.b.d();
            case r:
                return this.b.e();
            case s:
                return this.b.f();
            case t:
                return this.b.m();
            case u:
                return this.b.n();
            case v:
                return this.b.a();
            default:
                return BitmapDescriptorFactory.HUE_RED;
        }
    }

    private void a(int i, float f) {
        float a = a(i);
        a(i, a, f - a);
    }

    private void a(int i, float f, float f2) {
        if (this.y.size() > 0) {
            com.a.a.a aVar;
            Iterator it = this.y.keySet().iterator();
            while (it.hasNext()) {
                aVar = (com.a.a.a) it.next();
                c cVar = (c) this.y.get(aVar);
                if (cVar.a(i) && cVar.a == 0) {
                    break;
                }
            }
            aVar = null;
            if (aVar != null) {
                aVar.b();
            }
        }
        this.a.add(new b(i, f, f2));
        View view = (View) this.c.get();
        if (view != null) {
            view.removeCallbacks(this.x);
            view.post(this.x);
        }
    }

    private void b(int i, float f) {
        a(i, a(i), f);
    }

    private void c(int i, float f) {
        switch (i) {
            case m:
                this.b.i(f);
            case n:
                this.b.j(f);
            case o:
                this.b.g(f);
            case p:
                this.b.h(f);
            case q:
                this.b.d(f);
            case r:
                this.b.e(f);
            case s:
                this.b.f(f);
            case t:
                this.b.k(f);
            case u:
                this.b.l(f);
            case v:
                this.b.a(f);
            default:
                break;
        }
    }

    private void e() {
        af b = af.b(new float[]{1.0f});
        ArrayList arrayList = (ArrayList) this.a.clone();
        this.a.clear();
        int i = 0;
        int i2 = 0;
        while (i < arrayList.size()) {
            i2 |= ((b) arrayList.get(i)).a;
            i++;
        }
        this.y.put(b, new c(i2, arrayList));
        b.a(this.k);
        b.a(this.k);
        if (this.g) {
            b.a(this.f);
        }
        if (this.e) {
            b.d(this.d);
        }
        if (this.i) {
            b.a(this.h);
        }
        b.a();
    }

    public long a() {
        return this.e ? this.d : new af().e();
    }

    public b a(float f) {
        a((int)t, f);
        return this;
    }

    public b a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
        }
        this.e = true;
        this.d = j;
        return this;
    }

    public b a(Interpolator interpolator) {
        this.i = true;
        this.h = interpolator;
        return this;
    }

    public b a(com.a.a.a.a aVar) {
        this.j = aVar;
        return this;
    }

    public long b() {
        return this.g ? this.f : 0;
    }

    public b b(float f) {
        b(t, f);
        return this;
    }

    public b b(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
        }
        this.g = true;
        this.f = j;
        return this;
    }

    public b c(float f) {
        a((int)u, f);
        return this;
    }

    public void c() {
        e();
    }

    public b d(float f) {
        b(u, f);
        return this;
    }

    public void d() {
        if (this.y.size() > 0) {
            Iterator it = ((HashMap) this.y.clone()).keySet().iterator();
            while (it.hasNext()) {
                ((com.a.a.a) it.next()).b();
            }
        }
        this.a.clear();
        View view = (View) this.c.get();
        if (view != null) {
            view.removeCallbacks(this.x);
        }
    }

    public b e(float f) {
        a((int)q, f);
        return this;
    }

    public b f(float f) {
        b(q, f);
        return this;
    }

    public b g_(float f) {
        a((int)r, f);
        return this;
    }

    public b h(float f) {
        b(r, f);
        return this;
    }

    public b i(float f) {
        a((int)s, f);
        return this;
    }

    public b j(float f) {
        b(s, f);
        return this;
    }

    public b k(float f) {
        a((int)m, f);
        return this;
    }

    public b l(float f) {
        b(m, f);
        return this;
    }

    public b m(float f) {
        a((int)n, f);
        return this;
    }

    public b n(float f) {
        b(n, f);
        return this;
    }

    public b o(float f) {
        a((int)o, f);
        return this;
    }

    public b p(float f) {
        b(o, f);
        return this;
    }

    public b q(float f) {
        a((int)p, f);
        return this;
    }

    public b r(float f) {
        b(p, f);
        return this;
    }

    public b s(float f) {
        a((int)v, f);
        return this;
    }

    public b t(float f) {
        b(v, f);
        return this;
    }
}