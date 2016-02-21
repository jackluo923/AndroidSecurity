package android.support.v4.c;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// compiled from: ProGuard
abstract class g {
    i b;
    j c;
    l d;

    g() {
    }

    public static boolean a(Map map, Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(Set set, Set set2) {
        boolean z = 1;
        if (set == set2) {
            return true;
        }
        if (!(set2 instanceof Set)) {
            return false;
        }
        set2 = set2;
        try {
            if (!(set.size() == set2.size() && set.containsAll(set2))) {
                z = false;
            }
            return z;
        } catch (NullPointerException e) {
            return false;
        } catch (ClassCastException e2) {
            return false;
        }
    }

    public static boolean b(Map map, Collection collection) {
        int size = map.size();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    public static boolean c(Map map, Collection collection) {
        int size = map.size();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    protected abstract int a();

    protected abstract int a(Object obj);

    protected abstract Object a(int i, int i2);

    protected abstract Object a(int i, Object obj);

    protected abstract void a(int i);

    protected abstract void a(Object obj, Object obj2);

    public Object[] a(Object[] objArr, int i) {
        Object[] objArr2;
        int a = a();
        objArr2 = objArr.length < a ? (Object[]) Array.newInstance(objArr.getClass().getComponentType(), a) : objArr;
        int i2 = 0;
        while (i2 < a) {
            objArr2[i2] = a(i2, i);
            i2++;
        }
        if (objArr2.length > a) {
            objArr2[a] = null;
        }
        return objArr2;
    }

    protected abstract int b(Object obj);

    protected abstract Map b();

    public Object[] b(int i) {
        int a = a();
        Object[] objArr = new Object[a];
        int i2 = 0;
        while (i2 < a) {
            objArr[i2] = a(i2, i);
            i2++;
        }
        return objArr;
    }

    protected abstract void c();

    public Set d() {
        if (this.b == null) {
            this.b = new i(this);
        }
        return this.b;
    }

    public Set e() {
        if (this.c == null) {
            this.c = new j(this);
        }
        return this.c;
    }

    public Collection f() {
        if (this.d == null) {
            this.d = new l(this);
        }
        return this.d;
    }
}