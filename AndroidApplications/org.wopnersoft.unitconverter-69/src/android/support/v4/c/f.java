package android.support.v4.c;

// compiled from: ProGuard
public class f implements Cloneable {
    private static final Object a;
    private boolean b;
    private long[] c;
    private Object[] d;
    private int e;

    static {
        a = new Object();
    }

    public f() {
        this(10);
    }

    public f(int i) {
        this.b = false;
        if (i == 0) {
            this.c = c.b;
            this.d = c.c;
        } else {
            int b = c.b(i);
            this.c = new long[b];
            this.d = new Object[b];
        }
        this.e = 0;
    }

    private void c() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            Object obj = objArr[i2];
            if (obj != a) {
                if (i2 != i3) {
                    jArr[i3] = jArr[i2];
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

    public long a(int i) {
        if (this.b) {
            c();
        }
        return this.c[i];
    }

    public f a() {
        try {
            f fVar = (f) super.clone();
            try {
                fVar.c = (long[]) this.c.clone();
                fVar.d = (Object[]) this.d.clone();
                return fVar;
            } catch (CloneNotSupportedException e) {
                return fVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public Object a(long j) {
        return a(j, null);
    }

    public Object a(long j, Object obj) {
        int a = c.a(this.c, this.e, j);
        return (a < 0 || this.d[a] == a) ? obj : this.d[a];
    }

    public int b() {
        if (this.b) {
            c();
        }
        return this.e;
    }

    public int b(long j) {
        if (this.b) {
            c();
        }
        return c.a(this.c, this.e, j);
    }

    public Object b(int i) {
        if (this.b) {
            c();
        }
        return this.d[i];
    }

    public void b(long j, Object obj) {
        int a = c.a(this.c, this.e, j);
        if (a >= 0) {
            this.d[a] = obj;
        } else {
            a ^= -1;
            if (a >= this.e || this.d[a] != a) {
                if (this.b && this.e >= this.c.length) {
                    c();
                    a = c.a(this.c, this.e, j) ^ -1;
                }
                if (this.e >= this.c.length) {
                    int b = c.b(this.e + 1);
                    Object obj2 = new Object[b];
                    Object obj3 = new Object[b];
                    System.arraycopy(this.c, 0, obj2, 0, this.c.length);
                    System.arraycopy(this.d, 0, obj3, 0, this.d.length);
                    this.c = obj2;
                    this.d = obj3;
                }
                if (this.e - a != 0) {
                    System.arraycopy(this.c, a, this.c, a + 1, this.e - a);
                    System.arraycopy(this.d, a, this.d, a + 1, this.e - a);
                }
                this.c[a] = j;
                this.d[a] = obj;
                this.e++;
            } else {
                this.c[a] = j;
                this.d[a] = obj;
            }
        }
    }

    public /* synthetic */ Object clone() {
        return a();
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
            stringBuilder.append(a(i));
            stringBuilder.append('=');
            f b = b(i);
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