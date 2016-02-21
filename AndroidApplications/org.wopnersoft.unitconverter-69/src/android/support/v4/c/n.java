package android.support.v4.c;

// compiled from: ProGuard
public class n implements Cloneable {
    private static final Object a;
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    static {
        a = new Object();
    }

    public n() {
        this(10);
    }

    public n(int i) {
        this.b = false;
        if (i == 0) {
            this.c = c.a;
            this.d = c.c;
        } else {
            int a = c.a(i);
            this.c = new int[a];
            this.d = new Object[a];
        }
        this.e = 0;
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            Object obj = objArr[i2];
            if (obj != a) {
                if (i2 != i3) {
                    iArr[i3] = iArr[i2];
                    objArr[i3] = obj;
                    objArr[i2] = null;
                }
                i3++;
            }
            i2++;
        }
        this.b = false;
        this.e = i3;
    }

    public n a() {
        try {
            n nVar = (n) super.clone();
            try {
                nVar.c = (int[]) this.c.clone();
                nVar.d = (Object[]) this.d.clone();
                return nVar;
            } catch (CloneNotSupportedException e) {
                return nVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public Object a(int i) {
        return a(i, null);
    }

    public Object a(int i, Object obj) {
        int a = c.a(this.c, this.e, i);
        return (a < 0 || this.d[a] == a) ? obj : this.d[a];
    }

    public int b() {
        if (this.b) {
            d();
        }
        return this.e;
    }

    public void b(int i) {
        int a = c.a(this.c, this.e, i);
        if (a >= 0 && this.d[a] != a) {
            this.d[a] = a;
            this.b = true;
        }
    }

    public void b(int i, Object obj) {
        int a = c.a(this.c, this.e, i);
        if (a >= 0) {
            this.d[a] = obj;
        } else {
            a ^= -1;
            if (a >= this.e || this.d[a] != a) {
                if (this.b && this.e >= this.c.length) {
                    d();
                    a = c.a(this.c, this.e, i) ^ -1;
                }
                if (this.e >= this.c.length) {
                    int a2 = c.a(this.e + 1);
                    Object obj2 = new Object[a2];
                    Object obj3 = new Object[a2];
                    System.arraycopy(this.c, 0, obj2, 0, this.c.length);
                    System.arraycopy(this.d, 0, obj3, 0, this.d.length);
                    this.c = obj2;
                    this.d = obj3;
                }
                if (this.e - a != 0) {
                    System.arraycopy(this.c, a, this.c, a + 1, this.e - a);
                    System.arraycopy(this.d, a, this.d, a + 1, this.e - a);
                }
                this.c[a] = i;
                this.d[a] = obj;
                this.e++;
            } else {
                this.c[a] = i;
                this.d[a] = obj;
            }
        }
    }

    public void c() {
        int i = this.e;
        Object[] objArr = this.d;
        int i2 = 0;
        while (i2 < i) {
            objArr[i2] = null;
            i2++;
        }
        this.e = 0;
        this.b = false;
    }

    public void c(int i) {
        b(i);
    }

    public /* synthetic */ Object clone() {
        return a();
    }

    public void d(int i) {
        if (this.d[i] != a) {
            this.d[i] = a;
            this.b = true;
        }
    }

    public int e(int i) {
        if (this.b) {
            d();
        }
        return this.c[i];
    }

    public Object f(int i) {
        if (this.b) {
            d();
        }
        return this.d[i];
    }

    public int g(int i) {
        if (this.b) {
            d();
        }
        return c.a(this.c, this.e, i);
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder(this.e * 28);
        stringBuilder.append('{');
        int i = 0;
        while (i < this.e) {
            if (i > 0) {
                stringBuilder.append(", ");
            }
            stringBuilder.append(e(i));
            stringBuilder.append('=');
            n f = f(i);
            if (f != this) {
                stringBuilder.append(f);
            } else {
                stringBuilder.append("(this Map)");
            }
            i++;
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}