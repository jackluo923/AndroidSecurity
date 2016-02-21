package com.a.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;

public abstract class a implements Cloneable {
    ArrayList a;

    public static interface a {
        void a_(a aVar);

        void b(a aVar);

        void c(a aVar);

        void d(a aVar);
    }

    public a() {
        this.a = null;
    }

    public void a_() {
    }

    public abstract void a_(long j);

    public abstract void a_(Interpolator interpolator);

    public void a_(a aVar) {
        if (this.a == null) {
            this.a = new ArrayList();
        }
        this.a.add(aVar);
    }

    public void a_(Object obj) {
    }

    public abstract a b(long j);

    public void b() {
    }

    public void b(a aVar) {
        if (this.a != null) {
            this.a.remove(aVar);
            if (this.a.size() == 0) {
                this.a = null;
            }
        }
    }

    public void c() {
    }

    public /* synthetic */ Object clone() {
        return j();
    }

    public abstract long d();

    public abstract long e();

    public abstract boolean f();

    public boolean g() {
        return f();
    }

    public ArrayList h() {
        return this.a;
    }

    public void i() {
        if (this.a != null) {
            this.a.clear();
            this.a = null;
        }
    }

    public a j() {
        try {
            a aVar = (a) super.clone();
            if (this.a != null) {
                ArrayList arrayList = this.a;
                aVar.a = new ArrayList();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    aVar.a.add(arrayList.get(i));
                    i++;
                }
            }
            return aVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public void k() {
    }

    public void l() {
    }
}