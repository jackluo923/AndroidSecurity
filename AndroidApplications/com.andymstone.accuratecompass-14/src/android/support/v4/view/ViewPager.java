package android.support.v4.view;

import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.b.a;
import android.support.v4.widget.g;
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
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager extends ViewGroup {
    private static final int[] a;
    private static final bp af;
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
    private g Q;
    private g R;
    private boolean S;
    private boolean T;
    private boolean U;
    private int V;
    private bl W;
    private bl Z;
    private bk aa;
    private bm ab;
    private Method ac;
    private int ad;
    private ArrayList ae;
    private final Runnable ag;
    private int ah;
    private int b;
    private final ArrayList e;
    private final bi f;
    private final Rect g;
    private ae h;
    private int i;
    private int j;
    private Parcelable k;
    private ClassLoader l;
    private Scroller m;
    private bn n;
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

    public class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        int a;
        Parcelable b;
        ClassLoader c;

        static {
            CREATOR = a.a(new bo());
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
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
            parcel.writeParcelable(this.b, i);
        }
    }

    static {
        a = new int[]{16842931};
        c = new bf();
        d = new bg();
        af = new bp();
    }

    private int a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.N || Math.abs(i2) <= this.L) {
            i = (int) ((i >= this.i ? 0.4f : 0.6f) + ((float) i) + f);
        } else if (i2 <= 0) {
            i++;
        }
        if (this.e.size() <= 0) {
            return i;
        }
        return Math.max(((bi) this.e.get(0)).b, Math.min(i, ((bi) this.e.get(this.e.size() - 1)).b));
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

    private void a(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.e.isEmpty()) {
            bi b = b(this.i);
            int min = (int) ((b != null ? Math.min(b.e, this.t) : 0.0f) * ((float) ((i - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                a(false);
                scrollTo(min, getScrollY());
            }
        } else {
            int paddingLeft = (int) (((float) (((i - getPaddingLeft()) - getPaddingRight()) + i3)) * (((float) getScrollX()) / ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))));
            scrollTo(paddingLeft, getScrollY());
            if (!this.m.isFinished()) {
                this.m.startScroll(paddingLeft, 0, (int) (b(this.i).e * ((float) i)), 0, this.m.getDuration() - this.m.timePassed());
            }
        }
    }

    private void a(int i, boolean z, int i2, boolean z2) {
        int max;
        bi b = b(i);
        if (b != null) {
            max = (int) (Math.max(this.s, Math.min(b.e, this.t)) * ((float) getClientWidth()));
        } else {
            max = 0;
        }
        if (z) {
            a(max, 0, i2);
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
            scrollTo(max, 0);
            d(max);
        }
    }

    private void a(bi biVar, int i, bi biVar2) {
        float f;
        float f2;
        int i2;
        bi biVar3;
        int a = this.h.a();
        int clientWidth = getClientWidth();
        f = clientWidth > 0 ? ((float) this.o) / ((float) clientWidth) : 0.0f;
        if (biVar2 != null) {
            clientWidth = biVar2.b;
            int i3;
            if (clientWidth < biVar.b) {
                f2 = biVar2.e + biVar2.d + f;
                i3 = clientWidth + 1;
                i2 = 0;
                while (i3 <= biVar.b && i2 < this.e.size()) {
                    biVar3 = (bi) this.e.get(i2);
                    while (i3 > biVar3.b && i2 < this.e.size() - 1) {
                        i2++;
                        biVar3 = (bi) this.e.get(i2);
                    }
                    while (i3 < biVar3.b) {
                        f2 += this.h.a(i3) + f;
                        i3++;
                    }
                    biVar3.e = f2;
                    f2 += biVar3.d + f;
                    i3++;
                }
            } else if (clientWidth > biVar.b) {
                i2 = this.e.size() - 1;
                f2 = biVar2.e;
                i3 = clientWidth - 1;
                while (i3 >= biVar.b && i2 >= 0) {
                    biVar3 = (bi) this.e.get(i2);
                    while (i3 < biVar3.b && i2 > 0) {
                        i2--;
                        biVar3 = (bi) this.e.get(i2);
                    }
                    while (i3 > biVar3.b) {
                        f2 -= this.h.a(i3) + f;
                        i3--;
                    }
                    f2 -= biVar3.d + f;
                    biVar3.e = f2;
                    i3--;
                }
            }
        }
        int size = this.e.size();
        float f3 = biVar.e;
        i2 = biVar.b - 1;
        this.s = biVar.b == 0 ? biVar.e : -3.4028235E38f;
        this.t = biVar.b == a + -1 ? biVar.e + biVar.d - 1.0f : Float.MAX_VALUE;
        int i4 = i - 1;
        while (i4 >= 0) {
            biVar3 = (bi) this.e.get(i4);
            f2 = f3;
            while (i2 > biVar3.b) {
                f2 -= this.h.a(i2) + f;
                i2--;
            }
            f3 = f2 - biVar3.d + f;
            biVar3.e = f3;
            if (biVar3.b == 0) {
                this.s = f3;
            }
            i2--;
            i4--;
        }
        f3 = biVar.e + biVar.d + f;
        i2 = biVar.b + 1;
        i4 = i + 1;
        while (i4 < size) {
            biVar3 = (bi) this.e.get(i4);
            f2 = f3;
            while (i2 < biVar3.b) {
                f2 = this.h.a(i2) + f + f2;
                i2++;
            }
            if (biVar3.b == a - 1) {
                this.t = biVar3.d + f2 - 1.0f;
            }
            biVar3.e = f2;
            f3 = f2 + biVar3.d + f;
            i2++;
            i4++;
        }
        this.T = false;
    }

    private void a(MotionEvent motionEvent) {
        int b = z.b(motionEvent);
        if (z.b(motionEvent, b) == this.J) {
            b = b == 0 ? 1 : 0;
            this.F = z.c(motionEvent, b);
            this.J = z.b(motionEvent, b);
            if (this.K != null) {
                this.K.clear();
            }
        }
    }

    private void a(boolean z) {
        int i;
        int scrollX;
        int scrollY;
        i = this.ah == 2;
        if (i != 0) {
            setScrollingCacheEnabled(false);
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
            bi biVar = (bi) this.e.get(scrollX);
            if (biVar.c) {
                biVar.c = false;
                boolean z2 = true;
            }
            scrollX++;
        }
        if (scrollY == 0) {
            return;
        }
        if (z) {
            ak.a(this, this.ag);
        } else {
            this.ag.run();
        }
    }

    private boolean a(float f, float f2) {
        return (f < ((float) this.D) && f2 > 0.0f) || (f > ((float) (getWidth() - this.D)) && f2 < 0.0f);
    }

    private void b(boolean z) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            ak.a(getChildAt(i), z ? o.MyAlertDialog_myAlertDialogButtonDrawable : 0, null);
            i++;
        }
    }

    private boolean b(float f) {
        float f2;
        boolean z = 1;
        boolean z2 = false;
        float f3 = this.F - f;
        this.F = f;
        float scrollX = ((float) getScrollX()) + f3;
        int clientWidth = getClientWidth();
        float f4 = ((float) clientWidth) * this.s;
        float f5 = ((float) clientWidth) * this.t;
        bi biVar = (bi) this.e.get(0);
        bi biVar2 = (bi) this.e.get(this.e.size() - 1);
        boolean z3;
        if (biVar.b != 0) {
            f4 = biVar.e * ((float) clientWidth);
            z3 = false;
        } else {
            z3 = true;
        }
        if (biVar2.b != this.h.a() - 1) {
            f2 = biVar2.e * ((float) clientWidth);
            z = false;
        } else {
            f2 = f5;
        }
        if (scrollX < f4) {
            if (i != 0) {
                z2 = this.Q.a(Math.abs(f4 - scrollX) / ((float) clientWidth));
            }
        } else if (scrollX > f2) {
            if (i != 0) {
                z2 = this.R.a(Math.abs(scrollX - f2) / ((float) clientWidth));
            }
            f4 = f2;
        } else {
            f4 = scrollX;
        }
        this.F += f4 - ((float) ((int) f4));
        scrollTo((int) f4, getScrollY());
        d((int) f4);
        return z2;
    }

    private boolean d(int i) {
        if (this.e.size() == 0) {
            this.U = false;
            a(0, 0.0f, 0);
            if (this.U) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else {
            bi h = h();
            int clientWidth = getClientWidth();
            int i2 = this.o + clientWidth;
            float f = ((float) this.o) / ((float) clientWidth);
            int i3 = h.b;
            float f2 = ((((float) i) / ((float) clientWidth)) - h.e) / (h.d + f);
            clientWidth = (int) (((float) i2) * f2);
            this.U = false;
            a(i3, f2, clientWidth);
            if (this.U) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    private void f() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((bj) getChildAt(i).getLayoutParams()).a) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    private void g() {
        if (this.ad != 0) {
            if (this.ae == null) {
                this.ae = new ArrayList();
            } else {
                this.ae.clear();
            }
            int childCount = getChildCount();
            int i = 0;
            while (i < childCount) {
                this.ae.add(getChildAt(i));
                i++;
            }
            Collections.sort(this.ae, af);
        }
    }

    private int getClientWidth() {
        return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    }

    private bi h() {
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        float f = clientWidth > 0 ? ((float) this.o) / ((float) clientWidth) : 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        bi biVar = null;
        while (i2 < this.e.size()) {
            int i4;
            bi biVar2;
            bi biVar3 = (bi) this.e.get(i2);
            bi biVar4;
            if (i3 != 0 || biVar3.b == i + 1) {
                biVar4 = biVar3;
                i4 = i2;
                biVar2 = biVar4;
            } else {
                biVar3 = this.f;
                biVar3.e = f2 + f3 + f;
                biVar3.b = i + 1;
                biVar3.d = this.h.a(biVar3.b);
                biVar4 = biVar3;
                i4 = i2 - 1;
                biVar2 = biVar4;
            }
            f2 = biVar2.e;
            f3 = biVar2.d + f2 + f;
            if (i3 == 0 && scrollX < f2) {
                return biVar;
            }
            if (scrollX >= f3 && i4 != this.e.size() - 1) {
                f3 = f2;
                i = biVar2.b;
                boolean z = false;
                f2 = biVar2.d;
                biVar = biVar2;
                i2 = i4 + 1;
            }
            return biVar2;
        }
        return biVar;
    }

    private void i() {
        this.A = false;
        this.B = false;
        if (this.K != null) {
            this.K.recycle();
            this.K = null;
        }
    }

    private void setScrollState(int i) {
        if (this.ah != i) {
            this.ah = i;
            if (this.ab != null) {
                b(i != 0);
            }
            if (this.W != null) {
                this.W.b(i);
            }
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.x != z) {
            this.x = z;
        }
    }

    float a(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    bi a(int i, int i2) {
        bi biVar = new bi();
        biVar.b = i;
        biVar.a = this.h.a(this, i);
        biVar.d = this.h.a(i);
        if (i2 < 0 || i2 >= this.e.size()) {
            this.e.add(biVar);
        } else {
            this.e.add(i2, biVar);
        }
        return biVar;
    }

    bi a(View view) {
        int i = 0;
        while (i < this.e.size()) {
            bi biVar = (bi) this.e.get(i);
            if (this.h.a(view, biVar.a)) {
                return biVar;
            }
            i++;
        }
        return null;
    }

    void a() {
        boolean z;
        int i;
        int a = this.h.a();
        this.b = a;
        z = this.e.size() < (this.z * 2) + 1 && this.e.size() < a;
        boolean z2 = false;
        int i2 = this.i;
        boolean z3 = z;
        int i3 = 0;
        while (i3 < this.e.size()) {
            int i4;
            boolean z4;
            boolean z5;
            bi biVar = (bi) this.e.get(i3);
            int a2 = this.h.a(biVar.a);
            if (a2 == -1) {
                i4 = i3;
                i3 = i;
                i = i2;
                i2 = i;
            } else if (a2 == -2) {
                this.e.remove(i3);
                i3--;
                if (i == 0) {
                    this.h.a(this);
                    z2 = true;
                }
                this.h.a(this, biVar.b, biVar.a);
                if (this.i == biVar.b) {
                    i4 = i3;
                    z4 = z2;
                    i = Math.max(0, Math.min(this.i, a - 1));
                    z5 = true;
                } else {
                    i4 = i3;
                    z4 = z2;
                    i = i2;
                    z5 = true;
                }
            } else if (biVar.b != a2) {
                if (biVar.b == this.i) {
                    i2 = a2;
                }
                biVar.b = a2;
                i4 = i3;
                i3 = i;
                i = i2;
                z5 = true;
            } else {
                i4 = i3;
                i3 = i;
                i = i2;
                i2 = i;
            }
            z3 = z5;
            i2 = i;
            z2 = z4;
            i3 = i4 + 1;
        }
        if (i != 0) {
            this.h.b(this);
        }
        Collections.sort(this.e, c);
        if (i != 0) {
            i = getChildCount();
            i3 = 0;
            while (i3 < i) {
                bj bjVar = (bj) getChildAt(i3).getLayoutParams();
                if (!bjVar.a) {
                    bjVar.c = 0.0f;
                }
                i3++;
            }
            a(i2, false, true);
            requestLayout();
        }
    }

    void a(int i) {
        int i2;
        bi biVar;
        int i3;
        if (this.i != i) {
            i2 = this.i < i ? 66 : 17;
            bi b = b(this.i);
            this.i = i;
            biVar = b;
            i3 = i2;
        } else {
            biVar = null;
            i3 = 2;
        }
        if (this.h == null) {
            g();
        } else if (this.y) {
            g();
        } else if (getWindowToken() != null) {
            this.h.a(this);
            i2 = this.z;
            int max = Math.max(0, this.i - i2);
            int a = this.h.a();
            int min = Math.min(a - 1, i2 + this.i);
            if (a != this.b) {
                String resourceName;
                try {
                    resourceName = getResources().getResourceName(getId());
                } catch (NotFoundException e) {
                    resourceName = Integer.toHexString(getId());
                }
                throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.b + ", found: " + a + " Pager id: " + resourceName + " Pager class: " + getClass() + " Problematic adapter: " + this.h.getClass());
            } else {
                bi biVar2;
                bi a2;
                bi biVar3;
                int i4 = 0;
                while (i4 < this.e.size()) {
                    biVar2 = (bi) this.e.get(i4);
                    if (biVar2.b >= this.i) {
                        if (biVar2.b != this.i) goto L_0x033c;
                        break;
                    } else {
                        i4++;
                    }
                }
                biVar2 = null;
                a2 = (biVar2 != null || a <= 0) ? biVar2 : a(this.i, i4);
                if (a2 != null) {
                    float paddingLeft;
                    int i5 = i4 - 1;
                    biVar2 = i5 >= 0 ? (bi) this.e.get(i5) : null;
                    int clientWidth = getClientWidth();
                    paddingLeft = clientWidth <= 0 ? 0.0f : 2.0f - a2.d + ((float) getPaddingLeft()) / ((float) clientWidth);
                    float f = 0.0f;
                    int i6 = this.i - 1;
                    int i7 = i5;
                    i5 = i4;
                    i4 = i7;
                    while (i6 >= 0) {
                        if (f < paddingLeft || i6 >= max) {
                            if (biVar2 == null || i6 != biVar2.b) {
                                f += a(i6, i4 + 1).d;
                                i5++;
                                biVar2 = i4 >= 0 ? (bi) this.e.get(i4) : null;
                            } else {
                                f += biVar2.d;
                                i4--;
                                biVar2 = i4 >= 0 ? (bi) this.e.get(i4) : null;
                            }
                        } else if (biVar2 == null) {
                            break;
                        } else if (i6 == biVar2.b && !biVar2.c) {
                            this.e.remove(i4);
                            this.h.a(this, i6, biVar2.a);
                            i4--;
                            i5--;
                            biVar2 = i4 >= 0 ? (bi) this.e.get(i4) : null;
                        }
                        i6--;
                    }
                    paddingLeft = a2.d;
                    i6 = i5 + 1;
                    if (paddingLeft < 2.0f) {
                        bi biVar4;
                        float paddingRight;
                        if (i6 < this.e.size()) {
                            biVar4 = (bi) this.e.get(i6);
                        } else {
                            boolean z = 0;
                        }
                        paddingRight = clientWidth <= 0 ? 0.0f : ((float) getPaddingRight()) / ((float) clientWidth) + 2.0f;
                        biVar2 = biVar4;
                        int i8 = i6;
                        i6 = this.i + 1;
                        while (i6 < a) {
                            float f2;
                            float f3;
                            if (paddingLeft < paddingRight || i6 <= min) {
                                if (biVar2 == null || i6 != biVar2.b) {
                                    biVar2 = a(i6, i8);
                                    i8++;
                                    f2 = paddingLeft + biVar2.d;
                                    biVar3 = i8 < this.e.size() ? (bi) this.e.get(i8) : null;
                                    f3 = f2;
                                } else {
                                    i8++;
                                    f2 = paddingLeft + biVar2.d;
                                    biVar3 = i8 < this.e.size() ? (bi) this.e.get(i8) : null;
                                    f3 = f2;
                                }
                            } else if (biVar2 == null) {
                                break;
                            } else if (i6 != biVar2.b || biVar2.c) {
                                f2 = paddingLeft;
                                biVar3 = biVar2;
                                f3 = f2;
                            } else {
                                this.e.remove(i8);
                                this.h.a(this, i6, biVar2.a);
                                f2 = paddingLeft;
                                biVar3 = i8 < this.e.size() ? (bi) this.e.get(i8) : null;
                                f3 = f2;
                            }
                            i6++;
                            f2 = f3;
                            biVar2 = biVar3;
                            paddingLeft = f2;
                        }
                    }
                    a(a2, i5, biVar);
                }
                this.h.b(this, this.i, a2 != null ? a2.a : null);
                this.h.b(this);
                i4 = getChildCount();
                int i9 = 0;
                while (i9 < i4) {
                    View childAt = getChildAt(i9);
                    bj bjVar = (bj) childAt.getLayoutParams();
                    bjVar.f = i9;
                    if (!bjVar.a && bjVar.c == 0.0f) {
                        biVar3 = a(childAt);
                        if (biVar3 != null) {
                            bjVar.c = biVar3.d;
                            bjVar.e = biVar3.b;
                        }
                    }
                    i9++;
                }
                g();
                if (hasFocus()) {
                    View findFocus = findFocus();
                    biVar2 = findFocus != null ? b(findFocus) : null;
                    if (biVar2 == null || biVar2.b != this.i) {
                        i2 = 0;
                        while (i2 < getChildCount()) {
                            View childAt2 = getChildAt(i2);
                            bi a3 = a(childAt2);
                            if (a3 == null || a3.b != this.i || !childAt2.requestFocus(i)) {
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

    protected void a(int i, float f, int i2) {
        int paddingLeft;
        int paddingRight;
        int i3;
        if (this.V > 0) {
            int scrollX = getScrollX();
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            i3 = 0;
            while (i3 < childCount) {
                int i4;
                View childAt = getChildAt(i3);
                bj bjVar = (bj) childAt.getLayoutParams();
                if (bjVar.a) {
                    int max;
                    switch (bjVar.b & 7) {
                        case o.MyAlertDialog_myAlertDialogAccentColor:
                            max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            i4 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                        case o.MyAlertDialog_MAD_titleStyle:
                            max = childAt.getWidth() + paddingLeft;
                            i4 = paddingLeft;
                            paddingLeft = paddingRight;
                            paddingRight = max;
                            max = i4;
                            break;
                        case o.MyAlertDialog_MAD_textAppearanceMedium:
                            max = width - paddingRight - childAt.getMeasuredWidth();
                            i4 = paddingRight + childAt.getMeasuredWidth();
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                        default:
                            max = paddingLeft;
                            i4 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                    }
                    max = max + scrollX - childAt.getLeft();
                    if (max != 0) {
                        childAt.offsetLeftAndRight(max);
                    }
                } else {
                    i4 = paddingRight;
                    paddingRight = paddingLeft;
                    paddingLeft = i4;
                }
                i3++;
                i4 = paddingLeft;
                paddingLeft = paddingRight;
                paddingRight = i4;
            }
        }
        if (this.W != null) {
            this.W.a(i, f, i2);
        }
        if (this.Z != null) {
            this.Z.a(i, f, i2);
        }
        if (this.ab != null) {
            paddingRight = getScrollX();
            i3 = getChildCount();
            paddingLeft = 0;
            while (paddingLeft < i3) {
                View childAt2 = getChildAt(paddingLeft);
                if (!((bj) childAt2.getLayoutParams()).a) {
                    this.ab.a(childAt2, ((float) (childAt2.getLeft() - paddingRight)) / ((float) getClientWidth()));
                }
                paddingLeft++;
            }
        }
        this.U = true;
    }

    void a(int i, int i2, int i3) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int i4 = i - scrollX;
            int i5 = i2 - scrollY;
            if (i4 == 0 && i5 == 0) {
                a(false);
                b();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(o.MyAlertDialog_myAlertDialogButtonDrawable);
                int clientWidth = getClientWidth();
                int i6 = clientWidth / 2;
                float a = ((float) i6) * a(Math.min(1.0f, (((float) Math.abs(i4)) * 1.0f) / ((float) clientWidth))) + ((float) i6);
                int abs = Math.abs(i3);
                if (abs > 0) {
                    clientWidth = Math.round(1000.0f * Math.abs(a / ((float) abs))) * 4;
                } else {
                    clientWidth = (int) (((((float) Math.abs(i4)) / ((((float) clientWidth) * this.h.a(this.i)) + ((float) this.o))) + 1.0f) * 100.0f);
                }
                this.m.startScroll(scrollX, scrollY, i4, i5, Math.min(clientWidth, 600));
                ak.b(this);
            }
        }
    }

    public void a(int i, boolean z) {
        this.y = false;
        a(i, z, false);
    }

    void a(int i, boolean z, boolean z2) {
        a(i, z, z2, 0);
    }

    void a(int i, boolean z, boolean z2, int i2) {
        boolean z3 = false;
        if (this.h == null || this.h.a() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.i != i || this.e.size() == 0) {
            if (i < 0) {
                i = 0;
            } else if (i >= this.h.a()) {
                i = this.h.a() - 1;
            }
            int i3 = this.z;
            if (i > this.i + i3 || i < this.i - i3) {
                int i4 = 0;
                while (i4 < this.e.size()) {
                    ((bi) this.e.get(i4)).c = true;
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
                a(i);
                a(i, z, i2, z3);
            }
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 21:
                return c(17);
            case 22:
                return c(66);
            case 61:
                if (VERSION.SDK_INT < 11) {
                    return false;
                }
                if (s.a(keyEvent)) {
                    return c(o.MyAlertDialog_myAlertDialogButtonDrawable);
                }
                return s.a(keyEvent, 1) ? c(1) : false;
            default:
                return false;
        }
    }

    protected boolean a(View view, boolean z, int i, int i2, int i3) {
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
        return z && ak.a(view, -i);
    }

    public void addFocusables(ArrayList arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            int i3 = 0;
            while (i3 < getChildCount()) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    bi a = a(childAt);
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
                bi a = a(childAt);
                if (a != null && a.b == this.i) {
                    childAt.addTouchables(arrayList);
                }
            }
            i++;
        }
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        LayoutParams generateLayoutParams;
        generateLayoutParams = checkLayoutParams(layoutParams) ? layoutParams : generateLayoutParams(layoutParams);
        bj bjVar = (bj) generateLayoutParams;
        bjVar.a |= view instanceof bh;
        if (!this.w) {
            super.addView(view, i, generateLayoutParams);
        } else if (bjVar == null || !bjVar.a) {
            bjVar.d = true;
            addViewInLayout(view, i, generateLayoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    bi b(int i) {
        int i2 = 0;
        while (i2 < this.e.size()) {
            bi biVar = (bi) this.e.get(i2);
            if (biVar.b == i) {
                return biVar;
            }
            i2++;
        }
        return null;
    }

    bi b(View view) {
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

    void b() {
        a(this.i);
    }

    boolean c() {
        if (this.i <= 0) {
            return false;
        }
        a(this.i - 1, true);
        return true;
    }

    public boolean c(int i) {
        View view;
        boolean z;
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
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + stringBuilder.toString());
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                z = c();
            } else {
                if (i == 66 || i == 2) {
                    z = d();
                }
                z = false;
            }
        } else if (i == 17) {
            z = (view == null || a(this.g, findNextFocus).left < a(this.g, view).left) ? findNextFocus.requestFocus() : c();
        } else {
            if (i == 66) {
                z = (view == null || a(this.g, findNextFocus).left > a(this.g, view).left) ? findNextFocus.requestFocus() : d();
            }
            z = false;
        }
        if (z) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z;
    }

    public boolean canScrollHorizontally(int i) {
        boolean z = 1;
        if (this.h == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX <= ((int) (((float) clientWidth) * this.s))) {
                z = false;
            }
            return z;
        } else if (i <= 0) {
            return false;
        } else {
            if (scrollX >= ((int) (((float) clientWidth) * this.t))) {
                z = false;
            }
            return z;
        }
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof bj && super.checkLayoutParams(layoutParams);
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
                if (!d(currX)) {
                    this.m.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            ak.b(this);
        }
    }

    boolean d() {
        if (this.h == null || this.i >= this.h.a() - 1) {
            return false;
        }
        a(this.i + 1, true);
        return true;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                bi a = a(childAt);
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
        int a = ak.a(this);
        if (a == 0 || (a == 1 && this.h != null && this.h.a() > 1)) {
            int height;
            int width;
            if (!this.Q.a()) {
                a = canvas.save();
                height = getHeight() - getPaddingTop() - getPaddingBottom();
                width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) ((-height) + getPaddingTop()), this.s * ((float) width));
                this.Q.a(height, width);
                i = 0 | this.Q.a(canvas);
                canvas.restoreToCount(a);
            }
            if (!this.R.a()) {
                a = canvas.save();
                height = getWidth();
                width = getHeight() - getPaddingTop() - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.t + 1.0f)) * ((float) height));
                this.R.a(width, height);
                i |= this.R.a(canvas);
                canvas.restoreToCount(a);
            }
        } else {
            this.Q.b();
            this.R.b();
        }
        if (i != 0) {
            ak.b(this);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.p;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new bj();
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new bj(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public ae getAdapter() {
        return this.h;
    }

    protected int getChildDrawingOrder(int i, int i2) {
        if (this.ad == 2) {
            i2 = i - 1 - i2;
        }
        return ((bj) ((View) this.ae.get(i2)).getLayoutParams()).f;
    }

    public int getCurrentItem() {
        return this.i;
    }

    public int getOffscreenPageLimit() {
        return this.z;
    }

    public int getPageMargin() {
        return this.o;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.S = true;
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.ag);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.o > 0 && this.p != null && this.e.size() > 0 && this.h != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = ((float) this.o) / ((float) width);
            bi biVar = (bi) this.e.get(0);
            float f2 = biVar.e;
            int size = this.e.size();
            int i = biVar.b;
            int i2 = ((bi) this.e.get(size - 1)).b;
            int i3 = 0;
            int i4 = i;
            while (i4 < i2) {
                float f3;
                while (i4 > biVar.b && i3 < size) {
                    i3++;
                    biVar = (bi) this.e.get(i3);
                }
                if (i4 == biVar.b) {
                    f3 = (biVar.e + biVar.d) * ((float) width);
                    f2 = biVar.e + biVar.d + f;
                } else {
                    float a = this.h.a(i4);
                    f3 = (f2 + a) * ((float) width);
                    f2 += a + f;
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
            switch (action) {
                case v.DropShadowView_cornerRadius:
                    float x = motionEvent.getX();
                    this.H = x;
                    this.F = x;
                    x = motionEvent.getY();
                    this.I = x;
                    this.G = x;
                    this.J = z.b(motionEvent, 0);
                    this.B = false;
                    this.m.computeScrollOffset();
                    if (this.ah != 2 || Math.abs(this.m.getFinalX() - this.m.getCurrX()) <= this.O) {
                        a(false);
                        this.A = false;
                    } else {
                        this.m.abortAnimation();
                        this.y = false;
                        b();
                        this.A = true;
                        setScrollState(1);
                    }
                    break;
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    action = this.J;
                    if (action != -1) {
                        action = z.a(motionEvent, action);
                        float c = z.c(motionEvent, action);
                        float f = c - this.F;
                        float abs = Math.abs(f);
                        float d = z.d(motionEvent, action);
                        float abs2 = Math.abs(d - this.I);
                        if (f == 0.0f || a(this.F, f) || !a(this, false, (int) f, (int) c, (int) d)) {
                            if (abs > ((float) this.E) && 0.5f * abs > abs2) {
                                this.A = true;
                                setScrollState(1);
                                this.F = f > 0.0f ? this.H + ((float) this.E) : this.H - ((float) this.E);
                                this.G = d;
                                setScrollingCacheEnabled(true);
                            } else if (abs2 > ((float) this.E)) {
                                this.B = true;
                            }
                            if (this.A && b(c)) {
                                ak.b(this);
                            }
                        } else {
                            this.F = c;
                            this.G = d;
                            this.B = true;
                            return false;
                        }
                    }
                case o.MyAlertDialog_MAD_divider:
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
            bj bjVar;
            int measuredWidth;
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                bjVar = (bj) childAt.getLayoutParams();
                if (bjVar.a) {
                    int i10 = bjVar.b & 112;
                    switch (bjVar.b & 7) {
                        case o.MyAlertDialog_myAlertDialogAccentColor:
                            i5 = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case o.MyAlertDialog_MAD_titleStyle:
                            i5 = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case o.MyAlertDialog_MAD_textAppearanceMedium:
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
                        case 16:
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
                bjVar = (bj) childAt2.getLayoutParams();
                if (!bjVar.a) {
                    bi a = a(childAt2);
                    if (a != null) {
                        i6 = ((int) (a.e * ((float) i5))) + paddingLeft;
                        if (bjVar.d) {
                            bjVar.d = false;
                            childAt2.measure(MeasureSpec.makeMeasureSpec((int) (bjVar.c * ((float) i5)), 1073741824), MeasureSpec.makeMeasureSpec(i7 - paddingTop - paddingBottom, 1073741824));
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
        bj bjVar;
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
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                bjVar = (bj) childAt.getLayoutParams();
                if (bjVar != null && bjVar.a) {
                    int i6;
                    int i7 = bjVar.b & 7;
                    int i8 = bjVar.b & 112;
                    boolean z = Integer.MIN_VALUE;
                    boolean z2 = Integer.MIN_VALUE;
                    i6 = (i8 == 48 || i8 == 80) ? 1 : 0;
                    i7 = (i7 == 3 || i7 == 5) ? 1 : 0;
                    if (i6 != 0) {
                        z = 1073741824;
                    } else if (i7 != 0) {
                        z2 = 1073741824;
                    }
                    if (bjVar.width != -2) {
                        i8 = 1073741824;
                        i3 = bjVar.width != -1 ? bjVar.width : paddingLeft;
                    } else {
                        i8 = i3;
                        i3 = paddingLeft;
                    }
                    if (bjVar.height != -2) {
                        i4 = 1073741824;
                        if (bjVar.height != -1) {
                            measuredWidth = bjVar.height;
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
        b();
        this.w = false;
        i3 = getChildCount();
        i4 = 0;
        while (i4 < i3) {
            View childAt2 = getChildAt(i4);
            if (childAt2.getVisibility() != 8) {
                bjVar = (bj) childAt2.getLayoutParams();
                if (bjVar == null || !bjVar.a) {
                    childAt2.measure(MeasureSpec.makeMeasureSpec((int) (bjVar.c * ((float) paddingLeft)), 1073741824), this.v);
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
                bi a = a(childAt);
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
                this.h.a(savedState.b, savedState.c);
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
            savedState.b = this.h.b();
        }
        return savedState;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            a(i, i3, this.o, this.o);
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
        if (this.h == null || this.h.a() == 0) {
            return false;
        }
        if (this.K == null) {
            this.K = VelocityTracker.obtain();
        }
        this.K.addMovement(motionEvent);
        float x;
        int a;
        switch (motionEvent.getAction() & 255) {
            case v.DropShadowView_cornerRadius:
                this.m.abortAnimation();
                this.y = false;
                b();
                this.A = true;
                setScrollState(1);
                x = motionEvent.getX();
                this.H = x;
                this.F = x;
                x = motionEvent.getY();
                this.I = x;
                this.G = x;
                this.J = z.b(motionEvent, 0);
                break;
            case o.MyAlertDialog_myAlertDialogAccentColor:
                if (this.A) {
                    VelocityTracker velocityTracker = this.K;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.M);
                    a = (int) af.a(velocityTracker, this.J);
                    this.y = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    bi h = h();
                    a(a(h.b, ((((float) scrollX) / ((float) clientWidth)) - h.e) / h.d, a, (int) (z.c(motionEvent, z.a(motionEvent, this.J)) - this.H)), true, true, a);
                    this.J = -1;
                    i();
                    z = this.R.c() | this.Q.c();
                }
                break;
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                if (!this.A) {
                    a = z.a(motionEvent, this.J);
                    float c = z.c(motionEvent, a);
                    float abs = Math.abs(c - this.F);
                    float d = z.d(motionEvent, a);
                    x = Math.abs(d - this.G);
                    if (abs > ((float) this.E) && abs > x) {
                        this.A = true;
                        this.F = c - this.H > 0.0f ? this.H + ((float) this.E) : this.H - ((float) this.E);
                        this.G = d;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                    }
                }
                if (this.A) {
                    z = false | b(z.c(motionEvent, z.a(motionEvent, this.J)));
                }
                break;
            case o.MyAlertDialog_MAD_titleStyle:
                if (this.A) {
                    a(this.i, true, 0, false);
                    this.J = -1;
                    i();
                    z = this.R.c() | this.Q.c();
                }
                break;
            case o.MyAlertDialog_MAD_textAppearanceMedium:
                a = z.b(motionEvent);
                this.F = z.c(motionEvent, a);
                this.J = z.b(motionEvent, a);
                break;
            case o.MyAlertDialog_MAD_divider:
                a(motionEvent);
                this.F = z.c(motionEvent, z.a(motionEvent, this.J));
                break;
        }
        if (z) {
            ak.b(this);
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

    public void setAdapter(ae aeVar) {
        if (this.h != null) {
            this.h.b(this.n);
            this.h.a(this);
            int i = 0;
            while (i < this.e.size()) {
                bi biVar = (bi) this.e.get(i);
                this.h.a(this, biVar.b, biVar.a);
                i++;
            }
            this.h.b(this);
            this.e.clear();
            f();
            this.i = 0;
            scrollTo(0, 0);
        }
        ae aeVar2 = this.h;
        this.h = aeVar;
        this.b = 0;
        if (this.h != null) {
            if (this.n == null) {
                this.n = new bn(null);
            }
            this.h.a(this.n);
            this.y = false;
            boolean z = this.S;
            this.S = true;
            this.b = this.h.a();
            if (this.j >= 0) {
                this.h.a(this.k, this.l);
                a(this.j, false, true);
                this.j = -1;
                this.k = null;
                this.l = null;
            } else if (z) {
                requestLayout();
            } else {
                b();
            }
        }
        if (this.aa != null && aeVar2 != aeVar) {
            this.aa.a(aeVar2, aeVar);
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (VERSION.SDK_INT >= 7) {
            if (this.ac == null) {
                try {
                    this.ac = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[]{Boolean.TYPE});
                } catch (NoSuchMethodException e) {
                    Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", e);
                }
            }
            try {
                this.ac.invoke(this, new Object[]{Boolean.valueOf(z)});
            } catch (Exception e2) {
                Log.e("ViewPager", "Error changing children drawing order", e2);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.y = false;
        a(i, !this.S, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to " + 1);
            i = 1;
        }
        if (i != this.z) {
            this.z = i;
            b();
        }
    }

    void setOnAdapterChangeListener(bk bkVar) {
        this.aa = bkVar;
    }

    public void setOnPageChangeListener(bl blVar) {
        this.W = blVar;
    }

    public void setPageMargin(int i) {
        int i2 = this.o;
        this.o = i;
        int width = getWidth();
        a(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.p = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.p;
    }
}