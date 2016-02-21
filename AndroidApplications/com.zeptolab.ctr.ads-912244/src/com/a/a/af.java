package com.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class af extends a {
    private static long I = 0;
    static final int b = 0;
    static final int c = 1;
    static final int d = 0;
    static final int e = 1;
    static final int f = 2;
    public static final int m = 1;
    public static final int n = 2;
    public static final int o = -1;
    private static final long p = 10;
    private static ThreadLocal q;
    private static final ThreadLocal r;
    private static final ThreadLocal s;
    private static final ThreadLocal t;
    private static final ThreadLocal u;
    private static final ThreadLocal v;
    private static final Interpolator w;
    private static final ae x;
    private static final ae y;
    private int A;
    private float B;
    private boolean C;
    private long D;
    private boolean E;
    private boolean F;
    private long G;
    private long H;
    private int J;
    private int K;
    private Interpolator L;
    private ArrayList M;
    long g;
    long h;
    int i;
    boolean j;
    ac[] k;
    HashMap l;
    private boolean z;

    private static class a extends Handler {
        private a() {
        }

        public void handleMessage(Message message) {
            ArrayList arrayList;
            ArrayList arrayList2;
            int i;
            af afVar;
            ArrayList arrayList3 = (ArrayList) r.get();
            ArrayList arrayList4 = (ArrayList) t.get();
            boolean z;
            switch (message.what) {
                case d:
                    arrayList = (ArrayList) s.get();
                    if (arrayList3.size() > 0 || arrayList4.size() > 0) {
                        int i2 = 0;
                    } else {
                        z = true;
                    }
                    while (arrayList.size() > 0) {
                        arrayList2 = (ArrayList) arrayList.clone();
                        arrayList.clear();
                        int size = arrayList2.size();
                        i = 0;
                        while (i < size) {
                            afVar = (af) arrayList2.get(i);
                            if (afVar.H == 0) {
                                afVar.o();
                            } else {
                                arrayList4.add(afVar);
                            }
                            i++;
                        }
                    }
                    break;
                case m:
                    z = true;
                    break;
                default:
                    return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            arrayList = (ArrayList) v.get();
            arrayList2 = (ArrayList) u.get();
            int size2 = arrayList4.size();
            i = 0;
            while (i < size2) {
                afVar = (af) arrayList4.get(i);
                if (afVar.g(currentAnimationTimeMillis)) {
                    arrayList.add(afVar);
                }
                i++;
            }
            size2 = arrayList.size();
            if (size2 > 0) {
                i = 0;
                while (i < size2) {
                    afVar = (af) arrayList.get(i);
                    afVar.o();
                    afVar.E = true;
                    arrayList4.remove(afVar);
                    i++;
                }
                arrayList.clear();
            }
            i = arrayList3.size();
            int i3 = d;
            while (i3 < i) {
                int i4;
                af afVar2 = (af) arrayList3.get(i3);
                if (afVar2.c(currentAnimationTimeMillis)) {
                    arrayList2.add(afVar2);
                }
                if (arrayList3.size() == i) {
                    i4 = i3 + 1;
                    i3 = i;
                } else {
                    i--;
                    arrayList2.remove(afVar2);
                    i4 = i3;
                    i3 = i;
                }
                i = i3;
                i3 = i4;
            }
            if (arrayList2.size() > 0) {
                i3 = 0;
                while (i3 < arrayList2.size()) {
                    ((af) arrayList2.get(i3)).m();
                    i3++;
                }
                arrayList2.clear();
            }
            if (i2 == 0) {
                return;
            }
            if (!arrayList3.isEmpty() || !arrayList4.isEmpty()) {
                sendEmptyMessageDelayed(m, Math.max(0, I - AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis));
            }
        }
    }

    public static interface b {
        void a(af afVar);
    }

    static {
        q = new ThreadLocal();
        r = new ag();
        s = new ah();
        t = new ai();
        u = new aj();
        v = new ak();
        w = new AccelerateDecelerateInterpolator();
        x = new i();
        y = new g();
        I = 10;
    }

    public af() {
        this.h = -1;
        this.z = false;
        this.A = 0;
        this.B = 0.0f;
        this.C = false;
        this.i = 0;
        this.E = false;
        this.F = false;
        this.j = false;
        this.G = 300;
        this.H = 0;
        this.J = 0;
        this.K = 1;
        this.L = w;
        this.M = null;
    }

    public static int B() {
        return ((ArrayList) r.get()).size();
    }

    public static void C() {
        ((ArrayList) r.get()).clear();
        ((ArrayList) s.get()).clear();
        ((ArrayList) t.get()).clear();
    }

    public static af a(ae aeVar, Object... objArr) {
        af afVar = new af();
        afVar.a(objArr);
        afVar.a(aeVar);
        return afVar;
    }

    public static af a(ac... acVarArr) {
        af afVar = new af();
        afVar.b(acVarArr);
        return afVar;
    }

    private void a(boolean z) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.z = z;
        this.A = 0;
        this.i = 0;
        this.F = true;
        this.C = false;
        ((ArrayList) s.get()).add(this);
        if (this.H == 0) {
            e(s());
            this.i = 0;
            this.E = true;
            if (this.a != null) {
                ArrayList arrayList = (ArrayList) this.a.clone();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    ((com.a.a.a.a) arrayList.get(i)).a(this);
                    i++;
                }
            }
        }
        a aVar = (a) q.get();
        if (aVar == null) {
            aVar = new a();
            q.set(aVar);
        }
        aVar.sendEmptyMessage(d);
    }

    public static af b(float... fArr) {
        af afVar = new af();
        afVar.a(fArr);
        return afVar;
    }

    public static af b(int... iArr) {
        af afVar = new af();
        afVar.a(iArr);
        return afVar;
    }

    public static void f(long j) {
        I = j;
    }

    private boolean g(long j) {
        if (this.C) {
            long j2 = j - this.D;
            if (j2 > this.H) {
                this.g = j - j2 - this.H;
                this.i = 1;
                return true;
            }
        } else {
            this.C = true;
            this.D = j;
        }
        return false;
    }

    private void m() {
        ((ArrayList) r.get()).remove(this);
        ((ArrayList) s.get()).remove(this);
        ((ArrayList) t.get()).remove(this);
        this.i = 0;
        if (this.E && this.a != null) {
            ArrayList arrayList = (ArrayList) this.a.clone();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                ((com.a.a.a.a) arrayList.get(i)).b(this);
                i++;
            }
        }
        this.E = false;
        this.F = false;
    }

    private void o() {
        n();
        ((ArrayList) r.get()).add(this);
        if (this.H > 0 && this.a != null) {
            ArrayList arrayList = (ArrayList) this.a.clone();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                ((com.a.a.a.a) arrayList.get(i)).a(this);
                i++;
            }
        }
    }

    public static long t() {
        return I;
    }

    public float A() {
        return this.B;
    }

    public void a() {
        a(false);
    }

    void a(float f) {
        float interpolation = this.L.getInterpolation(f);
        this.B = interpolation;
        int length = this.k.length;
        int i = 0;
        while (i < length) {
            this.k[i].a(interpolation);
            i++;
        }
        if (this.M != null) {
            int size = this.M.size();
            i = 0;
            while (i < size) {
                ((b) this.M.get(i)).a(this);
                i++;
            }
        }
    }

    public void a(int i) {
        this.J = i;
    }

    public void a(long j) {
        this.H = j;
    }

    public void a(Interpolator interpolator) {
        if (interpolator != null) {
            this.L = interpolator;
        } else {
            this.L = new LinearInterpolator();
        }
    }

    public void a(ae aeVar) {
        if (aeVar != null && this.k != null && this.k.length > 0) {
            this.k[0].a(aeVar);
        }
    }

    public void a(b bVar) {
        if (this.M == null) {
            this.M = new ArrayList();
        }
        this.M.add(bVar);
    }

    public void a(float... fArr) {
        if (fArr != null && fArr.length != 0) {
            if (this.k == null || this.k.length == 0) {
                b(new ac[]{ac.a(AdTrackerConstants.BLANK, fArr)});
            } else {
                this.k[0].a(fArr);
            }
            this.j = false;
        }
    }

    public void a(int... iArr) {
        if (iArr != null && iArr.length != 0) {
            if (this.k == null || this.k.length == 0) {
                b(new ac[]{ac.a(AdTrackerConstants.BLANK, iArr)});
            } else {
                this.k[0].a(iArr);
            }
            this.j = false;
        }
    }

    public void a(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            if (this.k == null || this.k.length == 0) {
                b(new ac[]{ac.a(AdTrackerConstants.BLANK, (ae) 0, objArr)});
            } else {
                this.k[0].a(objArr);
            }
            this.j = false;
        }
    }

    public /* synthetic */ a b(long j) {
        return d(j);
    }

    public Object b(String str) {
        ac acVar = (ac) this.l.get(str);
        return acVar != null ? acVar.d() : null;
    }

    public void b() {
        if (this.i != 0 || ((ArrayList) s.get()).contains(this) || ((ArrayList) t.get()).contains(this)) {
            if (this.E && this.a != null) {
                Iterator it = ((ArrayList) this.a.clone()).iterator();
                while (it.hasNext()) {
                    ((com.a.a.a.a) it.next()).c(this);
                }
            }
            m();
        }
    }

    public void b(int i) {
        this.K = i;
    }

    public void b(b bVar) {
        if (this.M != null) {
            this.M.remove(bVar);
            if (this.M.size() == 0) {
                this.M = null;
            }
        }
    }

    public void b(ac... acVarArr) {
        int length = acVarArr.length;
        this.k = acVarArr;
        this.l = new HashMap(length);
        int i = 0;
        while (i < length) {
            ac acVar = acVarArr[i];
            this.l.put(acVar.c(), acVar);
            i++;
        }
        this.j = false;
    }

    public void c() {
        if (!((ArrayList) r.get()).contains(this) && !((ArrayList) s.get()).contains(this)) {
            this.C = false;
            o();
        } else if (!this.j) {
            n();
        }
        if (this.J <= 0 || (this.J & 1) != 1) {
            a(1.0f);
        } else {
            a((float)BitmapDescriptorFactory.HUE_RED);
        }
        m();
    }

    boolean c(long j) {
        boolean z = false;
        if (this.i == 0) {
            this.i = 1;
            if (this.h < 0) {
                this.g = j;
            } else {
                this.g = j - this.h;
                this.h = -1;
            }
        }
        switch (this.i) {
            case m:
            case n:
                float f;
                float f2;
                f = this.G > 0 ? ((float) (j - this.g)) / ((float) this.G) : 1.0f;
                if (f < 1.0f) {
                    f2 = f;
                } else if (this.A < this.J || this.J == -1) {
                    if (this.a != null) {
                        int size = this.a.size();
                        int i = 0;
                        while (i < size) {
                            ((com.a.a.a.a) this.a.get(i)).d(this);
                            i++;
                        }
                    }
                    if (this.K == 2) {
                        this.z = !this.z;
                    }
                    this.A += (int) f;
                    f2 = f % 1.0f;
                    this.g += this.G;
                } else {
                    f2 = Math.min(f, 1.0f);
                    z = true;
                }
                if (this.z) {
                    f2 = 1.0f - f2;
                }
                a(f2);
                break;
        }
        return z;
    }

    public /* synthetic */ Object clone() {
        return q();
    }

    public long d() {
        return this.H;
    }

    public af d(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
        }
        this.G = j;
        return this;
    }

    public long e() {
        return this.G;
    }

    public void e(long j) {
        n();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.i != 1) {
            this.h = j;
            this.i = 2;
        }
        this.g = currentAnimationTimeMillis - j;
        c(currentAnimationTimeMillis);
    }

    public boolean f() {
        return this.i == 1 || this.E;
    }

    public boolean g() {
        return this.F;
    }

    public /* synthetic */ a j() {
        return q();
    }

    void n() {
        if (!this.j) {
            int length = this.k.length;
            int i = d;
            while (i < length) {
                this.k[i].b();
                i++;
            }
            this.j = true;
        }
    }

    public af q() {
        int i = d;
        af afVar = (af) super.j();
        if (this.M != null) {
            ArrayList arrayList = this.M;
            afVar.M = new ArrayList();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                afVar.M.add(arrayList.get(i2));
                i2++;
            }
        }
        afVar.h = -1;
        afVar.z = false;
        afVar.A = 0;
        afVar.j = false;
        afVar.i = 0;
        afVar.C = false;
        ac[] acVarArr = this.k;
        if (acVarArr != null) {
            int length = acVarArr.length;
            afVar.k = new ac[length];
            afVar.l = new HashMap(length);
            while (i < length) {
                ac a = acVarArr[i].a();
                afVar.k[i] = a;
                afVar.l.put(a.c(), a);
                i++;
            }
        }
        return afVar;
    }

    public ac[] r() {
        return this.k;
    }

    public long s() {
        return (!this.j || this.i == 0) ? 0 : AnimationUtils.currentAnimationTimeMillis() - this.g;
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.k != null) {
            int i = d;
            while (i < this.k.length) {
                str = str + "\n    " + this.k[i].toString();
                i++;
            }
        }
        return str;
    }

    public Object u() {
        return (this.k == null || this.k.length <= 0) ? null : this.k[0].d();
    }

    public int v() {
        return this.J;
    }

    public int w() {
        return this.K;
    }

    public void x() {
        if (this.M != null) {
            this.M.clear();
            this.M = null;
        }
    }

    public Interpolator y() {
        return this.L;
    }

    public void z() {
        this.z = !this.z;
        if (this.i == 1) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.g = currentAnimationTimeMillis - this.G - currentAnimationTimeMillis - this.g;
        } else {
            a(true);
        }
    }
}