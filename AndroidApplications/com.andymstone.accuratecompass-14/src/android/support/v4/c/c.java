package android.support.v4.c;

import com.andymstone.core.o;

public class c {
    private static final Object a;
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    static {
        a = new Object();
    }

    public c() {
        this(10);
    }

    public c(int i) {
        this.b = false;
        int d = d(i);
        this.c = new int[d];
        this.d = new Object[d];
        this.e = 0;
    }

    static int c_(int i) {
        int i2 = o.MyAlertDialog_MAD_buttonBarStyle;
        while (i2 < 32) {
            if (i <= 1 << i2 - 12) {
                return 1 << i2 - 12;
            }
            i2++;
        }
        return i;
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

    static int d(int i) {
        return c(i * 4) / 4;
    }

    public int a() {
        if (this.b) {
            c();
        }
        return this.e;
    }

    public int a(int i) {
        if (this.b) {
            c();
        }
        return this.c[i];
    }

    public Object b(int i) {
        if (this.b) {
            c();
        }
        return this.d[i];
    }

    public void b() {
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
}