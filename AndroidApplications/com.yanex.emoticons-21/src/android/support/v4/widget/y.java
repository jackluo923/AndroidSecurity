package android.support.v4.widget;

import android.support.v4.view.ab;
import android.support.v4.view.w;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.MenuItem;
import java.util.Arrays;

public final class y {
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
    private n q;
    private final aa r;
    private View s;
    private boolean t;
    private final ViewGroup u;
    private final Runnable w;

    static {
        v = new z();
    }

    private static float a(float f, float f2, float f3) {
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
        float sin = ((float) Math.sin((double) ((float) (((double) (Math.min(1.0f, ((float) Math.abs(i)) / ((float) width)) - 0.5f)) * 0.4712389167638204d)))) * ((float) i4) + ((float) i4);
        i4 = Math.abs(i2);
        return Math.min(i4 > 0 ? Math.round(Math.abs(sin / ((float) i4)) * 1000.0f) * 4 : (int) (((((float) Math.abs(i)) / ((float) i3)) + 1.0f) * 256.0f), 600);
    }

    private void a(float f) {
        this.t = true;
        this.r.a(this.s, f);
        this.t = false;
        if (this.a == 1) {
            d(0);
        }
    }

    private void a(float f, float f2, int i) {
        int i2 = 0;
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
        float[] fArr = this.d;
        this.f[i] = f;
        fArr[i] = f;
        fArr = this.e;
        this.g[i] = f2;
        fArr[i] = f2;
        int[] iArr = this.h;
        int i3 = (int) f;
        int i4 = (int) f2;
        if (i3 < this.u.getLeft() + this.o) {
            i2 = 1;
        }
        if (i4 < this.u.getTop() + this.o) {
            i2 |= 4;
        }
        if (i3 > this.u.getRight() - this.o) {
            i2 |= 2;
        }
        if (i4 > this.u.getBottom() - this.o) {
            i2 |= 8;
        }
        iArr[i] = i2;
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
        if (abs < abs2 * 0.5f) {
            aa aaVar = this.r;
        }
        return (this.i[i] & i2) == 0 && abs > ((float) this.b);
    }

    private boolean a(int i, int i2, int i3, int i4) {
        int left = this.s.getLeft();
        int top = this.s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.q.g();
            d(0);
            return false;
        } else {
            float f;
            float f2;
            View view = this.s;
            int b = b(i3, (int) this.n, (int) this.m);
            int b2 = b(i4, (int) this.n, (int) this.m);
            int abs = Math.abs(i5);
            int abs2 = Math.abs(i6);
            int abs3 = Math.abs(b);
            int abs4 = Math.abs(b2);
            int i7 = abs3 + abs4;
            int i8 = abs + abs2;
            f = b != 0 ? ((float) abs3) / ((float) i7) : ((float) abs) / ((float) i8);
            f2 = b2 != 0 ? ((float) abs4) / ((float) i7) : ((float) abs2) / ((float) i8);
            int a = a(i5, b, this.r.c(view));
            aa aaVar = this.r;
            this.q.a(left, top, i5, i6, (int) (f2 * ((float) a(i6, b2, 0)) + f * ((float) a)));
            d(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
            return true;
        }
    }

    private boolean a(View view, float f) {
        if (view == null) {
            return false;
        }
        int i = this.r.c(view) > 0;
        aa aaVar = this.r;
        return i != 0 && Math.abs(f) > ((float) this.b);
    }

    private static int b(int i, int i2, int i3) {
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
        if (a(f2, f, i, (int)ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)) {
            i2 |= 4;
        }
        if (a(f, f2, i, (int)IcsLinearLayout.SHOW_DIVIDER_MIDDLE)) {
            i2 |= 2;
        }
        if (a(f2, f, i, (int)MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.a(i2, i);
        }
    }

    private void b(int i) {
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

    private boolean b(View view, int i) {
        if (view == this.s && this.c == i) {
            return true;
        }
        if (view == null || !this.r.a(view)) {
            return false;
        }
        this.c = i;
        a(view, i);
        return true;
    }

    public static boolean b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    private void c(MotionEvent motionEvent) {
        int c = w.c(motionEvent);
        int i = 0;
        while (i < c) {
            int b = w.b(motionEvent, i);
            float c2 = w.c(motionEvent, i);
            float d = w.d(motionEvent, i);
            this.f[b] = c2;
            this.g[b] = d;
            i++;
        }
    }

    private boolean c(int i) {
        return (this.k & (1 << i)) != 0;
    }

    private void d(int i) {
        if (this.a != i) {
            this.a = i;
            this.r.a(i);
            if (i == 0) {
                this.s = null;
            }
        }
    }

    private void i() {
        this.l.computeCurrentVelocity(1000, this.m);
        float a = a(ab.a(this.l, this.c), this.n, this.m);
        a(ab.b(this.l, this.c), this.n, this.m);
        a(a);
    }

    public final int a() {
        return this.a;
    }

    public final void a(View view, int i) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException(new StringBuilder("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (").append(this.u).append(")").toString());
        }
        this.s = view;
        this.c = i;
        this.r.b(view);
        d(1);
    }

    public final boolean a(int i) {
        int length = this.h.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = c(i2) && (this.h[i2] & i) != 0;
            if (i3 != 0) {
                return true;
            }
            i2++;
        }
        return false;
    }

    public final boolean a(int i, int i2) {
        if (this.t) {
            return a(i, i2, (int) ab.a(this.l, this.c), (int) ab.b(this.l, this.c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    public final boolean a(MotionEvent motionEvent) {
        int a = w.a(motionEvent);
        int b = w.b(motionEvent);
        if (a == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        float y;
        int b2;
        aa aaVar;
        switch (a) {
            case IcsToast.LENGTH_SHORT:
                float x = motionEvent.getX();
                y = motionEvent.getY();
                b2 = w.b(motionEvent, 0);
                a(x, y, b2);
                View b3 = b((int) x, (int) y);
                if (b3 == this.s && this.a == 2) {
                    b(b3, b2);
                }
                if ((this.h[b2] & this.p) != 0) {
                    aaVar = this.r;
                    b = this.p;
                    aaVar.b();
                }
                break;
            case IcsToast.LENGTH_LONG:
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                e();
                break;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                b = w.c(motionEvent);
                a = 0;
                while (a < b) {
                    b2 = w.b(motionEvent, a);
                    float c = w.c(motionEvent, a);
                    float d = w.d(motionEvent, a);
                    float f = c - this.d[b2];
                    b(f, d - this.e[b2], b2);
                    if (this.a != 1) {
                        View b4 = b((int) c, (int) d);
                        if (b4 == null || !a(b4, f) || !b(b4, b2)) {
                            a++;
                        }
                    }
                    c(motionEvent);
                }
                c(motionEvent);
                break;
            case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                a = w.b(motionEvent, b);
                float c2 = w.c(motionEvent, b);
                y = w.d(motionEvent, b);
                a(c2, y, a);
                if (this.a == 0) {
                    if ((this.h[a] & this.p) != 0) {
                        aaVar = this.r;
                        b = this.p;
                        aaVar.b();
                    }
                } else if (this.a == 2) {
                    View b5 = b((int) c2, (int) y);
                    if (b5 == this.s) {
                        b(b5, a);
                    }
                }
                break;
            case FragmentManagerImpl.ANIM_STYLE_FADE_EXIT:
                b(w.b(motionEvent, b));
                break;
        }
        return this.a == 1;
    }

    public final boolean a(View view, int i, int i2) {
        this.s = view;
        this.c = -1;
        return a(i, i2, 0, 0);
    }

    public final int b() {
        return this.o;
    }

    public final View b(int i, int i2) {
        int i3 = this.u.getChildCount() - 1;
        while (i3 >= 0) {
            ViewGroup viewGroup = this.u;
            aa aaVar = this.r;
            View childAt = viewGroup.getChildAt(i3);
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
            i3--;
        }
        return null;
    }

    public final void b(MotionEvent motionEvent) {
        int i = 0;
        int a = w.a(motionEvent);
        int b = w.b(motionEvent);
        if (a == 0) {
            e();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        float x;
        float y;
        View b2;
        aa aaVar;
        int i2;
        int top;
        switch (a) {
            case IcsToast.LENGTH_SHORT:
                x = motionEvent.getX();
                y = motionEvent.getY();
                i = w.b(motionEvent, 0);
                b2 = b((int) x, (int) y);
                a(x, y, i);
                b(b2, i);
                if ((this.h[i] & this.p) != 0) {
                    aaVar = this.r;
                    i2 = this.p;
                    aaVar.b();
                }
            case IcsToast.LENGTH_LONG:
                if (this.a == 1) {
                    i();
                }
                e();
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                if (this.a == 1) {
                    i = w.a(motionEvent, this.c);
                    x = w.c(motionEvent, i);
                    i2 = (int) (x - this.f[this.c]);
                    a = (int) (w.d(motionEvent, i) - this.g[this.c]);
                    i = this.s.getLeft() + i2;
                    this.s.getTop();
                    b = this.s.getLeft();
                    top = this.s.getTop();
                    if (i2 != 0) {
                        i = this.r.b(this.s, i);
                        this.s.offsetLeftAndRight(i - b);
                    }
                    if (a != 0) {
                        this.s.offsetTopAndBottom(this.r.d(this.s) - top);
                    }
                    if (!(i2 == 0 && a == 0)) {
                        this.r.a(this.s, i);
                    }
                    c(motionEvent);
                } else {
                    i2 = w.c(motionEvent);
                    while (i < i2) {
                        a = w.b(motionEvent, i);
                        float c = w.c(motionEvent, i);
                        float d = w.d(motionEvent, i);
                        float f = c - this.d[a];
                        b(f, d - this.e[a], a);
                        if (this.a != 1) {
                            b2 = b((int) c, (int) d);
                            if (!a(b2, f) || !b(b2, a)) {
                                i++;
                            }
                        }
                        c(motionEvent);
                    }
                    c(motionEvent);
                }
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                if (this.a == 1) {
                    a(0.0f);
                }
                e();
            case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                i = w.b(motionEvent, b);
                x = w.c(motionEvent, b);
                y = w.d(motionEvent, b);
                a(x, y, i);
                if (this.a == 0) {
                    b(b((int) x, (int) y), i);
                    if ((this.h[i] & this.p) != 0) {
                        aaVar = this.r;
                        i2 = this.p;
                        aaVar.b();
                    }
                } else {
                    if (b(this.s, (int) x, (int) y)) {
                        b(this.s, i);
                    }
                }
            case FragmentManagerImpl.ANIM_STYLE_FADE_EXIT:
                a = w.b(motionEvent, b);
                if (this.a == 1 && a == this.c) {
                    b = w.c(motionEvent);
                    while (i < b) {
                        top = w.b(motionEvent, i);
                        if (top != this.c) {
                            if (b((int) w.c(motionEvent, i), (int) w.d(motionEvent, i)) == this.s && b(this.s, top)) {
                                i = this.c;
                                if (i == -1) {
                                    i();
                                }
                            }
                        }
                        i++;
                    }
                    i = -1;
                    if (i == -1) {
                        i();
                    }
                }
                b(a);
            default:
                break;
        }
    }

    public final View c() {
        return this.s;
    }

    public final int d() {
        return this.b;
    }

    public final void e() {
        this.c = -1;
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
        if (this.l != null) {
            this.l.recycle();
            this.l = null;
        }
    }

    public final void f() {
        e();
        if (this.a == 2) {
            this.q.b();
            this.q.c();
            this.q.g();
            int b = this.q.b();
            this.q.c();
            this.r.a(this.s, b);
        }
        d(0);
    }

    public final boolean g() {
        if (this.a == 2) {
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
                this.r.a(this.s, b);
            }
            if (f && b == this.q.d() && c == this.q.e()) {
                this.q.g();
                f = this.q.a();
            }
            if (!f) {
                this.u.post(this.w);
            }
        }
        return this.a == 2;
    }

    public final boolean h() {
        int length = this.d.length;
        int i = 0;
        while (i < length) {
            if (c(i)) {
                float f = this.f[i] - this.d[i];
                float f2 = this.g[i] - this.e[i];
                int i2 = (f * f) + (f2 * f2) > ((float) (this.b * this.b));
            } else {
                boolean z = false;
            }
            if (i2 != 0) {
                return true;
            }
            i++;
        }
        return false;
    }
}