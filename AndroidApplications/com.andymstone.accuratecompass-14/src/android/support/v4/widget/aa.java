package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.af;
import android.support.v4.view.z;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import java.util.Arrays;

public class aa {
    private static final Interpolator v;
    private int a;
    private int b;
    private int c;
    private float[] d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private l q;
    private final ad r;
    private View s;
    private boolean t;
    private final ViewGroup u;
    private final Runnable w;

    static {
        v = new ab();
    }

    private aa(Context context, ViewGroup viewGroup, ad adVar) {
        this.c = -1;
        this.w = new ac(this);
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (adVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        } else {
            this.u = viewGroup;
            this.r = adVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.o = (int) (context.getResources().getDisplayMetrics().density * 20.0f + 0.5f);
            this.b = viewConfiguration.getScaledTouchSlop();
            this.m = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.n = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.q = l.a(context, v);
        }
    }

    private float a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        if (abs <= f3) {
            return f;
        }
        return f <= 0.0f ? -f3 : f3;
    }

    private int a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.u.getWidth();
        int i4 = width / 2;
        float b = b(Math.min(1.0f, ((float) Math.abs(i)) / ((float) width))) * ((float) i4) + ((float) i4);
        i4 = Math.abs(i2);
        return Math.min(i4 > 0 ? Math.round(Math.abs(b / ((float) i4)) * 1000.0f) * 4 : (int) (((((float) Math.abs(i)) / ((float) i3)) + 1.0f) * 256.0f), 600);
    }

    private int a(View view, int i, int i2, int i3, int i4) {
        int b = b(i3, (int) this.n, (int) this.m);
        int b2 = b(i4, (int) this.n, (int) this.m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(b);
        int abs4 = Math.abs(b2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        return (int) ((b2 != 0 ? ((float) abs4) / ((float) i5) : ((float) abs2) / ((float) i6)) * ((float) a(i2, b2, this.r.b(view))) + (b != 0 ? ((float) abs3) / ((float) i5) : ((float) abs) / ((float) i6)) * ((float) a(i, b, this.r.a(view))));
    }

    public static aa a(ViewGroup viewGroup, float f, ad adVar) {
        aa a = a(viewGroup, adVar);
        a.b = (int) (((float) a.b) * (1.0f / f));
        return a;
    }

    public static aa a(ViewGroup viewGroup, ad adVar) {
        return new aa(viewGroup.getContext(), viewGroup, adVar);
    }

    private void a(float f, float f2) {
        this.t = true;
        this.r.a(this.s, f, f2);
        this.t = false;
        if (this.a == 1) {
            c(0);
        }
    }

    private void a(float f, float f2, int i) {
        f(i);
        float[] fArr = this.d;
        this.f[i] = f;
        fArr[i] = f;
        fArr = this.e;
        this.g[i] = f2;
        fArr[i] = f2;
        this.h[i] = e((int) f, (int) f2);
        this.k |= 1 << i;
    }

    private boolean a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        if (abs <= ((float) this.b) && abs2 <= ((float) this.b)) {
            return false;
        }
        if (abs < abs2 * 0.5f && this.r.b(i2)) {
            int[] iArr = this.j;
            iArr[i] = iArr[i] | i2;
            return false;
        } else if ((this.i[i] & i2) != 0 || abs <= ((float) this.b)) {
            return false;
        } else {
            return true;
        }
    }

    private boolean a(int i, int i2, int i3, int i4) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.q.g();
            c(0);
            return false;
        } else {
            this.q.a(left, top, i5, i6, a(this.s, i5, i6, i3, i4));
            c((int)o.MyAlertDialog_myAlertDialogButtonDrawable);
            return true;
        }
    }

    private boolean a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        int i = this.r.a(view) > 0;
        int i2 = this.r.b(view) > 0;
        if (i == 0 || i2 == 0) {
            if (i != 0) {
                return Math.abs(f) > ((float) this.b);
            } else if (i2 == 0) {
                return false;
            } else {
                return Math.abs(f2) > ((float) this.b);
            }
        } else if (f * f + f2 * f2 <= ((float) (this.b * this.b))) {
            return false;
        } else {
            return true;
        }
    }

    private float b(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    private int b(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        if (abs <= i3) {
            return i;
        }
        return i <= 0 ? -i3 : i3;
    }

    private void b(float f, float f2, int i) {
        int i2 = 1;
        if (!a(f, f2, i, 1)) {
            i2 = 0;
        }
        if (a(f2, f, i, (int)o.MyAlertDialog_MAD_buttonBarStyle)) {
            i2 |= 4;
        }
        if (a(f, f2, i, (int)o.MyAlertDialog_myAlertDialogButtonDrawable)) {
            i2 |= 2;
        }
        if (a(f2, f, i, (int)o.MyAlertDialog_MAD_messagePadding)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.b(i2, i);
        }
    }

    private void b(int i, int i2, int i3, int i4) {
        int a;
        int b;
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i3 != 0) {
            a = this.r.a(this.s, i, i3);
            this.s.offsetLeftAndRight(a - left);
        } else {
            a = i;
        }
        if (i4 != 0) {
            b = this.r.b(this.s, i2, i4);
            this.s.offsetTopAndBottom(b - top);
        } else {
            b = i2;
        }
        if (i3 != 0 || i4 != 0) {
            this.r.a(this.s, a, b, a - left, b - top);
        }
    }

    private void c(MotionEvent motionEvent) {
        int c = z.c(motionEvent);
        int i = 0;
        while (i < c) {
            int b = z.b(motionEvent, i);
            float c2 = z.c(motionEvent, i);
            float d = z.d(motionEvent, i);
            this.f[b] = c2;
            this.g[b] = d;
            i++;
        }
    }

    private int e(int i, int i2) {
        int i3 = 0;
        if (i < this.u.getLeft() + this.o) {
            i3 = 1;
        }
        if (i2 < this.u.getTop() + this.o) {
            i3 |= 4;
        }
        if (i > this.u.getRight() - this.o) {
            i3 |= 2;
        }
        return i2 > this.u.getBottom() - this.o ? i3 | 8 : i3;
    }

    private void e(int i) {
        if (this.d != null) {
            this.d[i] = 0.0f;
            this.e[i] = 0.0f;
            this.f[i] = 0.0f;
            this.g[i] = 0.0f;
            this.h[i] = 0;
            this.i[i] = 0;
            this.j[i] = 0;
            this.k &= (1 << i) ^ -1;
        }
    }

    private void f(int i) {
        if (this.d == null || this.d.length <= i) {
            Object obj = new Object[(i + 1)];
            Object obj2 = new Object[(i + 1)];
            Object obj3 = new Object[(i + 1)];
            Object obj4 = new Object[(i + 1)];
            Object obj5 = new Object[(i + 1)];
            Object obj6 = new Object[(i + 1)];
            Object obj7 = new Object[(i + 1)];
            if (this.d != null) {
                System.arraycopy(this.d, 0, obj, 0, this.d.length);
                System.arraycopy(this.e, 0, obj2, 0, this.e.length);
                System.arraycopy(this.f, 0, obj3, 0, this.f.length);
                System.arraycopy(this.g, 0, obj4, 0, this.g.length);
                System.arraycopy(this.h, 0, obj5, 0, this.h.length);
                System.arraycopy(this.i, 0, obj6, 0, this.i.length);
                System.arraycopy(this.j, 0, obj7, 0, this.j.length);
            }
            this.d = obj;
            this.e = obj2;
            this.f = obj3;
            this.g = obj4;
            this.h = obj5;
            this.i = obj6;
            this.j = obj7;
        }
    }

    private void g() {
        if (this.d != null) {
            Arrays.fill(this.d, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
    }

    private void h() {
        this.l.computeCurrentVelocity(1000, this.m);
        a(a(af.a(this.l, this.c), this.n, this.m), a(af.b(this.l, this.c), this.n, this.m));
    }

    public int a() {
        return this.a;
    }

    public void a(float f) {
        this.n = f;
    }

    public void a(int i) {
        this.p = i;
    }

    public void a(View view, int i) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
        }
        this.s = view;
        this.c = i;
        this.r.b(view, i);
        c(1);
    }

    public boolean a(int i, int i2) {
        if (this.t) {
            return a(i, i2, (int) af.a(this.l, this.c), (int) af.b(this.l, this.c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    public boolean a(MotionEvent motionEvent) {
        int a = z.a(motionEvent);
        int b = z.b(motionEvent);
        if (a == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        float y;
        int b2;
        switch (a) {
            case v.DropShadowView_cornerRadius:
                float x = motionEvent.getX();
                y = motionEvent.getY();
                b2 = z.b(motionEvent, 0);
                a(x, y, b2);
                View d = d((int) x, (int) y);
                if (d == this.s && this.a == 2) {
                    b(d, b2);
                }
                a = this.h[b2];
                if ((this.p & a) != 0) {
                    this.r.a(a & this.p, b2);
                }
                break;
            case o.MyAlertDialog_myAlertDialogAccentColor:
            case o.MyAlertDialog_MAD_titleStyle:
                e();
                break;
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                b = z.c(motionEvent);
                a = 0;
                while (a < b) {
                    b2 = z.b(motionEvent, a);
                    float c = z.c(motionEvent, a);
                    float d2 = z.d(motionEvent, a);
                    float f = c - this.d[b2];
                    float f2 = d2 - this.e[b2];
                    b(f, f2, b2);
                    if (this.a != 1) {
                        View d3 = d((int) c, (int) d2);
                        if (d3 == null || !a(d3, f, f2) || !b(d3, b2)) {
                            a++;
                        }
                    }
                    c(motionEvent);
                }
                c(motionEvent);
                break;
            case o.MyAlertDialog_MAD_textAppearanceMedium:
                a = z.b(motionEvent, b);
                float c2 = z.c(motionEvent, b);
                y = z.d(motionEvent, b);
                a(c2, y, a);
                if (this.a == 0) {
                    b = this.h[a];
                    if ((this.p & b) != 0) {
                        this.r.a(b & this.p, a);
                    }
                } else if (this.a == 2) {
                    View d4 = d((int) c2, (int) y);
                    if (d4 == this.s) {
                        b(d4, a);
                    }
                }
                break;
            case o.MyAlertDialog_MAD_divider:
                e(z.b(motionEvent, b));
                break;
        }
        return this.a == 1;
    }

    public boolean a(View view, int i, int i2) {
        this.s = view;
        this.c = -1;
        return a(i, i2, 0, 0);
    }

    public boolean a(boolean z) {
        if (this.a == 2) {
            boolean a;
            boolean f = this.q.f();
            int b = this.q.b();
            int c = this.q.c();
            int left = b - this.s.getLeft();
            int top = c - this.s.getTop();
            if (left != 0) {
                this.s.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.s.offsetTopAndBottom(top);
            }
            if (!(left == 0 && top == 0)) {
                this.r.a(this.s, b, c, left, top);
            }
            if (f && b == this.q.d() && c == this.q.e()) {
                this.q.g();
                a = this.q.a();
            } else {
                a = f;
            }
            if (!a) {
                if (z) {
                    this.u.post(this.w);
                } else {
                    c(0);
                }
            }
        }
        return this.a == 2;
    }

    public int b() {
        return this.o;
    }

    public void b(MotionEvent motionEvent) {
        int i = 0;
        int a = z.a(motionEvent);
        int b = z.b(motionEvent);
        if (a == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        float x;
        float y;
        View d;
        int i2;
        switch (a) {
            case v.DropShadowView_cornerRadius:
                x = motionEvent.getX();
                y = motionEvent.getY();
                i = z.b(motionEvent, 0);
                d = d((int) x, (int) y);
                a(x, y, i);
                b(d, i);
                i2 = this.h[i];
                if ((this.p & i2) != 0) {
                    this.r.a(i2 & this.p, i);
                }
            case o.MyAlertDialog_myAlertDialogAccentColor:
                if (this.a == 1) {
                    h();
                }
                e();
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                if (this.a == 1) {
                    i = z.a(motionEvent, this.c);
                    x = z.c(motionEvent, i);
                    i2 = (int) (x - this.f[this.c]);
                    i = (int) (z.d(motionEvent, i) - this.g[this.c]);
                    b(this.s.getLeft() + i2, this.s.getTop() + i, i2, i);
                    c(motionEvent);
                } else {
                    i2 = z.c(motionEvent);
                    while (i < i2) {
                        a = z.b(motionEvent, i);
                        float c = z.c(motionEvent, i);
                        float d2 = z.d(motionEvent, i);
                        float f = c - this.d[a];
                        float f2 = d2 - this.e[a];
                        b(f, f2, a);
                        if (this.a != 1) {
                            d = d((int) c, (int) d2);
                            if (!a(d, f, f2) || !b(d, a)) {
                                i++;
                            }
                        }
                        c(motionEvent);
                    }
                    c(motionEvent);
                }
            case o.MyAlertDialog_MAD_titleStyle:
                if (this.a == 1) {
                    a(0.0f, 0.0f);
                }
                e();
            case o.MyAlertDialog_MAD_textAppearanceMedium:
                i = z.b(motionEvent, b);
                x = z.c(motionEvent, b);
                y = z.d(motionEvent, b);
                a(x, y, i);
                if (this.a == 0) {
                    b(d((int) x, (int) y), i);
                    i2 = this.h[i];
                    if ((this.p & i2) != 0) {
                        this.r.a(i2 & this.p, i);
                    }
                } else if (c((int) x, (int) y)) {
                    b(this.s, i);
                }
            case o.MyAlertDialog_MAD_divider:
                a = z.b(motionEvent, b);
                if (this.a == 1 && a == this.c) {
                    b = z.c(motionEvent);
                    while (i < b) {
                        int b2 = z.b(motionEvent, i);
                        if (b2 != this.c) {
                            if (d((int) z.c(motionEvent, i), (int) z.d(motionEvent, i)) == this.s && b(this.s, b2)) {
                                i = this.c;
                                if (i == -1) {
                                    h();
                                }
                            }
                        }
                        i++;
                    }
                    i = -1;
                    if (i == -1) {
                        h();
                    }
                }
                e(a);
            default:
                break;
        }
    }

    public boolean b(int i) {
        return (this.k & (1 << i)) != 0;
    }

    public boolean b(int i, int i2) {
        if (!b(i2)) {
            return false;
        }
        int i3 = (i & 1) == 1;
        int i4 = (i & 2) == 2;
        float f = this.f[i2] - this.d[i2];
        float f2 = this.g[i2] - this.e[i2];
        if (i3 == 0 || i4 == 0) {
            if (i3 != 0) {
                return Math.abs(f) > ((float) this.b);
            } else if (i4 == 0) {
                return false;
            } else {
                return Math.abs(f2) > ((float) this.b);
            }
        } else if (f * f + f2 * f2 <= ((float) (this.b * this.b))) {
            return false;
        } else {
            return true;
        }
    }

    boolean b(View view, int i) {
        if (view == this.s && this.c == i) {
            return true;
        }
        if (view == null || !this.r.a(view, i)) {
            return false;
        }
        this.c = i;
        a(view, i);
        return true;
    }

    public boolean b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    public View c() {
        return this.s;
    }

    void c(int i) {
        if (this.a != i) {
            this.a = i;
            this.r.a(i);
            if (i == 0) {
                this.s = null;
            }
        }
    }

    public boolean c(int i, int i2) {
        return b(this.s, i, i2);
    }

    public int d() {
        return this.b;
    }

    public View d(int i, int i2) {
        int i3 = this.u.getChildCount() - 1;
        while (i3 >= 0) {
            View childAt = this.u.getChildAt(this.r.c(i3));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
            i3--;
        }
        return null;
    }

    public boolean d(int i) {
        int length = this.d.length;
        int i2 = 0;
        while (i2 < length) {
            if (b(i, i2)) {
                return true;
            }
            i2++;
        }
        return false;
    }

    public void e() {
        this.c = -1;
        g();
        if (this.l != null) {
            this.l.recycle();
            this.l = null;
        }
    }

    public void f() {
        e();
        if (this.a == 2) {
            int b = this.q.b();
            int c = this.q.c();
            this.q.g();
            int b2 = this.q.b();
            int c2 = this.q.c();
            this.r.a(this.s, b2, c2, b2 - b, c2 - c);
        }
        c(0);
    }
}