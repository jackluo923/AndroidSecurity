package com.a.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class d extends a {
    boolean b;
    private ArrayList c;
    private HashMap d;
    private ArrayList e;
    private ArrayList f;
    private boolean g;
    private a h;
    private boolean i;
    private long j;
    private af k;
    private long l;

    private class a implements com.a.a.a.a {
        private d b;

        a(d dVar) {
            this.b = dVar;
        }

        public void a_(a aVar) {
        }

        public void b(a aVar) {
            aVar.b(this);
            d.this.c.remove(aVar);
            ((e) this.b.d.get(aVar)).f = true;
            if (!d.this.b) {
                boolean z;
                ArrayList c = this.b.f;
                int size = c.size();
                int i = 0;
                while (i < size) {
                    if (!((e) c.get(i)).f) {
                        z = false;
                        break;
                    } else {
                        i++;
                    }
                }
                z = true;
                if (i != 0) {
                    if (d.this != null) {
                        ArrayList arrayList = (ArrayList) d.this.clone();
                        int size2 = arrayList.size();
                        i = 0;
                        while (i < size2) {
                            ((com.a.a.a.a) arrayList.get(i)).b(this.b);
                            i++;
                        }
                    }
                    this.b.i = false;
                }
            }
        }

        public void c(a aVar) {
            if (!d.this.b && d.this.c.size() == 0 && d.this != null) {
                int size = d.this.size();
                int i = 0;
                while (i < size) {
                    ((com.a.a.a.a) d.this.get(i)).c(this.b);
                    i++;
                }
            }
        }

        public void d(a aVar) {
        }
    }

    public class b {
        private e b;

        b(a aVar) {
            this.b = (e) d.this.d.get(aVar);
            if (this.b == null) {
                this.b = new e(aVar);
                d.this.d.put(aVar, this.b);
                d.this.e.add(this.b);
            }
        }

        public com.a.a.d.b a(long j) {
            a b = af.b(new float[]{0.0f, 1.0f});
            b.d(j);
            c(b);
            return this;
        }

        public com.a.a.d.b a(a aVar) {
            e eVar = (e) d.this.d.get(aVar);
            if (eVar == null) {
                eVar = new e(aVar);
                d.this.d.put(aVar, eVar);
                d.this.e.add(eVar);
            }
            eVar.a(new c(this.b, 0));
            return this;
        }

        public com.a.a.d.b b_(a aVar) {
            e eVar = (e) d.this.d.get(aVar);
            if (eVar == null) {
                eVar = new e(aVar);
                d.this.d.put(aVar, eVar);
                d.this.e.add(eVar);
            }
            eVar.a(new c(this.b, 1));
            return this;
        }

        public com.a.a.d.b c(a aVar) {
            e eVar = (e) d.this.d.get(aVar);
            if (eVar == null) {
                eVar = new e(aVar);
                d.this.d.put(aVar, eVar);
                d.this.e.add(eVar);
            }
            this.b.a(new c(eVar, 1));
            return this;
        }
    }

    private static class c {
        static final int a = 0;
        static final int b = 1;
        public e c;
        public int d;

        public c(e eVar, int i) {
            this.c = eVar;
            this.d = i;
        }
    }

    private static class d implements com.a.a.a.a {
        private d a;
        private e b;
        private int c;

        public d(d dVar, e eVar, int i) {
            this.a = dVar;
            this.b = eVar;
            this.c = i;
        }

        private void e(a aVar) {
            if (!this.a.b) {
                int size = this.b.c.size();
                int i = 0;
                while (i < size) {
                    c cVar = (c) this.b.c.get(i);
                    if (cVar.d == this.c && cVar.c.a == aVar) {
                        aVar.b(this);
                        break;
                    } else {
                        i++;
                    }
                }
                Object obj = null;
                this.b.c.remove(obj);
                if (this.b.c.size() == 0) {
                    this.b.a.a();
                    this.a.c.add(this.b.a);
                }
            }
        }

        public void a(a aVar) {
            if (this.c == 0) {
                e(aVar);
            }
        }

        public void b(a aVar) {
            if (this.c == 1) {
                e(aVar);
            }
        }

        public void c(a aVar) {
        }

        public void d_(a aVar) {
        }
    }

    private static class e implements Cloneable {
        public a a;
        public ArrayList b;
        public ArrayList c;
        public ArrayList d;
        public ArrayList e;
        public boolean f;

        public e(a aVar) {
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.f = false;
            this.a = aVar;
        }

        public e a() {
            try {
                e eVar = (e) super.clone();
                eVar.a = this.a.j();
                return eVar;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError();
            }
        }

        public void a(c cVar) {
            if (this.b == null) {
                this.b = new ArrayList();
                this.d = new ArrayList();
            }
            this.b.add(cVar);
            if (!this.d.contains(cVar.c)) {
                this.d.add(cVar.c);
            }
            e eVar = cVar.c;
            if (eVar.e == null) {
                eVar.e = new ArrayList();
            }
            eVar.e.add(this);
        }

        public /* synthetic */ Object clone() {
            return a();
        }
    }

    public d() {
        this.c = new ArrayList();
        this.d = new HashMap();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.g = true;
        this.h = null;
        this.b = false;
        this.i = false;
        this.j = 0;
        this.k = null;
        this.l = -1;
    }

    private void o() {
        int size;
        e eVar;
        int i;
        if (this.g) {
            this.f.clear();
            ArrayList arrayList = new ArrayList();
            size = this.e.size();
            int i2 = 0;
            while (i2 < size) {
                eVar = (e) this.e.get(i2);
                if (eVar.b == null || eVar.b.size() == 0) {
                    arrayList.add(eVar);
                }
                i2++;
            }
            Object arrayList2 = new ArrayList();
            while (arrayList.size() > 0) {
                int size2 = arrayList.size();
                i = 0;
                while (i < size2) {
                    eVar = (e) arrayList.get(i);
                    this.f.add(eVar);
                    if (eVar.e != null) {
                        int size3 = eVar.e.size();
                        size = 0;
                        while (size < size3) {
                            e eVar2 = (e) eVar.e.get(size);
                            eVar2.d.remove(eVar);
                            if (eVar2.d.size() == 0) {
                                arrayList2.add(eVar2);
                            }
                            size++;
                        }
                    }
                    i++;
                }
                arrayList.clear();
                arrayList.addAll(arrayList2);
                arrayList2.clear();
            }
            this.g = false;
            if (this.f.size() != this.e.size()) {
                throw new IllegalStateException("Circular dependencies cannot exist in AnimatorSet");
            }
        } else {
            int size4 = this.e.size();
            i = 0;
            while (i < size4) {
                eVar = (e) this.e.get(i);
                if (eVar.b != null && eVar.b.size() > 0) {
                    int size5 = eVar.b.size();
                    size = 0;
                    while (size < size5) {
                        c cVar = (c) eVar.b.get(size);
                        if (eVar.d == null) {
                            eVar.d = new ArrayList();
                        }
                        if (!eVar.d.contains(cVar.c)) {
                            eVar.d.add(cVar.c);
                        }
                        size++;
                    }
                }
                eVar.f = false;
                i++;
            }
        }
    }

    public b a(a aVar) {
        if (aVar == null) {
            return null;
        }
        this.g = true;
        return new b(aVar);
    }

    public void a() {
        ArrayList arrayList;
        int i = 0;
        this.b = false;
        this.i = true;
        o();
        int size = this.f.size();
        int i2 = 0;
        while (i2 < size) {
            e eVar = (e) this.f.get(i2);
            Collection h = eVar.a.h();
            if (h != null && h.size() > 0) {
                Iterator it = new ArrayList(h).iterator();
                while (it.hasNext()) {
                    com.a.a.a.a aVar = (com.a.a.a.a) it.next();
                    if (aVar instanceof d || aVar instanceof a) {
                        eVar.a.b(aVar);
                    }
                }
            }
            i2++;
        }
        ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        while (i3 < size) {
            eVar = (e) this.f.get(i3);
            if (this.h == null) {
                this.h = new a(this);
            }
            if (eVar.b == null || eVar.b.size() == 0) {
                arrayList2.add(eVar);
            } else {
                int size2 = eVar.b.size();
                i2 = 0;
                while (i2 < size2) {
                    c cVar = (c) eVar.b.get(i2);
                    cVar.c.a.a(new d(this, eVar, cVar.d));
                    i2++;
                }
                eVar.c = (ArrayList) eVar.b.clone();
            }
            eVar.a.a(this.h);
            i3++;
        }
        if (this.j <= 0) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                eVar = (e) it2.next();
                eVar.a.a();
                this.c.add(eVar.a);
            }
        } else {
            this.k = af.b(new float[]{0.0f, 1.0f});
            this.k.d(this.j);
            this.k.a(new e(this, arrayList2));
            this.k.a();
        }
        if (this.a != null) {
            arrayList = (ArrayList) this.a.clone();
            i3 = arrayList.size();
            i2 = 0;
            while (i2 < i3) {
                ((com.a.a.a.a) arrayList.get(i2)).a(this);
                i2++;
            }
        }
        if (this.e.size() == 0 && this.j == 0) {
            this.i = false;
            if (this.a != null) {
                arrayList = (ArrayList) this.a.clone();
                i2 = arrayList.size();
                while (i < i2) {
                    ((com.a.a.a.a) arrayList.get(i)).b(this);
                    i++;
                }
            }
        }
    }

    public void a(long j) {
        this.j = j;
    }

    public void a(Interpolator interpolator) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a.a(interpolator);
        }
    }

    public void a(Object obj) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            a aVar = ((e) it.next()).a;
            if (aVar instanceof d) {
                ((d) aVar).a(obj);
            } else if (aVar instanceof m) {
                ((m) aVar).a(obj);
            }
        }
    }

    public void a(Collection collection) {
        if (collection != null && collection.size() > 0) {
            this.g = true;
            b bVar = null;
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                b a;
                a aVar = (a) it.next();
                if (bVar == null) {
                    a = a(aVar);
                } else {
                    bVar.a(aVar);
                    a = bVar;
                }
                bVar = a;
            }
        }
    }

    public void a(List list) {
        if (list != null && list.size() > 0) {
            this.g = true;
            if (list.size() == 1) {
                a((a) list.get(0));
            } else {
                int i = 0;
                while (i < list.size() - 1) {
                    a((a) list.get(i)).b((a) list.get(i + 1));
                    i++;
                }
            }
        }
    }

    public void a(a... aVarArr) {
        int i = 1;
        if (aVarArr != null) {
            this.g = true;
            b a = a(aVarArr[0]);
            while (i < aVarArr.length) {
                a.a(aVarArr[i]);
                i++;
            }
        }
    }

    public /* synthetic */ a b(long j) {
        return c(j);
    }

    public void b() {
        this.b = true;
        if (g()) {
            Iterator it;
            ArrayList arrayList;
            if (this.a != null) {
                ArrayList arrayList2 = (ArrayList) this.a.clone();
                it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((com.a.a.a.a) it.next()).c(this);
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            if (this.k != null && this.k.f()) {
                this.k.b();
            } else if (this.f.size() > 0) {
                it = this.f.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).a.b();
                }
            }
            if (arrayList != null) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((com.a.a.a.a) it2.next()).b(this);
                }
            }
            this.i = false;
        }
    }

    public void b(a... aVarArr) {
        int i = 0;
        if (aVarArr != null) {
            this.g = true;
            if (aVarArr.length == 1) {
                a(aVarArr[0]);
            } else {
                while (i < aVarArr.length - 1) {
                    a(aVarArr[i]).b(aVarArr[i + 1]);
                    i++;
                }
            }
        }
    }

    public d c(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("duration must be a value of zero or greater");
        }
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a.b(j);
        }
        this.l = j;
        return this;
    }

    public void c() {
        this.b = true;
        if (g()) {
            Iterator it;
            if (this.f.size() != this.e.size()) {
                o();
                it = this.f.iterator();
                while (it.hasNext()) {
                    e eVar = (e) it.next();
                    if (this.h == null) {
                        this.h = new a(this);
                    }
                    eVar.a.a(this.h);
                }
            }
            if (this.k != null) {
                this.k.b();
            }
            if (this.f.size() > 0) {
                it = this.f.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).a.c();
                }
            }
            if (this.a != null) {
                it = ((ArrayList) this.a.clone()).iterator();
                while (it.hasNext()) {
                    ((com.a.a.a.a) it.next()).b(this);
                }
            }
            this.i = false;
        }
    }

    public /* synthetic */ Object clone() {
        return n();
    }

    public long d_() {
        return this.j;
    }

    public long e() {
        return this.l;
    }

    public boolean f() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            if (((e) it.next()).a.f()) {
                return true;
            }
        }
        return false;
    }

    public boolean g() {
        return this.i;
    }

    public /* synthetic */ a j() {
        return n();
    }

    public void k() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a.k();
        }
    }

    public void l() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a.l();
        }
    }

    public ArrayList m() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            arrayList.add(((e) it.next()).a);
        }
        return arrayList;
    }

    public d n() {
        d dVar = (d) super.j();
        dVar.g = true;
        dVar.b = false;
        dVar.i = false;
        dVar.c = new ArrayList();
        dVar.d = new HashMap();
        dVar.e = new ArrayList();
        dVar.f = new ArrayList();
        HashMap hashMap = new HashMap();
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            e a = eVar.a();
            hashMap.put(eVar, a);
            dVar.e.add(a);
            dVar.d.put(a.a, a);
            a.b = null;
            a.c = null;
            a.e = null;
            a.d = null;
            ArrayList h = a.a.h();
            if (h != null) {
                Iterator it2 = h.iterator();
                ArrayList arrayList = null;
                while (it2.hasNext()) {
                    com.a.a.a.a aVar = (com.a.a.a.a) it2.next();
                    if (aVar instanceof a) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(aVar);
                    }
                }
                if (arrayList != null) {
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        h.remove((com.a.a.a.a) it3.next());
                    }
                }
            }
        }
        it = this.e.iterator();
        while (it.hasNext()) {
            eVar = (e) it.next();
            a = (e) hashMap.get(eVar);
            if (eVar.b != null) {
                Iterator it4 = eVar.b.iterator();
                while (it4.hasNext()) {
                    c cVar = (c) it4.next();
                    a.a(new c((e) hashMap.get(cVar.c), cVar.d));
                }
            }
        }
        return dVar;
    }
}