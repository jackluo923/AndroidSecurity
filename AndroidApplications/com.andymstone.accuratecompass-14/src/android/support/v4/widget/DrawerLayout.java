package android.support.v4.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.view.ak;
import android.support.v4.view.az;
import android.support.v4.view.n;
import android.support.v4.view.s;
import android.support.v4.view.z;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;

public class DrawerLayout extends ViewGroup {
    private static final int[] a;
    private int b;
    private int c;
    private float d;
    private Paint e;
    private final aa f;
    private final aa g;
    private final e h;
    private final e i;
    private int j;
    private boolean k;
    private boolean l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private b q;
    private float r;
    private float s;
    private Drawable t;
    private Drawable u;

    public class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        int a;
        int b;
        int c;

        static {
            CREATOR = new d();
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.a = 0;
            this.b = 0;
            this.c = 0;
            this.a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.a = 0;
            this.b = 0;
            this.c = 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
        }
    }

    static {
        a = new int[]{16842931};
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = -1728053248;
        this.e = new Paint();
        this.l = true;
        float f = getResources().getDisplayMetrics().density;
        this.b = (int) (64.0f * f + 0.5f);
        f *= 400.0f;
        this.h = new e(this, 3);
        this.i = new e(this, 5);
        this.f = aa.a((ViewGroup)this, 1.0f, this.h);
        this.f.a(1);
        this.f.a(f);
        this.h.a(this.f);
        this.g = aa.a((ViewGroup)this, 1.0f, this.i);
        this.g.a((int)o.MyAlertDialog_myAlertDialogButtonDrawable);
        this.g.a(f);
        this.i.a(this.g);
        setFocusableInTouchMode(true);
        ak.a(this, new a(this));
        az.a(this, false);
    }

    static String b(int i) {
        if ((i & 3) == 3) {
            return "LEFT";
        }
        return (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    private boolean e() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            if (((c) getChildAt(i).getLayoutParams()).c) {
                return true;
            }
            i++;
        }
        return false;
    }

    private boolean f() {
        return g() != null;
    }

    private View g() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (g(childAt) && j(childAt)) {
                return childAt;
            }
            i++;
        }
        return null;
    }

    private static boolean k(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    public int a(View view) {
        int e = e(view);
        if (e == 3) {
            return this.m;
        }
        return e == 5 ? this.n : 0;
    }

    View a() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (((c) childAt.getLayoutParams()).d) {
                return childAt;
            }
            i++;
        }
        return null;
    }

    View a(int i) {
        int childCount = getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            if ((e(childAt) & 7) == (i & 7)) {
                return childAt;
            }
            i2++;
        }
        return null;
    }

    public void a(int i, int i2) {
        int a = n.a(i2, ak.d(this));
        if (a == 3) {
            this.m = i;
        } else if (a == 5) {
            this.n = i;
        }
        if (i != 0) {
            (a == 3 ? this.f : this.g).e();
        }
        View a2;
        switch (i) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
                a2 = a(a);
                if (a2 != null) {
                    i(a2);
                }
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                a2 = a(a);
                if (a2 != null) {
                    h(a2);
                }
            default:
                break;
        }
    }

    void a(int i, int i2, View view) {
        int i3 = 1;
        int a = this.f.a();
        int a2 = this.g.a();
        if (!(a == 1 || a2 == 1)) {
            i3 = (a == 2 || a2 == 2) ? 2 : 0;
        }
        if (view != null && i2 == 0) {
            c cVar = (c) view.getLayoutParams();
            if (cVar.b == 0.0f) {
                b(view);
            } else if (cVar.b == 1.0f) {
                c(view);
            }
        }
        if (i3 != this.j) {
            this.j = i3;
            if (this.q != null) {
                this.q.a(i3);
            }
        }
    }

    void a(View view, float f) {
        if (this.q != null) {
            this.q.a(view, f);
        }
    }

    void a(boolean z) {
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            c cVar = (c) childAt.getLayoutParams();
            if (g(childAt)) {
                if (!z || cVar.c) {
                    i2 = a(childAt, (int)o.MyAlertDialog_MAD_titleStyle) ? i2 | this.f.a(childAt, -childAt.getWidth(), childAt.getTop()) : i2 | this.g.a(childAt, getWidth(), childAt.getTop());
                    cVar.c = false;
                }
            }
            i++;
        }
        this.h.a();
        this.i.a();
        if (i2 != 0) {
            invalidate();
        }
    }

    boolean a(View view, int i) {
        return (e(view) & i) == i;
    }

    public void b() {
        a(false);
    }

    void b(View view) {
        c cVar = (c) view.getLayoutParams();
        if (cVar.d) {
            cVar.d = false;
            if (this.q != null) {
                this.q.b(view);
            }
            sendAccessibilityEvent(32);
        }
    }

    void b(View view, float f) {
        c cVar = (c) view.getLayoutParams();
        if (f != cVar.b) {
            cVar.b = f;
            a(view, f);
        }
    }

    void c() {
        int i = 0;
        if (!this.p) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, o.MyAlertDialog_MAD_titleStyle, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            while (i < childCount) {
                getChildAt(i).dispatchTouchEvent(obtain);
                i++;
            }
            obtain.recycle();
            this.p = true;
        }
    }

    public void c(int i) {
        int a = n.a(i, ak.d(this));
        View a2 = a(a);
        if (a2 == null) {
            throw new IllegalArgumentException("No drawer view found with absolute gravity " + b(a));
        }
        h(a2);
    }

    void c(View view) {
        c cVar = (c) view.getLayoutParams();
        if (!cVar.d) {
            cVar.d = true;
            if (this.q != null) {
                this.q.a(view);
            }
            view.sendAccessibilityEvent(32);
        }
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof c && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        int i = 0;
        while (i < childCount) {
            f = Math.max(f, ((c) getChildAt(i).getLayoutParams()).b);
            i++;
        }
        this.d = f;
        if ((this.f.a(true) | this.g.a(true)) != 0) {
            ak.b(this);
        }
    }

    float d(View view) {
        return ((c) view.getLayoutParams()).b;
    }

    public void d(int i) {
        int a = n.a(i, ak.d(this));
        View a2 = a(a);
        if (a2 == null) {
            throw new IllegalArgumentException("No drawer view found with absolute gravity " + b(a));
        }
        i(a2);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected boolean drawChild(android.graphics.Canvas r10, android.view.View r11, long r12) {
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
        /*
        r9 = this;
        r4 = r9.getHeight();
        r5 = r9.f(r11);
        r1 = 0;
        r2 = r9.getWidth();
        r6 = r10.save();
        if (r5 == 0) goto L_0x005f;
    L_0x0013:
        r7 = r9.getChildCount();
        r0 = 0;
        r3 = r0;
    L_0x0019:
        if (r3 >= r7) goto L_0x0057;
    L_0x001b:
        r0 = r9.getChildAt(r3);
        if (r0 == r11) goto L_0x0055;
    L_0x0021:
        r8 = r0.getVisibility();
        if (r8 != 0) goto L_0x0055;
    L_0x0027:
        r8 = k(r0);
        if (r8 == 0) goto L_0x0055;
    L_0x002d:
        r8 = r9.g(r0);
        if (r8 == 0) goto L_0x0055;
    L_0x0033:
        r8 = r0.getHeight();
        if (r8 >= r4) goto L_0x003f;
    L_0x0039:
        r0 = r2;
    L_0x003a:
        r2 = r3 + 1;
        r3 = r2;
        r2 = r0;
        goto L_0x0019;
    L_0x003f:
        r8 = 3;
        r8 = r9.a(r0, r8);
        if (r8 == 0) goto L_0x004f;
    L_0x0046:
        r0 = r0.getRight();
        if (r0 <= r1) goto L_0x012d;
    L_0x004c:
        r1 = r0;
        r0 = r2;
        goto L_0x003a;
    L_0x004f:
        r0 = r0.getLeft();
        if (r0 < r2) goto L_0x003a;
    L_0x0055:
        r0 = r2;
        goto L_0x003a;
    L_0x0057:
        r0 = 0;
        r3 = r9.getHeight();
        r10.clipRect(r1, r0, r2, r3);
    L_0x005f:
        r0 = r2;
        r7 = super.drawChild(r10, r11, r12);
        r10.restoreToCount(r6);
        r2 = r9.d;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3? 0 : -1));
        if (r2 <= 0) goto L_0x0099;
    L_0x006e:
        if (r5 == 0) goto L_0x0099;
    L_0x0070:
        r2 = r9.c;
        r3 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r2 = r2 & r3;
        r2 = r2 >>> 24;
        r2 = (float) r2;
        r3 = r9.d;
        r2 = r2 * r3;
        r2 = (int) r2;
        r2 = r2 << 24;
        r3 = r9.c;
        r4 = 16777215; // 0xffffff float:2.3509886E-38 double:8.2890456E-317;
        r3 = r3 & r4;
        r2 = r2 | r3;
        r3 = r9.e;
        r3.setColor(r2);
        r1 = (float) r1;
        r2 = 0;
        r3 = (float) r0;
        r0 = r9.getHeight();
        r4 = (float) r0;
        r5 = r9.e;
        r0 = r10;
        r0.drawRect(r1, r2, r3, r4, r5);
    L_0x0098:
        return r7;
    L_0x0099:
        r0 = r9.t;
        if (r0 == 0) goto L_0x00e0;
    L_0x009d:
        r0 = 3;
        r0 = r9.a(r11, r0);
        if (r0 == 0) goto L_0x00e0;
    L_0x00a4:
        r0 = r9.t;
        r0 = r0.getIntrinsicWidth();
        r1 = r11.getRight();
        r2 = r9.f;
        r2 = r2.b();
        r3 = 0;
        r4 = (float) r1;
        r2 = (float) r2;
        r2 = r4 / r2;
        r4 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = java.lang.Math.min(r2, r4);
        r2 = java.lang.Math.max(r3, r2);
        r3 = r9.t;
        r4 = r11.getTop();
        r0 = r0 + r1;
        r5 = r11.getBottom();
        r3.setBounds(r1, r4, r0, r5);
        r0 = r9.t;
        r1 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
        r1 = r1 * r2;
        r1 = (int) r1;
        r0.setAlpha(r1);
        r0 = r9.t;
        r0.draw(r10);
        goto L_0x0098;
    L_0x00e0:
        r0 = r9.u;
        if (r0 == 0) goto L_0x0098;
    L_0x00e4:
        r0 = 5;
        r0 = r9.a(r11, r0);
        if (r0 == 0) goto L_0x0098;
    L_0x00eb:
        r0 = r9.u;
        r0 = r0.getIntrinsicWidth();
        r1 = r11.getLeft();
        r2 = r9.getWidth();
        r2 = r2 - r1;
        r3 = r9.g;
        r3 = r3.b();
        r4 = 0;
        r2 = (float) r2;
        r3 = (float) r3;
        r2 = r2 / r3;
        r3 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = java.lang.Math.min(r2, r3);
        r2 = java.lang.Math.max(r4, r2);
        r3 = r9.u;
        r0 = r1 - r0;
        r4 = r11.getTop();
        r5 = r11.getBottom();
        r3.setBounds(r0, r4, r1, r5);
        r0 = r9.u;
        r1 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
        r1 = r1 * r2;
        r1 = (int) r1;
        r0.setAlpha(r1);
        r0 = r9.u;
        r0.draw(r10);
        goto L_0x0098;
    L_0x012d:
        r0 = r1;
        goto L_0x004c;
        */
    }

    int e(View view) {
        return n.a(((c) view.getLayoutParams()).a, ak.d(view));
    }

    boolean f(View view) {
        return ((c) view.getLayoutParams()).a == 0;
    }

    boolean g(View view) {
        return (n.a(((c) view.getLayoutParams()).a, ak.d(view)) & 7) != 0;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        if (layoutParams instanceof c) {
            return new c((c) layoutParams);
        }
        return layoutParams instanceof MarginLayoutParams ? new c((MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    public void h(View view) {
        if (g(view)) {
            if (this.l) {
                c cVar = (c) view.getLayoutParams();
                cVar.b = 1.0f;
                cVar.d = true;
            } else if (a(view, (int)o.MyAlertDialog_MAD_titleStyle)) {
                this.f.a(view, 0, view.getTop());
            } else {
                this.g.a(view, getWidth() - view.getWidth(), view.getTop());
            }
            invalidate();
        } else {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
    }

    public void i(View view) {
        if (g(view)) {
            if (this.l) {
                c cVar = (c) view.getLayoutParams();
                cVar.b = 0.0f;
                cVar.d = false;
            } else if (a(view, (int)o.MyAlertDialog_MAD_titleStyle)) {
                this.f.a(view, -view.getWidth(), view.getTop());
            } else {
                this.g.a(view, getWidth(), view.getTop());
            }
            invalidate();
        } else {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
    }

    public boolean j(View view) {
        if (!g(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        } else if (((c) view.getLayoutParams()).b > 0.0f) {
            return true;
        } else {
            return false;
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.l = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.l = true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int a = this.f.a(motionEvent) | this.g.a(motionEvent);
        boolean z;
        switch (z.a(motionEvent)) {
            case v.DropShadowView_cornerRadius:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.r = x;
                this.s = y;
                z = this.d > 0.0f && f(this.f.d((int) x, (int) y));
                this.o = false;
                this.p = false;
                break;
            case o.MyAlertDialog_myAlertDialogAccentColor:
            case o.MyAlertDialog_MAD_titleStyle:
                a(true);
                this.o = false;
                this.p = false;
                z = false;
                break;
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                if (this.f.d(o.MyAlertDialog_MAD_titleStyle)) {
                    this.h.a();
                    this.i.a();
                    z = false;
                }
                z = false;
                break;
            default:
                z = false;
                break;
        }
        return a != 0 || i != 0 || e() || this.p;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !f()) {
            return super.onKeyDown(i, keyEvent);
        }
        s.b(keyEvent);
        return true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View g = g();
        if (g != null && a(g) == 0) {
            b();
        }
        return g != null;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.k = true;
        int i5 = i3 - i;
        int childCount = getChildCount();
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (f(childAt)) {
                    childAt.layout(cVar.leftMargin, cVar.topMargin, cVar.leftMargin + childAt.getMeasuredWidth(), cVar.topMargin + childAt.getMeasuredHeight());
                } else {
                    int i7;
                    float f;
                    int i8;
                    int i9;
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, (int)o.MyAlertDialog_MAD_titleStyle)) {
                        i7 = ((int) (((float) measuredWidth) * cVar.b)) + (-measuredWidth);
                        f = ((float) (measuredWidth + i7)) / ((float) measuredWidth);
                    } else {
                        i7 = i5 - ((int) (((float) measuredWidth) * cVar.b));
                        f = ((float) (i5 - i7)) / ((float) measuredWidth);
                    }
                    i8 = f != cVar.b ? 1 : 0;
                    int i10;
                    switch (cVar.a & 112) {
                        case 16:
                            int i11 = i4 - i2;
                            i10 = (i11 - measuredHeight) / 2;
                            if (i10 < cVar.topMargin) {
                                i10 = cVar.topMargin;
                            } else if (i10 + measuredHeight > i11 - cVar.bottomMargin) {
                                i10 = i11 - cVar.bottomMargin - measuredHeight;
                            }
                            childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                            break;
                        case 80:
                            i10 = i4 - i2;
                            childAt.layout(i7, i10 - cVar.bottomMargin - childAt.getMeasuredHeight(), measuredWidth + i7, i10 - cVar.bottomMargin);
                            break;
                        default:
                            childAt.layout(i7, cVar.topMargin, measuredWidth + i7, measuredHeight);
                            break;
                    }
                    if (i8 != 0) {
                        b(childAt, f);
                    }
                    i9 = cVar.b > 0.0f ? 0 : o.MyAlertDialog_MAD_buttonBarStyle;
                    if (childAt.getVisibility() != i9) {
                        childAt.setVisibility(i9);
                    }
                }
            }
            i6++;
        }
        this.k = false;
        this.l = false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onMeasure(int r12, int r13) {
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onMeasure(int, int):void");
        /*
        r11 = this;
        r1 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        r4 = 0;
        r7 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = android.view.View.MeasureSpec.getMode(r12);
        r5 = android.view.View.MeasureSpec.getMode(r13);
        r2 = android.view.View.MeasureSpec.getSize(r12);
        r0 = android.view.View.MeasureSpec.getSize(r13);
        if (r3 != r10) goto L_0x001b;
    L_0x0019:
        if (r5 == r10) goto L_0x0046;
    L_0x001b:
        r6 = r11.isInEditMode();
        if (r6 == 0) goto L_0x0048;
    L_0x0021:
        if (r3 != r7) goto L_0x0040;
    L_0x0023:
        if (r5 != r7) goto L_0x0044;
    L_0x0025:
        r1 = r0;
    L_0x0026:
        r11.setMeasuredDimension(r2, r1);
        r5 = r11.getChildCount();
        r3 = r4;
    L_0x002e:
        if (r3 >= r5) goto L_0x0109;
    L_0x0030:
        r6 = r11.getChildAt(r3);
        r0 = r6.getVisibility();
        r7 = 8;
        if (r0 != r7) goto L_0x0050;
    L_0x003c:
        r0 = r3 + 1;
        r3 = r0;
        goto L_0x002e;
    L_0x0040:
        if (r3 != 0) goto L_0x0023;
    L_0x0042:
        r2 = r1;
        goto L_0x0023;
    L_0x0044:
        if (r5 == 0) goto L_0x0026;
    L_0x0046:
        r1 = r0;
        goto L_0x0026;
    L_0x0048:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "DrawerLayout must be measured with MeasureSpec.EXACTLY.";
        r0.<init>(r1);
        throw r0;
    L_0x0050:
        r0 = r6.getLayoutParams();
        r0 = (android.support.v4.widget.c) r0;
        r7 = r11.f(r6);
        if (r7 == 0) goto L_0x0077;
    L_0x005c:
        r7 = r0.leftMargin;
        r7 = r2 - r7;
        r8 = r0.rightMargin;
        r7 = r7 - r8;
        r7 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r10);
        r8 = r0.topMargin;
        r8 = r1 - r8;
        r0 = r0.bottomMargin;
        r0 = r8 - r0;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r10);
        r6.measure(r7, r0);
        goto L_0x003c;
    L_0x0077:
        r7 = r11.g(r6);
        if (r7 == 0) goto L_0x00da;
    L_0x007d:
        r7 = r11.e(r6);
        r7 = r7 & 7;
        r8 = r4 & r7;
        if (r8 == 0) goto L_0x00bc;
    L_0x0087:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Child drawer has absolute gravity ";
        r1 = r1.append(r2);
        r2 = b(r7);
        r1 = r1.append(r2);
        r2 = " but this ";
        r1 = r1.append(r2);
        r2 = "DrawerLayout";
        r1 = r1.append(r2);
        r2 = " already has a ";
        r1 = r1.append(r2);
        r2 = "drawer view along that edge";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x00bc:
        r7 = r11.b;
        r8 = r0.leftMargin;
        r7 = r7 + r8;
        r8 = r0.rightMargin;
        r7 = r7 + r8;
        r8 = r0.width;
        r7 = getChildMeasureSpec(r12, r7, r8);
        r8 = r0.topMargin;
        r9 = r0.bottomMargin;
        r8 = r8 + r9;
        r0 = r0.height;
        r0 = getChildMeasureSpec(r13, r8, r0);
        r6.measure(r7, r0);
        goto L_0x003c;
    L_0x00da:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Child ";
        r1 = r1.append(r2);
        r1 = r1.append(r6);
        r2 = " at index ";
        r1 = r1.append(r2);
        r1 = r1.append(r3);
        r2 = " does not have a valid layout_gravity - must be Gravity.LEFT, ";
        r1 = r1.append(r2);
        r2 = "Gravity.RIGHT or Gravity.NO_GRAVITY";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0109:
        return;
        */
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.a != 0) {
            View a = a(savedState.a);
            if (a != null) {
                h(a);
            }
        }
        a(savedState.b, (int)o.MyAlertDialog_MAD_titleStyle);
        a(savedState.c, (int)o.MyAlertDialog_MAD_textAppearanceMedium);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (g(childAt)) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.d) {
                    savedState.a = cVar.a;
                    break;
                }
            }
            i++;
        }
        savedState.b = this.m;
        savedState.c = this.n;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f.b(motionEvent);
        this.g.b(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & 255) {
            case v.DropShadowView_cornerRadius:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.r = x;
                this.s = y;
                this.o = false;
                this.p = false;
                break;
            case o.MyAlertDialog_myAlertDialogAccentColor:
                boolean z;
                x = motionEvent.getX();
                y = motionEvent.getY();
                View d = this.f.d((int) x, (int) y);
                if (d != null && f(d)) {
                    x -= this.r;
                    y -= this.s;
                    int d2 = this.f.d();
                    if (x * x + y * y < ((float) (d2 * d2))) {
                        View a = a();
                        if (a != null) {
                            z = a(a) == 2;
                            a(z);
                            this.o = false;
                        }
                    }
                }
                z = true;
                a(z);
                this.o = false;
                break;
            case o.MyAlertDialog_MAD_titleStyle:
                a(true);
                this.o = false;
                this.p = false;
                break;
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.o = z;
        if (z) {
            a(true);
        }
    }

    public void requestLayout() {
        if (!this.k) {
            super.requestLayout();
        }
    }

    public void setDrawerListener(b bVar) {
        this.q = bVar;
    }

    public void setDrawerLockMode(int i) {
        a(i, (int)o.MyAlertDialog_MAD_titleStyle);
        a(i, (int)o.MyAlertDialog_MAD_textAppearanceMedium);
    }

    public void setScrimColor(int i) {
        this.c = i;
        invalidate();
    }
}