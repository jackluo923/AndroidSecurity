package com.a.c;

import android.view.View;
import android.view.animation.Interpolator;
import com.a.a.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

class c extends b {
    private static final int k = 0;
    private static final int l = 1;
    private static final int m = 2;
    private static final int n = 4;
    private static final int o = 8;
    private static final int p = 16;
    private static final int q = 32;
    private static final int r = 64;
    private static final int s = 128;
    private static final int t = 256;
    private static final int u = 512;
    private static final int v = 511;
    ArrayList a;
    private final WeakReference b;
    private long c;
    private boolean d;
    private long e;
    private boolean f;
    private Interpolator g;
    private boolean h;
    private com.a.a.a.a i;
    private a j;
    private Runnable w;
    private HashMap x;

    private class a implements com.a.a.a.a, com.a.a.af.b {
        private a() {
        }

        public void a_(com.a.a.a aVar) {
            if (c.this.i != null) {
                c.this.i.a(aVar);
            }
        }

        public void a_(af afVar) {
            float A = afVar.A();
            c cVar = (c) c.this.x.get(afVar);
            if ((c.this & 511) != 0) {
                View view = (View) c.this.b.get();
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
                    c.this.c(c.this, bVar.b + bVar.c * A);
                    i++;
                }
            }
            View view2 = (View) c.this.b.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }

        public void b(com.a.a.a aVar) {
            if (c.this.i != null) {
                c.this.i.b(aVar);
            }
            c.this.x.remove(aVar);
            if (c.this.x.isEmpty()) {
                c.this.i = null;
            }
        }

        public void c(com.a.a.a aVar) {
            if (c.this.i != null) {
                c.this.i.c(aVar);
            }
        }

        public void d(com.a.a.a aVar) {
            if (c.this.i != null) {
                c.this.i.d(aVar);
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

    c(View view) {
        this.d = false;
        this.e = 0;
        this.f = false;
        this.h = false;
        this.i = null;
        this.j = new a(null);
        this.a = new ArrayList();
        this.w = new d(this);
        this.x = new HashMap();
        this.b = new WeakReference(view);
    }

    private float a(int i) {
        View view = (View) this.b.get();
        if (view != null) {
            switch (i) {
                case l:
                    return view.getTranslationX();
                case m:
                    return view.getTranslationY();
                case n:
                    return view.getScaleX();
                case o:
                    return view.getScaleY();
                case p:
                    return view.getRotation();
                case q:
                    return view.getRotationX();
                case r:
                    return view.getRotationY();
                case s:
                    return view.getX();
                case t:
                    return view.getY();
                case u:
                    return view.getAlpha();
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    private void a(int i, float f) {
        float a = a(i);
        a(i, a, f - a);
    }

    private void a(int i, float f, float f2) {
        if (this.x.size() > 0) {
            com.a.a.a aVar;
            Iterator it = this.x.keySet().iterator();
            while (it.hasNext()) {
                aVar = (com.a.a.a) it.next();
                c cVar = (c) this.x.get(aVar);
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
        View view = (View) this.b.get();
        if (view != null) {
            view.removeCallbacks(this.w);
            view.post(this.w);
        }
    }

    private void b(int i, float f) {
        a(i, a(i), f);
    }

    private void c_(int i, float f) {
        View view = (View) this.b.get();
        if (view != null) {
            switch (i) {
                case l:
                    view.setTranslationX(f);
                case m:
                    view.setTranslationY(f);
                case n:
                    view.setScaleX(f);
                case o:
                    view.setScaleY(f);
                case p:
                    view.setRotation(f);
                case q:
                    view.setRotationX(f);
                case r:
                    view.setRotationY(f);
                case s:
                    view.setX(f);
                case t:
                    view.setY(f);
                case u:
                    view.setAlpha(f);
                default:
                    break;
            }
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
        this.x.put(b, new c(i2, arrayList));
        b.a(this.j);
        b.a(this.j);
        if (this.f) {
            b.a(this.e);
        }
        if (this.d) {
            b.d(this.c);
        }
        if (this.h) {
            b.a(this.g);
        }
        b.a();
    }

    public long a() {
        return this.d ? this.c : new af().e();
    }

    public b a(float f) {
        a((int)s, f);
        return this;
    }

    public b a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
        }
        this.d = true;
        this.c = j;
        return this;
    }

    public b a(Interpolator interpolator) {
        this.h = true;
        this.g = interpolator;
        return this;
    }

    public b a(com.a.a.a.a aVar) {
        this.i = aVar;
        return this;
    }

    public long b() {
        return this.f ? this.e : 0;
    }

    public b b(float f) {
        b(s, f);
        return this;
    }

    public b b(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
        }
        this.f = true;
        this.e = j;
        return this;
    }

    public b c_(float f) {
        a((int)t, f);
        return this;
    }

    public void c_() {
        e();
    }

    public b d(float f) {
        b(t, f);
        return this;
    }

    public void d() {
        if (this.x.size() > 0) {
            Iterator it = ((HashMap) this.x.clone()).keySet().iterator();
            while (it.hasNext()) {
                ((com.a.a.a) it.next()).b();
            }
        }
        this.a.clear();
        View view = (View) this.b.get();
        if (view != null) {
            view.removeCallbacks(this.w);
        }
    }

    public b e(float f) {
        a((int)p, f);
        return this;
    }

    public b f(float f) {
        b(p, f);
        return this;
    }

    public b g(float f) {
        a((int)q, f);
        return this;
    }

    public b h(float f) {
        b(q, f);
        return this;
    }

    public b i(float f) {
        a((int)r, f);
        return this;
    }

    public b j(float f) {
        b(r, f);
        return this;
    }

    public b k(float f) {
        a((int)l, f);
        return this;
    }

    public b l(float f) {
        b(l, f);
        return this;
    }

    public b m(float f) {
        a((int)m, f);
        return this;
    }

    public b n(float f) {
        b(m, f);
        return this;
    }

    public b o(float f) {
        a((int)n, f);
        return this;
    }

    public b p(float f) {
        b(n, f);
        return this;
    }

    public b q(float f) {
        a((int)o, f);
        return this;
    }

    public b r(float f) {
        b(o, f);
        return this;
    }

    public b s(float f) {
        a((int)u, f);
        return this;
    }

    public b t(float f) {
        b(u, f);
        return this;
    }
}