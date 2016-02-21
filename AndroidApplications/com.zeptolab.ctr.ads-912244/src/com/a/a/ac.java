package com.a.a;

import android.util.Log;
import com.a.b.d;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ac implements Cloneable {
    private static final ae i;
    private static final ae j;
    private static Class[] k;
    private static Class[] l;
    private static Class[] m;
    private static final HashMap n;
    private static final HashMap o;
    String a;
    protected d b;
    Method c;
    Class d;
    l e;
    final ReentrantReadWriteLock f;
    final Object[] g;
    private Method h;
    private ae p;
    private Object q;

    static class a extends ac {
        h h;
        float i;
        private com.a.b.a j;

        public a(d dVar, h hVar) {
            super((d)null);
            this.d = Float.TYPE;
            this.e = hVar;
            this.h = (h) this.e;
            if (dVar instanceof com.a.b.a) {
                this.j = (com.a.b.a) this.b;
            }
        }

        public a(d dVar, float... fArr) {
            super((d)null);
            a(fArr);
            if (dVar instanceof com.a.b.a) {
                this.j = (com.a.b.a) this.b;
            }
        }

        public a(String str, h hVar) {
            super((String)null);
            this.d = Float.TYPE;
            this.e = hVar;
            this.h = (h) this.e;
        }

        public a(String str, float... fArr) {
            super((String)null);
            a(fArr);
        }

        public /* synthetic */ ac a_() {
            return e();
        }

        void a_(float f) {
            this.i = this.h.b(f);
        }

        void a_(Class cls) {
            if (this.b == null) {
                super.a(cls);
            }
        }

        public void a_(float... fArr) {
            super.a(fArr);
            this.h = (h) this.e;
        }

        public /* synthetic */ Object clone() {
            return e();
        }

        Object d() {
            return Float.valueOf(this.i);
        }

        void d(Object obj) {
            if (this.j != null) {
                this.j.a(obj, this.i);
            } else if (this.b != null) {
                this.b.a(obj, Float.valueOf(this.i));
            } else if (this.c != null) {
                try {
                    this.g[0] = Float.valueOf(this.i);
                    this.c.invoke(obj, this.g);
                } catch (InvocationTargetException e) {
                    Log.e("PropertyValuesHolder", e.toString());
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                }
            }
        }

        public a e() {
            a aVar = (a) super.a();
            aVar.h = (h) aVar.e;
            return aVar;
        }
    }

    static class b extends ac {
        j h;
        int i;
        private com.a.b.b j;

        public b(d dVar, j jVar) {
            super((d)null);
            this.d = Integer.TYPE;
            this.e = jVar;
            this.h = (j) this.e;
            if (dVar instanceof com.a.b.b) {
                this.j = (com.a.b.b) this.b;
            }
        }

        public b(d dVar, int... iArr) {
            super((d)null);
            a(iArr);
            if (dVar instanceof com.a.b.b) {
                this.j = (com.a.b.b) this.b;
            }
        }

        public b(String str, j jVar) {
            super((String)null);
            this.d = Integer.TYPE;
            this.e = jVar;
            this.h = (j) this.e;
        }

        public b(String str, int... iArr) {
            super((String)null);
            a(iArr);
        }

        public /* synthetic */ ac a() {
            return e();
        }

        void a(float f) {
            this.i = this.h.b(f);
        }

        void a(Class cls) {
            if (this.b == null) {
                super.a(cls);
            }
        }

        public void a(int... iArr) {
            super.a(iArr);
            this.h = (j) this.e;
        }

        public /* synthetic */ Object clone() {
            return e();
        }

        Object d() {
            return Integer.valueOf(this.i);
        }

        void d(Object obj) {
            if (this.j != null) {
                this.j.a(obj, this.i);
            } else if (this.b != null) {
                this.b.a(obj, Integer.valueOf(this.i));
            } else if (this.c != null) {
                try {
                    this.g[0] = Integer.valueOf(this.i);
                    this.c.invoke(obj, this.g);
                } catch (InvocationTargetException e) {
                    Log.e("PropertyValuesHolder", e.toString());
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                }
            }
        }

        public b e() {
            b bVar = (b) super.a();
            bVar.h = (j) bVar.e;
            return bVar;
        }
    }

    static {
        i = new i();
        j = new g();
        k = new Class[]{Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class};
        l = new Class[]{Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class};
        m = new Class[]{Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};
        n = new HashMap();
        o = new HashMap();
    }

    private ac(d dVar) {
        this.c = null;
        this.h = null;
        this.e = null;
        this.f = new ReentrantReadWriteLock();
        this.g = new Object[1];
        this.b = dVar;
        if (dVar != null) {
            this.a = dVar.b();
        }
    }

    private ac(String str) {
        this.c = null;
        this.h = null;
        this.e = null;
        this.f = new ReentrantReadWriteLock();
        this.g = new Object[1];
        this.a = str;
    }

    public static ac a(d dVar, ae aeVar, Object... objArr) {
        ac acVar = new ac(dVar);
        acVar.a(objArr);
        acVar.a(aeVar);
        return acVar;
    }

    public static ac a(d dVar, float... fArr) {
        return new a(dVar, fArr);
    }

    public static ac a(d dVar, int... iArr) {
        return new b(dVar, iArr);
    }

    public static ac a(d dVar, k... kVarArr) {
        l a = l.a(kVarArr);
        if (a instanceof j) {
            return new b(dVar, (j) a);
        }
        if (a instanceof h) {
            return new a(dVar, (h) a);
        }
        ac acVar = new ac(dVar);
        acVar.e = a;
        acVar.d = kVarArr[0].e();
        return acVar;
    }

    public static ac a(String str, ae aeVar, Object... objArr) {
        ac acVar = new ac(str);
        acVar.a(objArr);
        acVar.a(aeVar);
        return acVar;
    }

    public static ac a(String str, float... fArr) {
        return new a(str, fArr);
    }

    public static ac a(String str, int... iArr) {
        return new b(str, iArr);
    }

    public static ac a(String str, k... kVarArr) {
        l a = l.a(kVarArr);
        if (a instanceof j) {
            return new b(str, (j) a);
        }
        if (a instanceof h) {
            return new a(str, (h) a);
        }
        ac acVar = new ac(str);
        acVar.e = a;
        acVar.d = kVarArr[0].e();
        return acVar;
    }

    static String a(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        char toUpperCase = Character.toUpperCase(str2.charAt(0));
        return str + toUpperCase + str2.substring(1);
    }

    private Method a(Class cls, String str, Class cls2) {
        Method declaredMethod;
        String a = a(str, this.a);
        if (cls2 == null) {
            try {
                return cls.getMethod(a, null);
            } catch (NoSuchMethodException e) {
                NoSuchMethodException noSuchMethodException = e;
                try {
                    declaredMethod = cls.getDeclaredMethod(a, null);
                    try {
                        declaredMethod.setAccessible(true);
                        return declaredMethod;
                    } catch (NoSuchMethodException e2) {
                        Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.a + ": " + noSuchMethodException);
                        return declaredMethod;
                    }
                } catch (NoSuchMethodException e3) {
                    declaredMethod = null;
                    Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.a + ": " + noSuchMethodException);
                    return declaredMethod;
                }
            }
        }
        ?[] Arr;
        Class[] clsArr = new Class[1];
        if (this.d.equals(Float.class)) {
            Arr = k;
        } else if (this.d.equals(Integer.class)) {
            Arr = l;
        } else if (this.d.equals(Double.class)) {
            Arr = m;
        } else {
            Arr = new ?[]{this.d};
        }
        int length = Arr.length;
        int i = 0;
        while (i < length) {
            Class cls3 = Arr[i];
            clsArr[0] = cls3;
            try {
                method = cls.getMethod(a, clsArr);
                this.d = cls3;
                return method;
            } catch (NoSuchMethodException e4) {
                try {
                    Method method2;
                    method2 = cls.getDeclaredMethod(a, clsArr);
                    method2.setAccessible(true);
                    this.d = cls3;
                    return method2;
                } catch (NoSuchMethodException e5) {
                    i++;
                }
            }
        }
        Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.a + " with value type " + this.d);
        return null;
    }

    private Method a(Class cls, HashMap hashMap, String str, Class cls2) {
        Method method = null;
        this.f.writeLock().lock();
        HashMap hashMap2 = (HashMap) hashMap.get(cls);
        if (hashMap2 != null) {
            method = (Method) hashMap2.get(this.a);
        }
        if (method == null) {
            method = a(cls, str, cls2);
            if (hashMap2 == null) {
                hashMap2 = new HashMap();
                hashMap.put(cls, hashMap2);
            }
            hashMap2.put(this.a, method);
        }
        Method method2 = method;
        this.f.writeLock().unlock();
        return method2;
    }

    private void a(Object obj, k kVar) {
        if (this.b != null) {
            kVar.a(this.b.a(obj));
        }
        try {
            if (this.h == null) {
                b(obj.getClass());
            }
            kVar.a(this.h.invoke(obj, new Object[0]));
        } catch (InvocationTargetException e) {
            Log.e("PropertyValuesHolder", e.toString());
        } catch (IllegalAccessException e2) {
            Log.e("PropertyValuesHolder", e2.toString());
        }
    }

    private void b(Class cls) {
        this.h = a(cls, o, "get", null);
    }

    public ac a() {
        try {
            ac acVar = (ac) super.clone();
            acVar.a = this.a;
            acVar.b = this.b;
            acVar.e = this.e.b();
            acVar.p = this.p;
            return acVar;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    void a(float f) {
        this.q = this.e.a(f);
    }

    public void a(ae aeVar) {
        this.p = aeVar;
        this.e.a(aeVar);
    }

    public void a(d dVar) {
        this.b = dVar;
    }

    void a(Class cls) {
        this.c = a(cls, n, "set", this.d);
    }

    void a(Object obj) {
        k kVar;
        if (this.b != null) {
            try {
                this.b.a(obj);
                Iterator it = this.e.e.iterator();
                while (it.hasNext()) {
                    kVar = (k) it.next();
                    if (!kVar.a()) {
                        kVar.a(this.b.a(obj));
                    }
                }
                return;
            } catch (ClassCastException e) {
                Log.e("PropertyValuesHolder", "No such property (" + this.b.b() + ") on target object " + obj + ". Trying reflection instead");
                this.b = null;
            }
        }
        Class cls = obj.getClass();
        if (this.c == null) {
            a(cls);
        }
        Iterator it2 = this.e.e.iterator();
        while (it2.hasNext()) {
            kVar = (k) it2.next();
            if (!kVar.a()) {
                if (this.h == null) {
                    b(cls);
                }
                try {
                    kVar.a(this.h.invoke(obj, new Object[0]));
                } catch (InvocationTargetException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                } catch (IllegalAccessException e3) {
                    Log.e("PropertyValuesHolder", e3.toString());
                }
            }
        }
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(float... fArr) {
        this.d = Float.TYPE;
        this.e = l.a(fArr);
    }

    public void a(int... iArr) {
        this.d = Integer.TYPE;
        this.e = l.a(iArr);
    }

    public void a(k... kVarArr) {
        int i = 0;
        int length = kVarArr.length;
        k[] kVarArr2 = new k[Math.max(length, GoogleScorer.CLIENT_PLUS)];
        this.d = kVarArr[0].e();
        while (i < length) {
            kVarArr2[i] = kVarArr[i];
            i++;
        }
        this.e = new l(kVarArr2);
    }

    public void a(Object... objArr) {
        this.d = objArr[0].getClass();
        this.e = l.a(objArr);
    }

    void b() {
        if (this.p == null) {
            ae aeVar;
            if (this.d == Integer.class) {
                aeVar = i;
            } else if (this.d == Float.class) {
                aeVar = j;
            } else {
                aeVar = null;
            }
            this.p = aeVar;
        }
        if (this.p != null) {
            this.e.a(this.p);
        }
    }

    void b(Object obj) {
        a(obj, (k) this.e.e.get(0));
    }

    public String c() {
        return this.a;
    }

    void c(Object obj) {
        a(obj, (k) this.e.e.get(this.e.e.size() - 1));
    }

    public /* synthetic */ Object clone() {
        return a();
    }

    Object d() {
        return this.q;
    }

    void d(Object obj) {
        if (this.b != null) {
            this.b.a(obj, d());
        }
        if (this.c != null) {
            try {
                this.g[0] = d();
                this.c.invoke(obj, this.g);
            } catch (InvocationTargetException e) {
                Log.e("PropertyValuesHolder", e.toString());
            } catch (IllegalAccessException e2) {
                Log.e("PropertyValuesHolder", e2.toString());
            }
        }
    }

    public String toString() {
        return this.a + ": " + this.e.toString();
    }
}