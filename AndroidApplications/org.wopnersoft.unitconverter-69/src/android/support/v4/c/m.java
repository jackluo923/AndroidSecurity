package android.support.v4.c;

import com.actionbarsherlock.view.MenuItem;
import java.util.Map;

// compiled from: ProGuard
public class m {
    static Object[] b;
    static int c;
    static Object[] d;
    static int e;
    int[] f;
    Object[] g;
    int h;

    public m() {
        this.f = c.a;
        this.g = c.c;
        this.h = 0;
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        int i2;
        if (iArr.length == 8) {
            synchronized (a.class) {
                if (e < 10) {
                    objArr[0] = d;
                    objArr[1] = iArr;
                    i2 = i << 1 - 1;
                    while (i2 >= 2) {
                        objArr[i2] = null;
                        i2--;
                    }
                    d = objArr;
                    e++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (a.class) {
                if (c < 10) {
                    objArr[0] = b;
                    objArr[1] = iArr;
                    i2 = i << 1 - 1;
                    while (i2 >= 2) {
                        objArr[i2] = null;
                        i2--;
                    }
                    b = objArr;
                    c++;
                }
            }
        }
    }

    private void e(int i) {
        Object[] objArr;
        if (i == 8) {
            synchronized (a.class) {
                if (d != null) {
                    objArr = d;
                    this.g = objArr;
                    d = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    e--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (a.class) {
                if (b != null) {
                    objArr = b;
                    this.g = objArr;
                    b = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    c--;
                    return;
                }
            }
        }
        this.f = new int[i];
        this.g = new Object[(i << 1)];
    }

    int a() {
        int i = this.h;
        if (i == 0) {
            return -1;
        }
        int a = c.a(this.f, i, 0);
        if (a < 0 || this.g[a << 1] == null) {
            return a;
        }
        int i2 = a + 1;
        while (i2 < i && this.f[i2] == 0) {
            if (this.g[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        a--;
        while (a >= 0 && this.f[a] == 0) {
            if (this.g[a << 1] == null) {
                return a;
            }
            a--;
        }
        return i2 ^ -1;
    }

    int a(Object obj) {
        int i = 1;
        int i2 = this.h * 2;
        Object[] objArr = this.g;
        if (obj == null) {
            while (i < i2) {
                if (objArr[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        } else {
            while (i < i2) {
                if (obj.equals(objArr[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }

    int a(Object obj, int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return -1;
        }
        int a = c.a(this.f, i2, i);
        if (a < 0 || obj.equals(this.g[a << 1])) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.f[i3] == i) {
            if (obj.equals(this.g[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        a--;
        while (a >= 0 && this.f[a] == i) {
            if (obj.equals(this.g[a << 1])) {
                return a;
            }
            a--;
        }
        return i3 ^ -1;
    }

    public Object a(int i, Object obj) {
        int i2 = i << 1 + 1;
        Object obj2 = this.g[i2];
        this.g[i2] = obj;
        return obj2;
    }

    public void a(int i) {
        if (this.f.length < i) {
            Object obj = this.f;
            Object obj2 = this.g;
            e(i);
            if (this.h > 0) {
                System.arraycopy(obj, 0, this.f, 0, this.h);
                System.arraycopy(obj2, 0, this.g, 0, this.h << 1);
            }
            a(obj, obj2, this.h);
        }
    }

    public Object b(int i) {
        return this.g[i << 1];
    }

    public Object c(int i) {
        return this.g[i << 1 + 1];
    }

    public void clear() {
        if (this.h != 0) {
            a(this.f, this.g, this.h);
            this.f = c.a;
            this.g = c.c;
            this.h = 0;
        }
    }

    public boolean containsKey(Object obj) {
        if (obj == null) {
            return a() >= 0;
        } else if (a(obj, obj.hashCode()) < 0) {
            return false;
        } else {
            return true;
        }
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public Object d(int i) {
        int i2 = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        Object obj = this.g[i << 1 + 1];
        if (this.h <= 1) {
            a(this.f, this.g, this.h);
            this.f = c.a;
            this.g = c.c;
            this.h = 0;
        } else if (this.f.length <= 8 || this.h >= this.f.length / 3) {
            this.h--;
            if (i < this.h) {
                System.arraycopy(this.f, i + 1, this.f, i, this.h - i);
                System.arraycopy(this.g, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
            this.g[this.h << 1] = null;
            this.g[this.h << 1 + 1] = null;
        } else {
            if (this.h > 8) {
                i2 = this.h + this.h >> 1;
            }
            Object obj2 = this.f;
            Object obj3 = this.g;
            e(i2);
            this.h--;
            if (i > 0) {
                System.arraycopy(obj2, 0, this.f, 0, i);
                System.arraycopy(obj3, 0, this.g, 0, i << 1);
            }
            if (i < this.h) {
                System.arraycopy(obj2, i + 1, this.f, i, this.h - i);
                System.arraycopy(obj3, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
        }
        return obj;
    }

    public boolean equals(m mVar) {
        if (this == mVar) {
            return true;
        }
        if (!(mVar instanceof Map)) {
            return false;
        }
        Map map = (Map) mVar;
        if (size() != map.size()) {
            return false;
        }
        int i = 0;
        while (i < this.h) {
            try {
                Object b = b(i);
                Object c = c(i);
                Object obj = map.get(b);
                if (c == null) {
                    if (!(obj == null && map.containsKey(b))) {
                        return false;
                    }
                } else if (!c.equals(obj)) {
                    return false;
                }
                i++;
            } catch (NullPointerException e) {
                return false;
            } catch (ClassCastException e2) {
                return false;
            }
        }
        return true;
    }

    public Object get(Object obj) {
        int a = obj == null ? a() : a(obj, obj.hashCode());
        return a >= 0 ? this.g[a << 1 + 1] : null;
    }

    public int hashCode() {
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i = this.h;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public boolean isEmpty() {
        return this.h <= 0;
    }

    public Object put(Object obj, Object obj2) {
        int a;
        int i;
        int i2 = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        if (obj == null) {
            a = a();
            i = 0;
        } else {
            i = obj.hashCode();
            a = a(obj, i);
        }
        if (a >= 0) {
            int i3 = a << 1 + 1;
            Object obj3 = this.g[i3];
            this.g[i3] = obj2;
            return obj3;
        } else {
            a ^= -1;
            if (this.h >= this.f.length) {
                if (this.h >= 8) {
                    i2 = this.h + this.h >> 1;
                } else if (this.h < 4) {
                    i2 = 4;
                }
                Object obj4 = this.f;
                Object obj5 = this.g;
                e(i2);
                if (this.f.length > 0) {
                    System.arraycopy(obj4, 0, this.f, 0, obj4.length);
                    System.arraycopy(obj5, 0, this.g, 0, obj5.length);
                }
                a(obj4, obj5, this.h);
            }
            if (a < this.h) {
                System.arraycopy(this.f, a, this.f, a + 1, this.h - a);
                System.arraycopy(this.g, a << 1, this.g, (a + 1) << 1, (this.h - a) << 1);
            }
            this.f[a] = i;
            this.g[a << 1] = obj;
            this.g[a << 1 + 1] = obj2;
            this.h++;
            return null;
        }
    }

    public Object remove(Object obj) {
        int a = obj == null ? a() : a(obj, obj.hashCode());
        return a >= 0 ? d(a) : null;
    }

    public int size() {
        return this.h;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.h * 28);
        stringBuilder.append('{');
        int i = 0;
        while (i < this.h) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            m b = b(i);
            if (b != this) {
                stringBuilder.append(b);
            } else {
                stringBuilder.append("(this Map)");
            }
            stringBuilder.append('=');
            b = c(i);
            if (b != this) {
                stringBuilder.append(b);
            } else {
                stringBuilder.append("(this Map)");
            }
            i++;
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}