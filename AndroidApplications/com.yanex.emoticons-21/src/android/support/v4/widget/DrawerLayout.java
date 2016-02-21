package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.af;
import android.support.v4.view.n;
import android.support.v4.view.r;
import android.support.v4.view.w;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.Menu;

public final class DrawerLayout extends ViewGroup {
    private static final int[] a;
    private int b;
    private int c;
    private float d;
    private Paint e;
    private final y f;
    private final y g;
    private final h h;
    private final h i;
    private int j;
    private boolean k;
    private boolean l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private f q;
    private float r;
    private float s;
    private Drawable t;
    private Drawable u;

    public class LayoutParams extends MarginLayoutParams {
        public int a;
        float b;
        boolean c;
        boolean d;

        public LayoutParams() {
            super(-1, -1);
            this.a = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a);
            this.a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(android.support.v4.widget.DrawerLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
            this.a = layoutParams.a;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 0;
        }
    }

    public class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        int a;
        int b;
        int c;

        static {
            CREATOR = new g();
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

    private void a(int i, int i2) {
        int a = n.a(i2, af.f(this));
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
            case IcsToast.LENGTH_LONG:
                a2 = a(a);
                if (a2 != null) {
                    d(a2);
                }
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                a2 = a(a);
                if (a2 != null) {
                    g(a2);
                }
            default:
                break;
        }
    }

    private void a(boolean z) {
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (c(childAt)) {
                if (!z || layoutParams.c) {
                    i2 = a(childAt, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER) ? i2 | this.f.a(childAt, -childAt.getWidth(), childAt.getTop()) : i2 | this.g.a(childAt, getWidth(), childAt.getTop());
                    layoutParams.c = false;
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

    static boolean a(View view, int i) {
        return (e(view) & i) == i;
    }

    static float b(View view) {
        return ((LayoutParams) view.getLayoutParams()).b;
    }

    private static String b(int i) {
        if ((i & 3) == 3) {
            return "LEFT";
        }
        return (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    static boolean c(View view) {
        return (n.a(((LayoutParams) view.getLayoutParams()).a, af.f(view)) & 7) != 0;
    }

    private static int e(View view) {
        return n.a(((LayoutParams) view.getLayoutParams()).a, af.f(view));
    }

    private View f() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (c(childAt) && h(childAt)) {
                return childAt;
            }
            i++;
        }
        return null;
    }

    private static boolean f(View view) {
        return ((LayoutParams) view.getLayoutParams()).a == 0;
    }

    private void g(View view) {
        if (c(view)) {
            if (this.l) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                layoutParams.b = 1.0f;
                layoutParams.d = true;
            } else if (a(view, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)) {
                this.f.a(view, 0, view.getTop());
            } else {
                this.g.a(view, getWidth() - view.getWidth(), view.getTop());
            }
            invalidate();
        } else {
            throw new IllegalArgumentException(new StringBuilder("View ").append(view).append(" is not a sliding drawer").toString());
        }
    }

    private static boolean h(View view) {
        if (!c(view)) {
            throw new IllegalArgumentException(new StringBuilder("View ").append(view).append(" is not a drawer").toString());
        } else if (((LayoutParams) view.getLayoutParams()).b > 0.0f) {
            return true;
        } else {
            return false;
        }
    }

    public final int a(View view) {
        int e = e(view);
        if (e == 3) {
            return this.m;
        }
        return e == 5 ? this.n : 0;
    }

    final View a(int i) {
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

    public final void a() {
        int a = n.a(8388611, af.f(this));
        View a2 = a(a);
        if (a2 == null) {
            throw new IllegalArgumentException(new StringBuilder("No drawer view found with absolute gravity ").append(b(a)).toString());
        }
        g(a2);
    }

    final void a(int i, View view) {
        int a = this.f.a();
        int a2 = this.g.a();
        if (a == 1 || a2 == 1) {
            a = 1;
        } else if (a == 2 || a2 == 2) {
            a = 2;
        } else {
            a = 0;
        }
        if (view != null && i == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.b == 0.0f) {
                layoutParams = (LayoutParams) view.getLayoutParams();
                if (layoutParams.d) {
                    layoutParams.d = false;
                    if (this.q != null) {
                        this.q.onDrawerClosed(view);
                    }
                    sendAccessibilityEvent(32);
                }
            } else if (layoutParams.b == 1.0f) {
                layoutParams = (LayoutParams) view.getLayoutParams();
                if (!layoutParams.d) {
                    layoutParams.d = true;
                    if (this.q != null) {
                        this.q.onDrawerOpened(view);
                    }
                    view.sendAccessibilityEvent(32);
                }
            }
        }
        if (a != this.j) {
            this.j = a;
            if (this.q != null) {
                this.q.onDrawerStateChanged(a);
            }
        }
    }

    final void a(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.b) {
            layoutParams.b = f;
            if (this.q != null) {
                this.q.onDrawerSlide(view, f);
            }
        }
    }

    public final void b() {
        int a = n.a(8388611, af.f(this));
        View a2 = a(a);
        if (a2 == null) {
            throw new IllegalArgumentException(new StringBuilder("No drawer view found with absolute gravity ").append(b(a)).toString());
        }
        d(a2);
    }

    public final boolean c() {
        View a = a(8388611);
        if (a == null) {
            return false;
        }
        if (c(a)) {
            return ((LayoutParams) a.getLayoutParams()).d;
        }
        throw new IllegalArgumentException(new StringBuilder("View ").append(a).append(" is not a drawer").toString());
    }

    protected final boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams);
    }

    public final void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        int i = 0;
        while (i < childCount) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).b);
            i++;
        }
        this.d = f;
        if ((this.f.g() | this.g.g()) != 0) {
            af.b(this);
        }
    }

    public final void d(View view) {
        if (c(view)) {
            if (this.l) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                layoutParams.b = 0.0f;
                layoutParams.d = false;
            } else if (a(view, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)) {
                this.f.a(view, -view.getWidth(), view.getTop());
            } else {
                this.g.a(view, getWidth(), view.getTop());
            }
            invalidate();
        } else {
            throw new IllegalArgumentException(new StringBuilder("View ").append(view).append(" is not a sliding drawer").toString());
        }
    }

    public final boolean d() {
        View a = a(8388611);
        return a != null ? h(a) : false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final boolean drawChild(android.graphics.Canvas r11, android.view.View r12, long r13) {
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
        /*
        r10 = this;
        r4 = r10.getHeight();
        r5 = f(r12);
        r1 = 0;
        r2 = r10.getWidth();
        r6 = r11.save();
        if (r5 == 0) goto L_0x006b;
    L_0x0013:
        r7 = r10.getChildCount();
        r0 = 0;
        r3 = r0;
    L_0x0019:
        if (r3 >= r7) goto L_0x0063;
    L_0x001b:
        r8 = r10.getChildAt(r3);
        if (r8 == r12) goto L_0x0061;
    L_0x0021:
        r0 = r8.getVisibility();
        if (r0 != 0) goto L_0x0061;
    L_0x0027:
        r0 = r8.getBackground();
        if (r0 == 0) goto L_0x0059;
    L_0x002d:
        r0 = r0.getOpacity();
        r9 = -1;
        if (r0 != r9) goto L_0x0057;
    L_0x0034:
        r0 = 1;
    L_0x0035:
        if (r0 == 0) goto L_0x0061;
    L_0x0037:
        r0 = c(r8);
        if (r0 == 0) goto L_0x0061;
    L_0x003d:
        r0 = r8.getHeight();
        if (r0 < r4) goto L_0x0061;
    L_0x0043:
        r0 = 3;
        r0 = a(r8, r0);
        if (r0 == 0) goto L_0x005b;
    L_0x004a:
        r0 = r8.getRight();
        if (r0 <= r1) goto L_0x0139;
    L_0x0050:
        r1 = r0;
        r0 = r2;
    L_0x0052:
        r2 = r3 + 1;
        r3 = r2;
        r2 = r0;
        goto L_0x0019;
    L_0x0057:
        r0 = 0;
        goto L_0x0035;
    L_0x0059:
        r0 = 0;
        goto L_0x0035;
    L_0x005b:
        r0 = r8.getLeft();
        if (r0 < r2) goto L_0x0052;
    L_0x0061:
        r0 = r2;
        goto L_0x0052;
    L_0x0063:
        r0 = 0;
        r3 = r10.getHeight();
        r11.clipRect(r1, r0, r2, r3);
    L_0x006b:
        r0 = r2;
        r7 = super.drawChild(r11, r12, r13);
        r11.restoreToCount(r6);
        r2 = r10.d;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3? 0 : -1));
        if (r2 <= 0) goto L_0x00a5;
    L_0x007a:
        if (r5 == 0) goto L_0x00a5;
    L_0x007c:
        r2 = r10.c;
        r3 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r2 = r2 & r3;
        r2 = r2 >>> 24;
        r2 = (float) r2;
        r3 = r10.d;
        r2 = r2 * r3;
        r2 = (int) r2;
        r2 = r2 << 24;
        r3 = r10.c;
        r4 = 16777215; // 0xffffff float:2.3509886E-38 double:8.2890456E-317;
        r3 = r3 & r4;
        r2 = r2 | r3;
        r3 = r10.e;
        r3.setColor(r2);
        r1 = (float) r1;
        r2 = 0;
        r3 = (float) r0;
        r0 = r10.getHeight();
        r4 = (float) r0;
        r5 = r10.e;
        r0 = r11;
        r0.drawRect(r1, r2, r3, r4, r5);
    L_0x00a4:
        return r7;
    L_0x00a5:
        r0 = r10.t;
        if (r0 == 0) goto L_0x00ec;
    L_0x00a9:
        r0 = 3;
        r0 = a(r12, r0);
        if (r0 == 0) goto L_0x00ec;
    L_0x00b0:
        r0 = r10.t;
        r0 = r0.getIntrinsicWidth();
        r1 = r12.getRight();
        r2 = r10.f;
        r2 = r2.b();
        r3 = 0;
        r4 = (float) r1;
        r2 = (float) r2;
        r2 = r4 / r2;
        r4 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = java.lang.Math.min(r2, r4);
        r2 = java.lang.Math.max(r3, r2);
        r3 = r10.t;
        r4 = r12.getTop();
        r0 = r0 + r1;
        r5 = r12.getBottom();
        r3.setBounds(r1, r4, r0, r5);
        r0 = r10.t;
        r1 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
        r1 = r1 * r2;
        r1 = (int) r1;
        r0.setAlpha(r1);
        r0 = r10.t;
        r0.draw(r11);
        goto L_0x00a4;
    L_0x00ec:
        r0 = r10.u;
        if (r0 == 0) goto L_0x00a4;
    L_0x00f0:
        r0 = 5;
        r0 = a(r12, r0);
        if (r0 == 0) goto L_0x00a4;
    L_0x00f7:
        r0 = r10.u;
        r0 = r0.getIntrinsicWidth();
        r1 = r12.getLeft();
        r2 = r10.getWidth();
        r2 = r2 - r1;
        r3 = r10.g;
        r3 = r3.b();
        r4 = 0;
        r2 = (float) r2;
        r3 = (float) r3;
        r2 = r2 / r3;
        r3 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = java.lang.Math.min(r2, r3);
        r2 = java.lang.Math.max(r4, r2);
        r3 = r10.u;
        r0 = r1 - r0;
        r4 = r12.getTop();
        r5 = r12.getBottom();
        r3.setBounds(r0, r4, r1, r5);
        r0 = r10.u;
        r1 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
        r1 = r1 * r2;
        r1 = (int) r1;
        r0.setAlpha(r1);
        r0 = r10.u;
        r0.draw(r11);
        goto L_0x00a4;
    L_0x0139:
        r0 = r1;
        goto L_0x0050;
        */
    }

    protected final android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public final android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected final android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.l = true;
    }

    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.l = true;
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int a = this.f.a(motionEvent) | this.g.a(motionEvent);
        switch (w.a(motionEvent)) {
            case IcsToast.LENGTH_SHORT:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.r = x;
                this.s = y;
                z = this.d > 0.0f && f(this.f.b((int) x, (int) y));
                this.o = false;
                this.p = false;
                break;
            case IcsToast.LENGTH_LONG:
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                a(true);
                this.o = false;
                this.p = false;
                z = false;
                break;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                if (this.f.h()) {
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
        if (a == 0 && i == 0) {
            int childCount = getChildCount();
            a = 0;
            while (a < childCount) {
                if (((LayoutParams) getChildAt(a).getLayoutParams()).c) {
                    z = true;
                    if (i == 0 && !this.p) {
                        return false;
                    }
                } else {
                    a++;
                }
            }
            z = false;
            return false;
        }
        return true;
    }

    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if ((f() != null ? true : 0) != 0) {
                r.c(keyEvent);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View f = f();
        if (f != null && a(f) == 0) {
            a(false);
        }
        return f != null;
    }

    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.k = true;
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (f(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int i6;
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    i6 = a(childAt, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER) ? (-measuredWidth) + ((int) (((float) measuredWidth) * layoutParams.b)) : i3 - i - ((int) (((float) measuredWidth) * layoutParams.b));
                    int i7;
                    switch (layoutParams.a & 112) {
                        case Menu.CATEGORY_SHIFT:
                            int i8 = i4 - i2;
                            i7 = (i8 - measuredHeight) / 2;
                            if (i7 < layoutParams.topMargin) {
                                i7 = layoutParams.topMargin;
                            } else if (i7 + measuredHeight > i8 - layoutParams.bottomMargin) {
                                i7 = i8 - layoutParams.bottomMargin - measuredHeight;
                            }
                            childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
                            break;
                        case 80:
                            i7 = i4 - i2;
                            childAt.layout(i6, i7 - layoutParams.bottomMargin - childAt.getMeasuredHeight(), measuredWidth + i6, i7 - layoutParams.bottomMargin);
                            break;
                        default:
                            childAt.layout(i6, layoutParams.topMargin, measuredWidth + i6, measuredHeight);
                            break;
                    }
                    if (layoutParams.b == 0.0f) {
                        childAt.setVisibility(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
                    }
                }
            }
            i5++;
        }
        this.k = false;
        this.l = false;
    }

    protected final void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (mode == 1073741824 && mode2 == 1073741824) {
            setMeasuredDimension(size, size2);
            int childCount = getChildCount();
            mode2 = 0;
            while (mode2 < childCount) {
                View childAt = getChildAt(mode2);
                if (childAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    if (f(childAt)) {
                        childAt.measure(MeasureSpec.makeMeasureSpec(size - layoutParams.leftMargin - layoutParams.rightMargin, 1073741824), MeasureSpec.makeMeasureSpec(size2 - layoutParams.topMargin - layoutParams.bottomMargin, 1073741824));
                    } else if (c(childAt)) {
                        int e = e(childAt) & 7;
                        if ((e & 0) != 0) {
                            throw new IllegalStateException(new StringBuilder("Child drawer has absolute gravity ").append(b(e)).append(" but this DrawerLayout already has a drawer view along that edge").toString());
                        }
                        childAt.measure(getChildMeasureSpec(i, this.b + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), getChildMeasureSpec(i2, layoutParams.topMargin + layoutParams.bottomMargin, layoutParams.height));
                    } else {
                        throw new IllegalStateException(new StringBuilder("Child ").append(childAt).append(" at index ").append(mode2).append(" does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY").toString());
                    }
                }
                mode2++;
            }
        } else {
            throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
        }
    }

    protected final void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.a != 0) {
            View a = a(savedState.a);
            if (a != null) {
                g(a);
            }
        }
        a(savedState.b, (int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER);
        a(savedState.c, (int)FragmentManagerImpl.ANIM_STYLE_FADE_ENTER);
    }

    protected final Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (c(childAt)) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.d) {
                    savedState.a = layoutParams.a;
                    break;
                }
            }
            i++;
        }
        savedState.b = this.m;
        savedState.c = this.n;
        return savedState;
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.f.b(motionEvent);
        this.g.b(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & 255) {
            case IcsToast.LENGTH_SHORT:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.r = x;
                this.s = y;
                this.o = false;
                this.p = false;
                break;
            case IcsToast.LENGTH_LONG:
                boolean z;
                x = motionEvent.getX();
                y = motionEvent.getY();
                View b = this.f.b((int) x, (int) y);
                if (b != null && f(b)) {
                    x -= this.r;
                    y -= this.s;
                    int d = this.f.d();
                    if (x * x + y * y < ((float) (d * d))) {
                        View view;
                        int childCount = getChildCount();
                        d = 0;
                        while (d < childCount) {
                            View childAt = getChildAt(d);
                            if (((LayoutParams) childAt.getLayoutParams()).d) {
                                view = childAt;
                                if (view != null) {
                                    z = a(view) != 2;
                                    a(z);
                                    this.o = false;
                                }
                            } else {
                                d++;
                            }
                        }
                        view = null;
                        if (view != null) {
                            if (a(view) != 2) {
                            }
                            a(z);
                            this.o = false;
                        }
                    }
                }
                z = true;
                a(z);
                this.o = false;
                break;
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                a(true);
                this.o = false;
                this.p = false;
                break;
        }
        return true;
    }

    public final void requestDisallowInterceptTouchEvent(boolean z) {
        if (!(this.f.a(1) || this.g.a((int)IcsLinearLayout.SHOW_DIVIDER_MIDDLE))) {
            super.requestDisallowInterceptTouchEvent(z);
        }
        this.o = z;
        if (z) {
            a(true);
        }
    }

    public final void requestLayout() {
        if (!this.k) {
            super.requestLayout();
        }
    }
}