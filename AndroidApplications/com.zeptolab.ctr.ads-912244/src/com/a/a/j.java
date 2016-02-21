package com.a.a;

import java.util.ArrayList;

class j extends l {
    private int g;
    private int h;
    private int i;
    private boolean j;

    public j(b... bVarArr) {
        super(bVarArr);
        this.j = true;
    }

    public j a() {
        ArrayList arrayList = this.e;
        int size = this.e.size();
        b[] bVarArr = new b[size];
        int i = 0;
        while (i < size) {
            bVarArr[i] = (b) ((k) arrayList.get(i)).f();
            i++;
        }
        return new j(bVarArr);
    }

    public Object a(float f) {
        return Integer.valueOf(b(f));
    }

    public int b(float f) {
        int i = 1;
        if (this.a == 2) {
            if (this.j) {
                this.j = false;
                this.g = ((b) this.e.get(0)).g();
                this.h = ((b) this.e.get(1)).g();
                this.i = this.h - this.g;
            }
            if (this.d != null) {
                f = this.d.getInterpolation(f);
            }
            return this.f == null ? this.g + ((int) (((float) this.i) * f)) : ((Number) this.f.a(f, Integer.valueOf(this.g), Integer.valueOf(this.h))).intValue();
        } else if (f <= 0.0f) {
            bVar = (b) this.e.get(0);
            bVar = (b) this.e.get(1);
            g = bVar.g();
            g = bVar.g();
            c = bVar.c();
            c = bVar.c();
            d = bVar.d();
            if (d != null) {
                f = d.getInterpolation(f);
            }
            c = (f - c) / (c - c);
            return this.f == null ? ((int) (c * ((float) (g - g)))) + g : ((Number) this.f.a(c, Integer.valueOf(g), Integer.valueOf(g))).intValue();
        } else if (f >= 1.0f) {
            bVar = (b) this.e.get(this.a - 2);
            bVar = (b) this.e.get(this.a - 1);
            g = bVar.g();
            g = bVar.g();
            c = bVar.c();
            c = bVar.c();
            d = bVar.d();
            if (d != null) {
                f = d.getInterpolation(f);
            }
            c = (f - c) / (c - c);
            return this.f == null ? ((int) (c * ((float) (g - g)))) + g : ((Number) this.f.a(c, Integer.valueOf(g), Integer.valueOf(g))).intValue();
        } else {
            b bVar2 = (b) this.e.get(0);
            while (i < this.a) {
                bVar = (b) this.e.get(i);
                if (f < bVar.c()) {
                    d = bVar.d();
                    if (d != null) {
                        f = d.getInterpolation(f);
                    }
                    float c2 = (f - bVar2.c()) / (bVar.c() - bVar2.c());
                    g = bVar2.g();
                    int g2 = bVar.g();
                    return this.f == null ? ((int) (((float) (g2 - g)) * c2)) + g : ((Number) this.f.a(c2, Integer.valueOf(g), Integer.valueOf(g2))).intValue();
                } else {
                    i++;
                    bVar2 = bVar;
                }
            }
            return ((Number) ((k) this.e.get(this.a - 1)).b()).intValue();
        }
    }

    public /* synthetic */ l b() {
        return a();
    }

    public /* synthetic */ Object clone() {
        return a();
    }
}