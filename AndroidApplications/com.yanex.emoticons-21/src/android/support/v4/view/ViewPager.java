package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.a.a;
import android.support.v4.widget.i;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.Menu;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager extends ViewGroup {
    private static final int[] a;
    private static final bc ae;
    private static final Comparator c;
    private static final Interpolator d;
    private boolean A;
    private boolean B;
    private int C;
    private int D;
    private int E;
    private float F;
    private float G;
    private float H;
    private float I;
    private int J;
    private VelocityTracker K;
    private int L;
    private int M;
    private int N;
    private int O;
    private boolean P;
    private i Q;
    private i R;
    private boolean S;
    private boolean T;
    private boolean U;
    private int V;
    private ay W;
    private ay Z;
    private ax aa;
    private az ab;
    private int ac;
    private ArrayList ad;
    private final Runnable af;
    private int ag;
    private int b;
    private final ArrayList e;
    private final av f;
    private final Rect g;
    private aa h;
    private int i;
    private int j;
    private Parcelable k;
    private ClassLoader l;
    private Scroller m;
    private ba n;
    private int o;
    private Drawable p;
    private int q;
    private int r;
    private float s;
    private float t;
    private int u;
    private int v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;

    public class LayoutParams extends android.view.ViewGroup.LayoutParams {
        public boolean a;
        public int b;
        float c;
        boolean d;
        int e;
        int f;

        public LayoutParams() {
            super(-1, -1);
            this.c = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.c = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a);
            this.b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    public class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        int a;
        Parcelable b;
        ClassLoader c;

        static {
            CREATOR = a.a(new bb());
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            if (classLoader == null) {
                classLoader = getClass().getClassLoader();
            }
            this.a = parcel.readInt();
            this.b = parcel.readParcelable(classLoader);
            this.c = classLoader;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return new StringBuilder("FragmentPager.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" position=").append(this.a).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeParcelable(this.b, i);
        }
    }

    static {
        a = new int[]{16842931};
        c = new ar();
        d = new as();
        ae = new bc();
    }

    public ViewPager(Context context) {
        super(context);
        this.e = new ArrayList();
        this.f = new av();
        this.g = new Rect();
        this.j = -1;
        this.k = null;
        this.l = null;
        this.s = -3.4028235E38f;
        this.t = Float.MAX_VALUE;
        this.z = 1;
        this.J = -1;
        this.S = true;
        this.T = false;
        this.af = new at(this);
        this.ag = 0;
        e();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new ArrayList();
        this.f = new av();
        this.g = new Rect();
        this.j = -1;
        this.k = null;
        this.l = null;
        this.s = -3.4028235E38f;
        this.t = Float.MAX_VALUE;
        this.z = 1;
        this.J = -1;
        this.S = true;
        this.T = false;
        this.af = new at(this);
        this.ag = 0;
        e();
    }

    private Rect a(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        } else {
            rect2.left = view.getLeft();
            rect2.right = view.getRight();
            rect2.top = view.getTop();
            rect2.bottom = view.getBottom();
            ViewParent parent = view.getParent();
            while (parent instanceof ViewGroup && parent != this) {
                ViewGroup viewGroup = (ViewGroup) parent;
                rect2.left += viewGroup.getLeft();
                rect2.right += viewGroup.getRight();
                rect2.top += viewGroup.getTop();
                rect2.bottom += viewGroup.getBottom();
                parent = viewGroup.getParent();
            }
            return rect2;
        }
    }

    private av a(int i, int i2) {
        av avVar = new av();
        avVar.b = i;
        avVar.a = this.h.instantiateItem(this, i);
        avVar.d = this.h.getPageWidth(i);
        if (i2 < 0 || i2 >= this.e.size()) {
            this.e.add(avVar);
        } else {
            this.e.add(i2, avVar);
        }
        return avVar;
    }

    private av a(View view) {
        int i = 0;
        while (i < this.e.size()) {
            av avVar = (av) this.e.get(i);
            if (this.h.isViewFromObject(view, avVar.a)) {
                return avVar;
            }
            i++;
        }
        return null;
    }

    private void a(int i, boolean z, int i2, boolean z2) {
        av d = d(i);
        int i3 = 0;
        if (d != null) {
            i3 = (int) (((float) f()) * Math.max(this.s, Math.min(d.e, this.t)));
        }
        if (z) {
            if (getChildCount() == 0) {
                b(false);
            } else {
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int i4 = i3 - scrollX;
                int i5 = 0 - scrollY;
                if (i4 == 0 && i5 == 0) {
                    a(false);
                    c();
                    b(0);
                } else {
                    b(true);
                    b((int)IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
                    i3 = f();
                    int i6 = i3 / 2;
                    float f = (float) i6;
                    float sin = ((float) i6) * ((float) Math.sin((double) ((float) (((double) (Math.min(1.0f, (1.0f * ((float) Math.abs(i4))) / ((float) i3)) - 0.5f)) * 0.4712389167638204d)))) + f;
                    int abs = Math.abs(i2);
                    if (abs > 0) {
                        i3 = Math.round(1000.0f * Math.abs(sin / ((float) abs))) * 4;
                    } else {
                        i3 = (int) (((((float) Math.abs(i4)) / ((((float) i3) * this.h.getPageWidth(this.i)) + ((float) this.o))) + 1.0f) * 100.0f);
                    }
                    this.m.startScroll(scrollX, scrollY, i4, i5, Math.min(i3, 600));
                    af.b(this);
                }
            }
            if (z2 && this.W != null) {
                this.W.a(i);
            }
            if (z2 && this.Z != null) {
                this.Z.a(i);
            }
        } else {
            if (z2 && this.W != null) {
                this.W.a(i);
            }
            if (z2 && this.Z != null) {
                this.Z.a(i);
            }
            a(false);
            scrollTo(i3, 0);
        }
    }

    private void a(int i, boolean z, boolean z2) {
        a(i, z, z2, 0);
    }

    private void a(int i, boolean z, boolean z2, int i2) {
        boolean z3 = false;
        if (this.h == null || this.h.getCount() <= 0) {
            b(false);
        } else if (z2 || this.i != i || this.e.size() == 0) {
            if (i < 0) {
                i = 0;
            } else if (i >= this.h.getCount()) {
                i = this.h.getCount() - 1;
            }
            int i3 = this.z;
            if (i > this.i + i3 || i < this.i - i3) {
                int i4 = 0;
                while (i4 < this.e.size()) {
                    ((av) this.e.get(i4)).c = true;
                    i4++;
                }
            }
            if (this.i != i) {
                z3 = true;
            }
            if (this.S) {
                this.i = i;
                if (z3 && this.W != null) {
                    this.W.a(i);
                }
                if (z3 && this.Z != null) {
                    this.Z.a(i);
                }
                requestLayout();
            } else {
                c(i);
                a(i, z, i2, z3);
            }
        } else {
            b(false);
        }
    }

    private void a(av avVar, int i, av avVar2) {
        float f;
        float f2;
        int i2;
        av avVar3;
        int count = this.h.getCount();
        int f3 = f();
        f = f3 > 0 ? ((float) this.o) / ((float) f3) : 0.0f;
        if (avVar2 != null) {
            f3 = avVar2.b;
            int i3;
            if (f3 < avVar.b) {
                f2 = avVar2.e + avVar2.d + f;
                i3 = f3 + 1;
                i2 = 0;
                while (i3 <= avVar.b && i2 < this.e.size()) {
                    avVar3 = (av) this.e.get(i2);
                    while (i3 > avVar3.b && i2 < this.e.size() - 1) {
                        i2++;
                        avVar3 = (av) this.e.get(i2);
                    }
                    while (i3 < avVar3.b) {
                        f2 += this.h.getPageWidth(i3) + f;
                        i3++;
                    }
                    avVar3.e = f2;
                    f2 += avVar3.d + f;
                    i3++;
                }
            } else if (f3 > avVar.b) {
                i2 = this.e.size() - 1;
                f2 = avVar2.e;
                i3 = f3 - 1;
                while (i3 >= avVar.b && i2 >= 0) {
                    avVar3 = (av) this.e.get(i2);
                    while (i3 < avVar3.b && i2 > 0) {
                        i2--;
                        avVar3 = (av) this.e.get(i2);
                    }
                    while (i3 > avVar3.b) {
                        f2 -= this.h.getPageWidth(i3) + f;
                        i3--;
                    }
                    f2 -= avVar3.d + f;
                    avVar3.e = f2;
                    i3--;
                }
            }
        }
        int size = this.e.size();
        float f4 = avVar.e;
        i2 = avVar.b - 1;
        this.s = avVar.b == 0 ? avVar.e : -3.4028235E38f;
        this.t = avVar.b == count + -1 ? avVar.e + avVar.d - 1.0f : Float.MAX_VALUE;
        int i4 = i - 1;
        while (i4 >= 0) {
            avVar3 = (av) this.e.get(i4);
            f2 = f4;
            while (i2 > avVar3.b) {
                f2 -= this.h.getPageWidth(i2) + f;
                i2--;
            }
            f4 = f2 - avVar3.d + f;
            avVar3.e = f4;
            if (avVar3.b == 0) {
                this.s = f4;
            }
            i2--;
            i4--;
        }
        f4 = avVar.e + avVar.d + f;
        i2 = avVar.b + 1;
        i4 = i + 1;
        while (i4 < size) {
            avVar3 = (av) this.e.get(i4);
            f2 = f4;
            while (i2 < avVar3.b) {
                f2 = this.h.getPageWidth(i2) + f + f2;
                i2++;
            }
            if (avVar3.b == count - 1) {
                this.t = avVar3.d + f2 - 1.0f;
            }
            avVar3.e = f2;
            f4 = f2 + avVar3.d + f;
            i2++;
            i4++;
        }
        this.T = false;
    }

    private void a(MotionEvent motionEvent) {
        int b = w.b(motionEvent);
        if (w.b(motionEvent, b) == this.J) {
            b = b == 0 ? 1 : 0;
            this.F = w.c(motionEvent, b);
            this.J = w.b(motionEvent, b);
            if (this.K != null) {
                this.K.clear();
            }
        }
    }

    private void a(boolean z) {
        int i;
        int scrollX;
        int scrollY;
        i = this.ag == 2;
        if (i != 0) {
            b(false);
            this.m.abortAnimation();
            scrollX = getScrollX();
            scrollY = getScrollY();
            int currX = this.m.getCurrX();
            int currY = this.m.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
            }
        }
        this.y = false;
        scrollX = 0;
        scrollY = i;
        while (scrollX < this.e.size()) {
            av avVar = (av) this.e.get(scrollX);
            if (avVar.c) {
                avVar.c = false;
                boolean z2 = true;
            }
            scrollX++;
        }
        if (scrollY == 0) {
            return;
        }
        if (z) {
            af.a(this, this.af);
        } else {
            this.af.run();
        }
    }

    private boolean a(float f) {
        float f2;
        boolean z = 1;
        boolean z2 = false;
        float f3 = this.F - f;
        this.F = f;
        float scrollX = ((float) getScrollX()) + f3;
        int f4 = f();
        float f5 = ((float) f4) * this.s;
        float f6 = ((float) f4) * this.t;
        av avVar = (av) this.e.get(0);
        av avVar2 = (av) this.e.get(this.e.size() - 1);
        boolean z3;
        if (avVar.b != 0) {
            f5 = avVar.e * ((float) f4);
            z3 = false;
        } else {
            z3 = true;
        }
        if (avVar2.b != this.h.getCount() - 1) {
            f2 = avVar2.e * ((float) f4);
            z = false;
        } else {
            f2 = f6;
        }
        if (scrollX < f5) {
            if (i != 0) {
                z2 = this.Q.a(Math.abs(f5 - scrollX) / ((float) f4));
            }
        } else if (scrollX > f2) {
            if (i != 0) {
                z2 = this.R.a(Math.abs(scrollX - f2) / ((float) f4));
            }
            f5 = f2;
        } else {
            f5 = scrollX;
        }
        this.F += f5 - ((float) ((int) f5));
        scrollTo((int) f5, getScrollY());
        h();
        return z2;
    }

    private boolean a(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            int i4 = viewGroup.getChildCount() - 1;
            while (i4 >= 0) {
                View childAt = viewGroup.getChildAt(i4);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    if (a(childAt, true, i, i2 + scrollX - childAt.getLeft(), i3 + scrollY - childAt.getTop())) {
                        return true;
                    }
                }
                i4--;
            }
        }
        return z && af.a(view, -i);
    }

    private av b(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return a(view);
            }
            if (parent != null && parent instanceof View) {
                view = (View) parent;
            }
            return null;
        }
    }

    private void b(int i) {
        if (this.ag != i) {
            this.ag = i;
            if (this.ab != null) {
                int i2 = i != 0 ? 1 : false;
                int childCount = getChildCount();
                int i3 = 0;
                while (i3 < childCount) {
                    af.a(getChildAt(i3), i2 != 0 ? IcsLinearLayout.SHOW_DIVIDER_MIDDLE : 0, null);
                    i3++;
                }
            }
            if (this.W != null) {
                ay ayVar = this.W;
            }
        }
    }

    private void b(boolean z) {
        if (this.x != z) {
            this.x = z;
        }
    }

    private void c(int i) {
        int i2;
        av avVar;
        int i3;
        if (this.i != i) {
            i2 = this.i < i ? 66 : 17;
            av d = d(this.i);
            this.i = i;
            avVar = d;
            i3 = i2;
        } else {
            avVar = null;
            i3 = 2;
        }
        if (this.h == null) {
            g();
        } else if (this.y) {
            g();
        } else if (getWindowToken() != null) {
            this.h.startUpdate(this);
            i2 = this.z;
            int max = Math.max(0, this.i - i2);
            int count = this.h.getCount();
            int min = Math.min(count - 1, i2 + this.i);
            if (count != this.b) {
                String resourceName;
                try {
                    resourceName = getResources().getResourceName(getId());
                } catch (NotFoundException e) {
                    resourceName = Integer.toHexString(getId());
                }
                throw new IllegalStateException(new StringBuilder("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ").append(this.b).append(", found: ").append(count).append(" Pager id: ").append(resourceName).append(" Pager class: ").append(getClass()).append(" Problematic adapter: ").append(this.h.getClass()).toString());
            } else {
                av avVar2;
                av a;
                av avVar3;
                int i4 = 0;
                while (i4 < this.e.size()) {
                    avVar2 = (av) this.e.get(i4);
                    if (avVar2.b >= this.i) {
                        if (avVar2.b != this.i) goto L_0x0318;
                        break;
                    } else {
                        i4++;
                    }
                }
                avVar2 = null;
                a = (avVar2 != null || count <= 0) ? avVar2 : a(this.i, i4);
                if (a != null) {
                    int i5 = i4 - 1;
                    avVar2 = i5 >= 0 ? (av) this.e.get(i5) : null;
                    float paddingLeft = ((float) getPaddingLeft()) / ((float) f()) + 2.0f - a.d;
                    float f = 0.0f;
                    int i6 = this.i - 1;
                    int i7 = i5;
                    i5 = i4;
                    i4 = i7;
                    while (i6 >= 0) {
                        if (f >= paddingLeft && i6 < max) {
                            if (avVar2 == null) {
                                break;
                            } else if (i6 == avVar2.b && !avVar2.c) {
                                this.e.remove(i4);
                                this.h.destroyItem(this, i6, avVar2.a);
                                i4--;
                                i5--;
                                avVar2 = i4 >= 0 ? (av) this.e.get(i4) : null;
                            }
                        } else if (avVar2 == null || i6 != avVar2.b) {
                            f += a(i6, i4 + 1).d;
                            i5++;
                            avVar2 = i4 >= 0 ? (av) this.e.get(i4) : null;
                        } else {
                            f += avVar2.d;
                            i4--;
                            avVar2 = i4 >= 0 ? (av) this.e.get(i4) : null;
                        }
                        i6--;
                    }
                    float f2 = a.d;
                    int i8 = i5 + 1;
                    if (f2 < 2.0f) {
                        avVar2 = i8 < this.e.size() ? (av) this.e.get(i8) : null;
                        float paddingRight = 2.0f + ((float) getPaddingRight()) / ((float) f());
                        i6 = this.i + 1;
                        while (i6 < count) {
                            float f3;
                            float f4;
                            if (f2 >= paddingRight && i6 > min) {
                                if (avVar2 == null) {
                                    break;
                                } else if (i6 != avVar2.b || avVar2.c) {
                                    f3 = f2;
                                    avVar3 = avVar2;
                                    f4 = f3;
                                } else {
                                    this.e.remove(i8);
                                    this.h.destroyItem(this, i6, avVar2.a);
                                    f3 = f2;
                                    avVar3 = i8 < this.e.size() ? (av) this.e.get(i8) : null;
                                    f4 = f3;
                                }
                            } else if (avVar2 == null || i6 != avVar2.b) {
                                avVar2 = a(i6, i8);
                                i8++;
                                f3 = f2 + avVar2.d;
                                avVar3 = i8 < this.e.size() ? (av) this.e.get(i8) : null;
                                f4 = f3;
                            } else {
                                i8++;
                                f3 = f2 + avVar2.d;
                                avVar3 = i8 < this.e.size() ? (av) this.e.get(i8) : null;
                                f4 = f3;
                            }
                            i6++;
                            f3 = f4;
                            avVar2 = avVar3;
                            f2 = f3;
                        }
                    }
                    a(a, i5, avVar);
                }
                this.h.setPrimaryItem(this, this.i, a != null ? a.a : null);
                this.h.finishUpdate(this);
                i4 = getChildCount();
                int i9 = 0;
                while (i9 < i4) {
                    View childAt = getChildAt(i9);
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    layoutParams.f = i9;
                    if (!layoutParams.a && layoutParams.c == 0.0f) {
                        av a2 = a(childAt);
                        if (a2 != null) {
                            layoutParams.c = a2.d;
                            layoutParams.e = a2.b;
                        }
                    }
                    i9++;
                }
                g();
                if (hasFocus()) {
                    View findFocus = findFocus();
                    avVar2 = findFocus != null ? b(findFocus) : null;
                    if (avVar2 == null || avVar2.b != this.i) {
                        i2 = 0;
                        while (i2 < getChildCount()) {
                            View childAt2 = getChildAt(i2);
                            avVar3 = a(childAt2);
                            if (avVar3 == null || avVar3.b != this.i || !childAt2.requestFocus(i)) {
                                i2++;
                            } else {
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    private av d(int i) {
        int i2 = 0;
        while (i2 < this.e.size()) {
            av avVar = (av) this.e.get(i2);
            if (avVar.b == i) {
                return avVar;
            }
            i2++;
        }
        return null;
    }

    private void e() {
        setWillNotDraw(false);
        setDescendantFocusability(Menu.CATEGORY_ALTERNATIVE);
        setFocusable(true);
        Context context = getContext();
        this.m = new Scroller(context, d);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.E = an.a(viewConfiguration);
        this.L = (int) (400.0f * f);
        this.M = viewConfiguration.getScaledMaximumFlingVelocity();
        this.Q = new i(context);
        this.R = new i(context);
        this.N = (int) (25.0f * f);
        this.O = (int) (2.0f * f);
        this.C = (int) (16.0f * f);
        af.a(this, new aw(this));
        if (af.c(this) == 0) {
            af.d(this);
        }
    }

    private boolean e(int i) {
        View view;
        boolean z;
        boolean z2 = false;
        View findFocus = findFocus();
        if (findFocus == this) {
            view = null;
        } else {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (parent instanceof ViewGroup) {
                    if (parent == this) {
                        z = true;
                        break;
                    } else {
                        parent = parent.getParent();
                    }
                }
                z = false;
                if (i == 0) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(findFocus.getClass().getSimpleName());
                    parent = findFocus.getParent();
                    while (parent instanceof ViewGroup) {
                        stringBuilder.append(" => ").append(parent.getClass().getSimpleName());
                        parent = parent.getParent();
                    }
                    Log.e("ViewPager", new StringBuilder("arrowScroll tried to find focus based on non-child current focused view ").append(stringBuilder.toString()).toString());
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                z = l();
            } else {
                if (i != 66) {
                }
                if (this.h == null || this.i >= this.h.getCount() - 1) {
                    z = false;
                } else {
                    a(this.i + 1, true);
                    z = true;
                }
            }
        } else if (i == 17) {
            z = (view == null || a(this.g, findNextFocus).left < a(this.g, view).left) ? findNextFocus.requestFocus() : l();
        } else {
            if (i == 66) {
                int i2 = a(this.g, findNextFocus).left;
                int i3 = a(this.g, view).left;
                if (view == null || i2 > i3) {
                    z = findNextFocus.requestFocus();
                }
                z = false;
            }
            if (z2) {
                playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
            }
            return z2;
        }
        z2 = z;
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z2;
    }

    private int f() {
        return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    }

    private void g() {
        if (this.ac != 0) {
            if (this.ad == null) {
                this.ad = new ArrayList();
            } else {
                this.ad.clear();
            }
            int childCount = getChildCount();
            int i = 0;
            while (i < childCount) {
                this.ad.add(getChildAt(i));
                i++;
            }
            Collections.sort(this.ad, ae);
        }
    }

    private boolean h() {
        if (this.e.size() == 0) {
            this.U = false;
            i();
            if (this.U) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else {
            av j = j();
            f();
            int i = this.o;
            i = this.o;
            i = j.b;
            float f = j.e;
            float f2 = j.d;
            this.U = false;
            i();
            if (this.U) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    private void i() {
        int paddingLeft;
        int paddingRight;
        if (this.V > 0) {
            int scrollX = getScrollX();
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i = 0;
            while (i < childCount) {
                int i2;
                View childAt = getChildAt(i);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a) {
                    int max;
                    switch (layoutParams.b & 7) {
                        case IcsToast.LENGTH_LONG:
                            max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            i2 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i2;
                            break;
                        case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                            max = childAt.getWidth() + paddingLeft;
                            i2 = paddingLeft;
                            paddingLeft = paddingRight;
                            paddingRight = max;
                            max = i2;
                            break;
                        case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                            max = width - paddingRight - childAt.getMeasuredWidth();
                            i2 = paddingRight + childAt.getMeasuredWidth();
                            paddingRight = paddingLeft;
                            paddingLeft = i2;
                            break;
                        default:
                            max = paddingLeft;
                            i2 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i2;
                            break;
                    }
                    max = max + scrollX - childAt.getLeft();
                    if (max != 0) {
                        childAt.offsetLeftAndRight(max);
                    }
                } else {
                    i2 = paddingRight;
                    paddingRight = paddingLeft;
                    paddingLeft = i2;
                }
                i++;
                i2 = paddingLeft;
                paddingLeft = paddingRight;
                paddingRight = i2;
            }
        }
        if (this.W != null) {
            ay ayVar = this.W;
        }
        if (this.Z != null) {
            ayVar = this.Z;
        }
        if (this.ab != null) {
            getScrollX();
            paddingRight = getChildCount();
            paddingLeft = 0;
            while (paddingLeft < paddingRight) {
                View childAt2 = getChildAt(paddingLeft);
                if (!((LayoutParams) childAt2.getLayoutParams()).a) {
                    childAt2.getLeft();
                    f();
                    az azVar = this.ab;
                }
                paddingLeft++;
            }
        }
        this.U = true;
    }

    private av j() {
        int f = f();
        float scrollX = f > 0 ? ((float) getScrollX()) / ((float) f) : 0.0f;
        float f2 = f > 0 ? ((float) this.o) / ((float) f) : 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        av avVar = null;
        while (i2 < this.e.size()) {
            int i4;
            av avVar2;
            av avVar3 = (av) this.e.get(i2);
            av avVar4;
            if (i3 != 0 || avVar3.b == i + 1) {
                avVar4 = avVar3;
                i4 = i2;
                avVar2 = avVar4;
            } else {
                avVar3 = this.f;
                avVar3.e = f3 + f4 + f2;
                avVar3.b = i + 1;
                avVar3.d = this.h.getPageWidth(avVar3.b);
                avVar4 = avVar3;
                i4 = i2 - 1;
                avVar2 = avVar4;
            }
            f3 = avVar2.e;
            f4 = avVar2.d + f3 + f2;
            if (i3 == 0 && scrollX < f3) {
                return avVar;
            }
            if (scrollX >= f4 && i4 != this.e.size() - 1) {
                f4 = f3;
                i = avVar2.b;
                boolean z = false;
                f3 = avVar2.d;
                avVar = avVar2;
                i2 = i4 + 1;
            }
            return avVar2;
        }
        return avVar;
    }

    private void k() {
        this.A = false;
        this.B = false;
        if (this.K != null) {
            this.K.recycle();
            this.K = null;
        }
    }

    private boolean l() {
        if (this.i <= 0) {
            return false;
        }
        a(this.i - 1, true);
        return true;
    }

    public final int a() {
        return this.i;
    }

    public final void a(int i) {
        this.y = false;
        a(i, !this.S, false);
    }

    public final void a(int i, boolean z) {
        this.y = false;
        a(i, z, false);
    }

    public final void a(aa aaVar) {
        if (this.h != null) {
            this.h.unregisterDataSetObserver(this.n);
            this.h.startUpdate(this);
            int i = 0;
            while (i < this.e.size()) {
                av avVar = (av) this.e.get(i);
                this.h.destroyItem(this, avVar.b, avVar.a);
                i++;
            }
            this.h.finishUpdate(this);
            this.e.clear();
            i = 0;
            while (i < getChildCount()) {
                if (!((LayoutParams) getChildAt(i).getLayoutParams()).a) {
                    removeViewAt(i);
                    i--;
                }
                i++;
            }
            this.i = 0;
            scrollTo(0, 0);
        }
        aa aaVar2 = this.h;
        this.h = aaVar;
        this.b = 0;
        if (this.h != null) {
            if (this.n == null) {
                this.n = new ba((byte) 0);
            }
            this.h.registerDataSetObserver(this.n);
            this.y = false;
            boolean z = this.S;
            this.S = true;
            this.b = this.h.getCount();
            if (this.j >= 0) {
                this.h.restoreState(this.k, this.l);
                a(this.j, false, true);
                this.j = -1;
                this.k = null;
                this.l = null;
            } else if (z) {
                requestLayout();
            } else {
                c();
            }
        }
        if (this.aa != null && aaVar2 != aaVar) {
            ax axVar = this.aa;
        }
    }

    public final void a(ay ayVar) {
        this.W = ayVar;
    }

    public void addFocusables(ArrayList arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            int i3 = 0;
            while (i3 < getChildCount()) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    av a = a(childAt);
                    if (a != null && a.b == this.i) {
                        childAt.addFocusables(arrayList, i, i2);
                    }
                }
                i3++;
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList arrayList) {
        int i = 0;
        while (i < getChildCount()) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                av a = a(childAt);
                if (a != null && a.b == this.i) {
                    childAt.addTouchables(arrayList);
                }
            }
            i++;
        }
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        android.view.ViewGroup.LayoutParams generateLayoutParams;
        generateLayoutParams = checkLayoutParams(layoutParams) ? layoutParams : generateLayoutParams(layoutParams);
        LayoutParams layoutParams2 = (LayoutParams) generateLayoutParams;
        layoutParams2.a |= view instanceof au;
        if (!this.w) {
            super.addView(view, i, generateLayoutParams);
        } else if (layoutParams2 == null || !layoutParams2.a) {
            layoutParams2.d = true;
            addViewInLayout(view, i, generateLayoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    final void b() {
        boolean z;
        int i;
        int count = this.h.getCount();
        this.b = count;
        z = this.e.size() < (this.z * 2) + 1 && this.e.size() < count;
        boolean z2 = false;
        int i2 = this.i;
        boolean z3 = z;
        int i3 = 0;
        while (i3 < this.e.size()) {
            int i4;
            boolean z4;
            boolean z5;
            av avVar = (av) this.e.get(i3);
            int itemPosition = this.h.getItemPosition(avVar.a);
            if (itemPosition == -1 || itemPosition != -2) {
                if (avVar.b != itemPosition) {
                    if (avVar.b == this.i) {
                        i2 = itemPosition;
                    }
                    avVar.b = itemPosition;
                    i4 = i3;
                    i3 = i;
                    i = i2;
                    z4 = true;
                }
                i4 = i3;
                i3 = i;
                i = i2;
                i2 = i;
            } else {
                this.e.remove(i3);
                i3--;
                if (i == 0) {
                    this.h.startUpdate(this);
                    z2 = true;
                }
                this.h.destroyItem(this, avVar.b, avVar.a);
                if (this.i == avVar.b) {
                    i4 = i3;
                    z5 = z2;
                    i = Math.max(0, Math.min(this.i, count - 1));
                    z4 = true;
                } else {
                    i4 = i3;
                    z5 = z2;
                    i = i2;
                    z4 = true;
                }
            }
            z3 = z4;
            i2 = i;
            z2 = z5;
            i3 = i4 + 1;
        }
        if (i != 0) {
            this.h.finishUpdate(this);
        }
        Collections.sort(this.e, c);
        if (i != 0) {
            i = getChildCount();
            i3 = 0;
            while (i3 < i) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                if (!layoutParams.a) {
                    layoutParams.c = 0.0f;
                }
                i3++;
            }
            a(i2, false, true);
            requestLayout();
        }
    }

    final void c() {
        c(this.i);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        if (this.m.isFinished() || !this.m.computeScrollOffset()) {
            a(true);
        } else {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.m.getCurrX();
            int currY = this.m.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
                if (!h()) {
                    this.m.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            af.b(this);
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!super.dispatchKeyEvent(keyEvent)) {
            boolean e;
            if (keyEvent.getAction() == 0) {
                switch (keyEvent.getKeyCode()) {
                    case 21:
                        e = e(17);
                        if (!e) {
                            return false;
                        }
                    case 22:
                        e = e(66);
                        if (e) {
                            return false;
                        }
                    case 61:
                        if (VERSION.SDK_INT >= 11 && r.b(keyEvent)) {
                            e = e(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
                            if (e) {
                                return false;
                            }
                        } else if (r.a(keyEvent)) {
                            e = e(1);
                            if (e) {
                                return false;
                            }
                        }
                }
            }
            e = false;
            if (e) {
                return false;
            }
        }
        return true;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                av a = a(childAt);
                if (a != null && a.b == this.i && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
            i++;
        }
        return false;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int i = 0;
        int a = af.a(this);
        if (a == 0 || (a == 1 && this.h != null && this.h.getCount() > 1)) {
            int width;
            if (!this.Q.a()) {
                a = canvas.save();
                i = getHeight() - getPaddingTop() - getPaddingBottom();
                width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-i) + getPaddingTop()), this.s * ((float) width));
                this.Q.a(i, width);
                i = this.Q.a(canvas) | 0;
                canvas.restoreToCount(a);
            }
            if (!this.R.a()) {
                a = canvas.save();
                width = getWidth();
                int height = getHeight() - getPaddingTop() - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.t + 1.0f)) * ((float) width));
                this.R.a(height, width);
                i |= this.R.a(canvas);
                canvas.restoreToCount(a);
            }
        } else {
            this.Q.b();
            this.R.b();
        }
        if (i != 0) {
            af.b(this);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.p;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    protected int getChildDrawingOrder(int i, int i2) {
        if (this.ac == 2) {
            i2 = i - 1 - i2;
        }
        return ((LayoutParams) ((View) this.ad.get(i2)).getLayoutParams()).f;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.S = true;
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.af);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.o > 0 && this.p != null && this.e.size() > 0 && this.h != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = ((float) this.o) / ((float) width);
            av avVar = (av) this.e.get(0);
            float f2 = avVar.e;
            int size = this.e.size();
            int i = avVar.b;
            int i2 = ((av) this.e.get(size - 1)).b;
            int i3 = 0;
            int i4 = i;
            while (i4 < i2) {
                float f3;
                while (i4 > avVar.b && i3 < size) {
                    i3++;
                    avVar = (av) this.e.get(i3);
                }
                if (i4 == avVar.b) {
                    f3 = (avVar.e + avVar.d) * ((float) width);
                    f2 = avVar.e + avVar.d + f;
                } else {
                    float pageWidth = this.h.getPageWidth(i4);
                    f3 = (f2 + pageWidth) * ((float) width);
                    f2 += pageWidth + f;
                }
                if (((float) this.o) + f3 > ((float) scrollX)) {
                    this.p.setBounds((int) f3, this.q, (int) (((float) this.o) + f3 + 0.5f), this.r);
                    this.p.draw(canvas);
                }
                if (f3 <= ((float) (scrollX + width))) {
                    i4++;
                } else {
                    return;
                }
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.A = false;
            this.B = false;
            this.J = -1;
            if (this.K == null) {
                return false;
            }
            this.K.recycle();
            this.K = null;
            return false;
        } else {
            if (action != 0 && this.A) {
                return true;
            }
            if (this.B) {
                return false;
            }
            float x;
            switch (action) {
                case IcsToast.LENGTH_SHORT:
                    x = motionEvent.getX();
                    this.H = x;
                    this.F = x;
                    x = motionEvent.getY();
                    this.I = x;
                    this.G = x;
                    this.J = w.b(motionEvent, 0);
                    this.B = false;
                    this.m.computeScrollOffset();
                    if (this.ag != 2 || Math.abs(this.m.getFinalX() - this.m.getCurrX()) <= this.O) {
                        a(false);
                        this.A = false;
                    } else {
                        this.m.abortAnimation();
                        this.y = false;
                        c();
                        this.A = true;
                        b(1);
                    }
                    break;
                case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                    action = this.J;
                    if (action != -1) {
                        action = w.a(motionEvent, action);
                        float c = w.c(motionEvent, action);
                        float f = c - this.F;
                        float abs = Math.abs(f);
                        float d = w.d(motionEvent, action);
                        float abs2 = Math.abs(d - this.I);
                        if (f != 0.0f) {
                            x = this.F;
                            action = (x < ((float) this.D) && f > 0.0f) || (x > ((float) (getWidth() - this.D)) && f < 0.0f);
                            if (action == 0 && a(this, false, (int) f, (int) c, (int) d)) {
                                this.F = c;
                                this.G = d;
                                this.B = true;
                                return false;
                            }
                        }
                        if (abs > ((float) this.E) && 0.5f * abs > abs2) {
                            this.A = true;
                            b(1);
                            this.F = f > 0.0f ? this.H + ((float) this.E) : this.H - ((float) this.E);
                            this.G = d;
                            b(true);
                        } else if (abs2 > ((float) this.E)) {
                            this.B = true;
                        }
                        if (this.A && a(c)) {
                            af.b(this);
                        }
                    }
                    break;
                case FragmentManagerImpl.ANIM_STYLE_FADE_EXIT:
                    a(motionEvent);
                    break;
            }
            if (this.K == null) {
                this.K = VelocityTracker.obtain();
            }
            this.K.addMovement(motionEvent);
            return this.A;
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams;
        int i5;
        int childCount = getChildCount();
        int i6 = i3 - i;
        int i7 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = 0;
        int i9 = 0;
        while (i9 < childCount) {
            int measuredWidth;
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a) {
                    int i10 = layoutParams.b & 112;
                    switch (layoutParams.b & 7) {
                        case IcsToast.LENGTH_LONG:
                            i5 = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                            i5 = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                            measuredWidth = i6 - paddingRight - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            i5 = measuredWidth;
                            break;
                        default:
                            i5 = paddingLeft;
                            break;
                    }
                    int i11;
                    switch (i10) {
                        case Menu.CATEGORY_SHIFT:
                            measuredWidth = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            i11 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = i11;
                            break;
                        case 48:
                            measuredWidth = childAt.getMeasuredHeight() + paddingTop;
                            i11 = paddingTop;
                            paddingTop = paddingBottom;
                            paddingBottom = measuredWidth;
                            measuredWidth = i11;
                            break;
                        case 80:
                            measuredWidth = i7 - paddingBottom - childAt.getMeasuredHeight();
                            i11 = paddingBottom + childAt.getMeasuredHeight();
                            paddingBottom = paddingTop;
                            paddingTop = i11;
                            break;
                        default:
                            measuredWidth = paddingTop;
                            i11 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = i11;
                            break;
                    }
                    i5 += scrollX;
                    childAt.layout(i5, measuredWidth, childAt.getMeasuredWidth() + i5, childAt.getMeasuredHeight() + measuredWidth);
                    measuredWidth = i8 + 1;
                    boolean z2 = z;
                    paddingBottom = paddingTop;
                    paddingTop = paddingRight;
                    paddingRight = paddingLeft;
                    i9++;
                    paddingLeft = paddingRight;
                    paddingRight = paddingTop;
                    paddingTop = i8;
                    i8 = measuredWidth;
                }
            }
            measuredWidth = i8;
            i8 = paddingTop;
            paddingTop = paddingRight;
            paddingRight = paddingLeft;
            i9++;
            paddingLeft = paddingRight;
            paddingRight = paddingTop;
            paddingTop = i8;
            i8 = measuredWidth;
        }
        i5 = i6 - paddingLeft - paddingRight;
        paddingRight = 0;
        while (paddingRight < childCount) {
            View childAt2 = getChildAt(paddingRight);
            if (childAt2.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams.a) {
                    av a = a(childAt2);
                    if (a != null) {
                        i6 = ((int) (a.e * ((float) i5))) + paddingLeft;
                        if (layoutParams.d) {
                            layoutParams.d = false;
                            childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.c * ((float) i5)), 1073741824), MeasureSpec.makeMeasureSpec(i7 - paddingTop - paddingBottom, 1073741824));
                        }
                        childAt2.layout(i6, paddingTop, childAt2.getMeasuredWidth() + i6, childAt2.getMeasuredHeight() + paddingTop);
                    }
                }
            }
            paddingRight++;
        }
        this.q = paddingTop;
        this.r = i7 - paddingBottom;
        this.V = i8;
        if (this.S) {
            a(this.i, false, 0, false);
        }
        this.S = false;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.D = Math.min(measuredWidth / 10, this.C);
        int paddingLeft = measuredWidth - getPaddingLeft() - getPaddingRight();
        int measuredHeight = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            LayoutParams layoutParams;
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.a) {
                    int i6;
                    int i7 = layoutParams.b & 7;
                    int i8 = layoutParams.b & 112;
                    boolean z = Integer.MIN_VALUE;
                    boolean z2 = Integer.MIN_VALUE;
                    i6 = (i8 == 48 || i8 == 80) ? 1 : 0;
                    i7 = (i7 == 3 || i7 == 5) ? 1 : 0;
                    if (i6 != 0) {
                        z = 1073741824;
                    } else if (i7 != 0) {
                        z2 = 1073741824;
                    }
                    if (layoutParams.width != -2) {
                        i8 = 1073741824;
                        i3 = layoutParams.width != -1 ? layoutParams.width : paddingLeft;
                    } else {
                        i8 = i3;
                        i3 = paddingLeft;
                    }
                    if (layoutParams.height != -2) {
                        i4 = 1073741824;
                        if (layoutParams.height != -1) {
                            measuredWidth = layoutParams.height;
                            childAt.measure(MeasureSpec.makeMeasureSpec(i3, i8), MeasureSpec.makeMeasureSpec(measuredWidth, i4));
                            if (i6 != 0) {
                                measuredHeight -= childAt.getMeasuredHeight();
                            } else if (i7 != 0) {
                                paddingLeft -= childAt.getMeasuredWidth();
                            }
                        }
                    }
                    measuredWidth = measuredHeight;
                    childAt.measure(MeasureSpec.makeMeasureSpec(i3, i8), MeasureSpec.makeMeasureSpec(measuredWidth, i4));
                    if (i6 != 0) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (i7 != 0) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
            }
            i5++;
        }
        this.u = MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.v = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.w = true;
        c();
        this.w = false;
        i3 = getChildCount();
        i4 = 0;
        while (i4 < i3) {
            View childAt2 = getChildAt(i4);
            if (childAt2.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if (layoutParams == null || !layoutParams.a) {
                    childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.c * ((float) paddingLeft)), 1073741824), this.v);
                }
            }
            i4++;
        }
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3 = -1;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                av a = a(childAt);
                if (a != null && a.b == this.i && childAt.requestFocus(i, rect)) {
                    return true;
                }
            }
            i2 += i3;
        }
        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.h != null) {
                this.h.restoreState(savedState.b, savedState.c);
                a(savedState.a, false, true);
            } else {
                this.j = savedState.a;
                this.k = savedState.b;
                this.l = savedState.c;
            }
        } else {
            super.onRestoreInstanceState(parcelable);
        }
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.i;
        if (this.h != null) {
            savedState.b = this.h.saveState();
        }
        return savedState;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.o;
            int i6 = this.o;
            if (i3 <= 0 || this.e.isEmpty()) {
                av d = d(this.i);
                i5 = (int) ((d != null ? Math.min(d.e, this.t) : 0.0f) * ((float) ((i - getPaddingLeft()) - getPaddingRight())));
                if (i5 != getScrollX()) {
                    a(false);
                    scrollTo(i5, getScrollY());
                }
            } else {
                i6 = (int) (((float) (i5 + ((i - getPaddingLeft()) - getPaddingRight()))) * (((float) getScrollX()) / ((float) (i6 + ((i3 - getPaddingLeft()) - getPaddingRight())))));
                scrollTo(i6, getScrollY());
                if (!this.m.isFinished()) {
                    this.m.startScroll(i6, 0, (int) (d(this.i).e * ((float) i)), 0, this.m.getDuration() - this.m.timePassed());
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.P) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.h == null || this.h.getCount() == 0) {
            return false;
        }
        if (this.K == null) {
            this.K = VelocityTracker.obtain();
        }
        this.K.addMovement(motionEvent);
        float x;
        int i;
        float f;
        switch (motionEvent.getAction() & 255) {
            case IcsToast.LENGTH_SHORT:
                this.m.abortAnimation();
                this.y = false;
                c();
                this.A = true;
                b(1);
                x = motionEvent.getX();
                this.H = x;
                this.F = x;
                x = motionEvent.getY();
                this.I = x;
                this.G = x;
                this.J = w.b(motionEvent, 0);
                break;
            case IcsToast.LENGTH_LONG:
                if (this.A) {
                    VelocityTracker velocityTracker = this.K;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.M);
                    int a = (int) ab.a(velocityTracker, this.J);
                    this.y = true;
                    int f2 = f();
                    int scrollX = getScrollX();
                    av j = j();
                    i = j.b;
                    f = ((((float) scrollX) / ((float) f2)) - j.e) / j.d;
                    if (Math.abs((int) (w.c(motionEvent, w.a(motionEvent, this.J)) - this.H)) <= this.N || Math.abs(a) <= this.L) {
                        scrollX = (int) (((float) i) + f + (i >= this.i ? 0.4f : 0.6f));
                    } else {
                        if (a <= 0) {
                            i++;
                        }
                        scrollX = i;
                    }
                    if (this.e.size() > 0) {
                        scrollX = Math.max(((av) this.e.get(0)).b, Math.min(scrollX, ((av) this.e.get(this.e.size() - 1)).b));
                    }
                    a(scrollX, true, true, a);
                    this.J = -1;
                    k();
                    z = this.Q.c() | this.R.c();
                }
                break;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                if (!this.A) {
                    i = w.a(motionEvent, this.J);
                    float c = w.c(motionEvent, i);
                    f = Math.abs(c - this.F);
                    float d = w.d(motionEvent, i);
                    x = Math.abs(d - this.G);
                    if (f > ((float) this.E) && f > x) {
                        this.A = true;
                        this.F = c - this.H > 0.0f ? this.H + ((float) this.E) : this.H - ((float) this.E);
                        this.G = d;
                        b(1);
                        b(true);
                    }
                }
                if (this.A) {
                    z = a(w.c(motionEvent, w.a(motionEvent, this.J))) | 0;
                }
                break;
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                if (this.A) {
                    a(this.i, true, 0, false);
                    this.J = -1;
                    k();
                    z = this.Q.c() | this.R.c();
                }
                break;
            case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                i = w.b(motionEvent);
                this.F = w.c(motionEvent, i);
                this.J = w.b(motionEvent, i);
                break;
            case FragmentManagerImpl.ANIM_STYLE_FADE_EXIT:
                a(motionEvent);
                this.F = w.c(motionEvent, w.a(motionEvent, this.J));
                break;
        }
        if (z) {
            af.b(this);
        }
        return true;
    }

    public void removeView(View view) {
        if (this.w) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.p;
    }
}