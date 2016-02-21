package com.a.a;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Arrays;

class l {
    int a;
    k b;
    k c;
    Interpolator d;
    ArrayList e;
    ae f;

    public l(k... kVarArr) {
        this.a = kVarArr.length;
        this.e = new ArrayList();
        this.e.addAll(Arrays.asList(kVarArr));
        this.b = (k) this.e.get(0);
        this.c = (k) this.e.get(this.a - 1);
        this.d = this.c.d();
    }

    public static l a(float... fArr) {
        int i = 1;
        int length = fArr.length;
        a[] aVarArr = new a[Math.max(length, GoogleScorer.CLIENT_PLUS)];
        if (length == 1) {
            aVarArr[0] = (a) k.b(BitmapDescriptorFactory.HUE_RED);
            aVarArr[1] = (a) k.a(1.0f, fArr[0]);
        } else {
            aVarArr[0] = (a) k.a((float)BitmapDescriptorFactory.HUE_RED, fArr[0]);
            while (i < length) {
                aVarArr[i] = (a) k.a(((float) i) / ((float) (length - 1)), fArr[i]);
                i++;
            }
        }
        return new h(aVarArr);
    }

    public static l a(int... iArr) {
        int i = 1;
        int length = iArr.length;
        b[] bVarArr = new b[Math.max(length, GoogleScorer.CLIENT_PLUS)];
        if (length == 1) {
            bVarArr[0] = (b) k.a((float)BitmapDescriptorFactory.HUE_RED);
            bVarArr[1] = (b) k.a(1.0f, iArr[0]);
        } else {
            bVarArr[0] = (b) k.a((float)BitmapDescriptorFactory.HUE_RED, iArr[0]);
            while (i < length) {
                bVarArr[i] = (b) k.a(((float) i) / ((float) (length - 1)), iArr[i]);
                i++;
            }
        }
        return new j(bVarArr);
    }

    public static l a(k... kVarArr) {
        int i = 0;
        int length = kVarArr.length;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (i2 < length) {
            if (kVarArr[i2] instanceof a) {
                z3 = true;
            } else if (kVarArr[i2] instanceof b) {
                z2 = true;
            } else {
                z = true;
            }
            i2++;
        }
        if (i != 0 && i == 0 && i == 0) {
            a[] aVarArr = new a[length];
            while (i < length) {
                aVarArr[i] = (a) kVarArr[i];
                i++;
            }
            return new h(aVarArr);
        } else if (i == 0 || i != 0 || i != 0) {
            return new l(kVarArr);
        } else {
            b[] bVarArr = new b[length];
            int i3 = 0;
            while (i3 < length) {
                bVarArr[i3] = (b) kVarArr[i3];
                i3++;
            }
            return new j(bVarArr);
        }
    }

    public static l a(Object... objArr) {
        int i = 1;
        int length = objArr.length;
        k[] kVarArr = new k[Math.max(length, GoogleScorer.CLIENT_PLUS)];
        if (length == 1) {
            kVarArr[0] = (c) k.c(BitmapDescriptorFactory.HUE_RED);
            kVarArr[1] = (c) k.a(1.0f, objArr[0]);
        } else {
            kVarArr[0] = (c) k.a((float)BitmapDescriptorFactory.HUE_RED, objArr[0]);
            while (i < length) {
                kVarArr[i] = (c) k.a(((float) i) / ((float) (length - 1)), objArr[i]);
                i++;
            }
        }
        return new l(kVarArr);
    }

    public Object a(float f) {
        if (this.a == 2) {
            if (this.d != null) {
                f = this.d.getInterpolation(f);
            }
            return this.f.a(f, this.b.b(), this.c.b());
        } else if (f <= 0.0f) {
            kVar = (k) this.e.get(1);
            d = kVar.d();
            if (d != null) {
                f = d.getInterpolation(f);
            }
            c = this.b.c();
            return this.f.a((f - c) / (kVar.c() - c), this.b.b(), kVar.b());
        } else if (f >= 1.0f) {
            kVar = (k) this.e.get(this.a - 2);
            d = this.c.d();
            if (d != null) {
                f = d.getInterpolation(f);
            }
            c = kVar.c();
            return this.f.a((f - c) / (this.c.c() - c), kVar.b(), this.c.b());
        } else {
            k kVar2 = this.b;
            int i = 1;
            while (i < this.a) {
                kVar = (k) this.e.get(i);
                if (f < kVar.c()) {
                    d = kVar.d();
                    if (d != null) {
                        f = d.getInterpolation(f);
                    }
                    c = kVar2.c();
                    return this.f.a((f - c) / (kVar.c() - c), kVar2.b(), kVar.b());
                } else {
                    i++;
                    kVar2 = kVar;
                }
            }
            return this.c.b();
        }
    }

    public void a(ae aeVar) {
        this.f = aeVar;
    }

    public l b() {
        ArrayList arrayList = this.e;
        int size = this.e.size();
        k[] kVarArr = new k[size];
        int i = 0;
        while (i < size) {
            kVarArr[i] = ((k) arrayList.get(i)).f();
            i++;
        }
        return new l(kVarArr);
    }

    public /* synthetic */ Object clone() {
        return b();
    }

    public String toString() {
        String str = " ";
        int i = 0;
        while (i < this.a) {
            String str2 = str + ((k) this.e.get(i)).b() + "  ";
            i++;
            str = str2;
        }
        return str;
    }
}