package com.a.a;

import java.util.ArrayList;

class h extends l {
    private float g;
    private float h;
    private float i;
    private boolean j;

    public h(a... aVarArr) {
        super(aVarArr);
        this.j = true;
    }

    public h a() {
        ArrayList arrayList = this.e;
        int size = this.e.size();
        a[] aVarArr = new a[size];
        int i = 0;
        while (i < size) {
            aVarArr[i] = (a) ((k) arrayList.get(i)).f();
            i++;
        }
        return new h(aVarArr);
    }

    public Object a(float f) {
        return Float.valueOf(b(f));
    }

    public float b(float f) {
        int i = 1;
        if (this.a == 2) {
            if (this.j) {
                this.j = false;
                this.g = ((a) this.e.get(0)).g();
                this.h = ((a) this.e.get(1)).g();
                this.i = this.h - this.g;
            }
            if (this.d != null) {
                f = this.d.getInterpolation(f);
            }
            return this.f == null ? this.g + this.i * f : ((Number) this.f.a(f, Float.valueOf(this.g), Float.valueOf(this.h))).floatValue();
        } else if (f <= 0.0f) {
            aVar = (a) this.e.get(0);
            aVar = (a) this.e.get(1);
            g = aVar.g();
            g = aVar.g();
            c = aVar.c();
            c = aVar.c();
            d = aVar.d();
            if (d != null) {
                f = d.getInterpolation(f);
            }
            c = (f - c) / (c - c);
            return this.f == null ? c * (g - g) + g : ((Number) this.f.a(c, Float.valueOf(g), Float.valueOf(g))).floatValue();
        } else if (f >= 1.0f) {
            aVar = (a) this.e.get(this.a - 2);
            aVar = (a) this.e.get(this.a - 1);
            g = aVar.g();
            g = aVar.g();
            c = aVar.c();
            c = aVar.c();
            d = aVar.d();
            if (d != null) {
                f = d.getInterpolation(f);
            }
            c = (f - c) / (c - c);
            return this.f == null ? c * (g - g) + g : ((Number) this.f.a(c, Float.valueOf(g), Float.valueOf(g))).floatValue();
        } else {
            a aVar2 = (a) this.e.get(0);
            while (i < this.a) {
                aVar = (a) this.e.get(i);
                if (f < aVar.c()) {
                    d = aVar.d();
                    if (d != null) {
                        f = d.getInterpolation(f);
                    }
                    float c2 = (f - aVar2.c()) / (aVar.c() - aVar2.c());
                    g = aVar2.g();
                    c = aVar.g();
                    return this.f == null ? (c - g) * c2 + g : ((Number) this.f.a(c2, Float.valueOf(g), Float.valueOf(c))).floatValue();
                } else {
                    i++;
                    aVar2 = aVar;
                }
            }
            return ((Number) ((k) this.e.get(this.a - 1)).b()).floatValue();
        }
    }

    public /* synthetic */ l b() {
        return a();
    }

    public /* synthetic */ Object clone() {
        return a();
    }
}