package android.support.v4.b;

public final class c {
    private static final Object a;
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    static {
        a = new Object();
    }

    public c() {
        this((byte) 0);
    }

    private c(byte b) {
        this.b = false;
        int g = g(10);
        this.c = new int[g];
        this.d = new Object[g];
        this.e = 0;
    }

    private static int a(int[] iArr, int i, int i2) {
        int i3 = -1;
        int i4 = i + 0;
        while (i4 - i3 > 1) {
            int i5 = (i4 + i3) / 2;
            if (iArr[i5] < i2) {
                i3 = i5;
            } else {
                i4 = i5;
            }
        }
        if (i4 == i + 0) {
            return (i + 0) ^ -1;
        }
        return iArr[i4] != i2 ? i4 ^ -1 : i4;
    }

    private void c_() {
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
                }
                i3++;
            }
            i2++;
        }
        this.b = false;
        this.e = i3;
    }

    private static int g(int i) {
        int i2 = i * 4;
        int i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT;
        while (i3 < 32) {
            if (i2 <= 1 << i3 - 12) {
                i2 = 1 << i3 - 12;
                break;
            } else {
                i3++;
            }
        }
        return i2 / 4;
    }

    public final int a() {
        if (this.b) {
            c();
        }
        return this.e;
    }

    public final Object a(int i) {
        int a = a(this.c, this.e, i);
        return (a < 0 || this.d[a] == a) ? null : this.d[a];
    }

    public final void a(int i, Object obj) {
        int a = a(this.c, this.e, i);
        if (a >= 0) {
            this.d[a] = obj;
        } else {
            a ^= -1;
            if (a >= this.e || this.d[a] != a) {
                if (this.b && this.e >= this.c.length) {
                    c();
                    a = a(this.c, this.e, i) ^ -1;
                }
                if (this.e >= this.c.length) {
                    int g = g(this.e + 1);
                    Object obj2 = new Object[g];
                    Object obj3 = new Object[g];
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

    public final void b() {
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

    public final void b(int i) {
        int a = a(this.c, this.e, i);
        if (a >= 0 && this.d[a] != a) {
            this.d[a] = a;
            this.b = true;
        }
    }

    public final void c_(int i) {
        if (this.d[i] != a) {
            this.d[i] = a;
            this.b = true;
        }
    }

    public final int d(int i) {
        if (this.b) {
            c();
        }
        return this.c[i];
    }

    public final Object e(int i) {
        if (this.b) {
            c();
        }
        return this.d[i];
    }

    public final int f(int i) {
        if (this.b) {
            c();
        }
        return a(this.c, this.e, i);
    }
}