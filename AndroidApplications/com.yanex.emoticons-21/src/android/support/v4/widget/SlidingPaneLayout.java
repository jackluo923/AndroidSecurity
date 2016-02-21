package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.af;
import android.support.v4.view.w;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import java.util.ArrayList;

public final class SlidingPaneLayout extends ViewGroup {
    static final u a;
    private int b;
    private int c;
    private Drawable d;
    private final int e;
    private boolean f;
    private View g;
    private float h;
    private float i;
    private int j;
    private boolean k;
    private int l;
    private float m;
    private float n;
    private final y o;
    private boolean p;
    private boolean q;
    private final Rect r;
    private final ArrayList s;

    public class LayoutParams extends MarginLayoutParams {
        private static final int[] e;
        public float a;
        boolean b;
        boolean c;
        Paint d;

        static {
            e = new int[]{16843137};
        }

        public LayoutParams() {
            super(-1, -1);
            this.a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0.0f;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 0.0f;
        }
    }

    class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        boolean a;

        static {
            CREATOR = new t();
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a ? 1 : 0);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 17) {
            a = new x();
        } else if (i >= 16) {
            a = new w();
        } else {
            a = new v();
        }
    }

    private void a(View view) {
        a.a(this, view);
    }

    private void a(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (((int) (((float) ((-16777216 & i) >>> 24)) * f)) << 24) | (16777215 & i);
            if (layoutParams.d == null) {
                layoutParams.d = new Paint();
            }
            layoutParams.d.setColorFilter(new PorterDuffColorFilter(i2, Mode.SRC_OVER));
            if (af.e(view) != 2) {
                af.a(view, IcsLinearLayout.SHOW_DIVIDER_MIDDLE, layoutParams.d);
            }
            a(view);
        } else if (af.e(view) != 0) {
            if (layoutParams.d != null) {
                layoutParams.d.setColorFilter(null);
            }
            Runnable sVar = new s(this, view);
            this.s.add(sVar);
            af.a(this, sVar);
        }
    }

    private boolean a() {
        if (!this.q && !a(0.0f)) {
            return false;
        }
        this.p = false;
        return true;
    }

    private boolean a(float f) {
        if (!this.f) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) this.g.getLayoutParams();
        if (!this.o.a(this.g, (int) (((float) (layoutParams.leftMargin + getPaddingLeft())) + ((float) this.j) * f), this.g.getTop())) {
            return false;
        }
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
            i++;
        }
        af.b(this);
        return true;
    }

    private boolean b(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        return this.f && layoutParams.c && this.h > 0.0f;
    }

    protected final boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams);
    }

    public final void computeScroll() {
        if (!this.o.g()) {
            return;
        }
        if (this.f) {
            af.b(this);
        } else {
            this.o.f();
        }
    }

    public final void draw(Canvas canvas) {
        super.draw(canvas);
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && this.d != null) {
            int intrinsicWidth = this.d.getIntrinsicWidth();
            int left = childAt.getLeft();
            this.d.setBounds(left - intrinsicWidth, childAt.getTop(), left, childAt.getBottom());
            this.d.draw(canvas);
        }
    }

    protected final boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        if (!(!this.f || layoutParams.b || this.g == null)) {
            canvas.getClipBounds(this.r);
            this.r.right = Math.min(this.r.right, this.g.getLeft());
            canvas.clipRect(this.r);
        }
        if (VERSION.SDK_INT < 11) {
            if (layoutParams.c && this.h > 0.0f) {
                if (!view.isDrawingCacheEnabled()) {
                    view.setDrawingCacheEnabled(true);
                }
                Bitmap drawingCache = view.getDrawingCache();
                if (drawingCache != null) {
                    canvas.drawBitmap(drawingCache, (float) view.getLeft(), (float) view.getTop(), layoutParams.d);
                    z = false;
                    canvas.restoreToCount(save);
                    return z;
                } else {
                    Log.e("SlidingPaneLayout", new StringBuilder("drawChild: child view ").append(view).append(" returned null drawing cache").toString());
                }
            } else if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
        }
        z = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return z;
    }

    protected final android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public final android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected final android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.q = true;
    }

    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.q = true;
        int size = this.s.size();
        int i = 0;
        while (i < size) {
            ((s) this.s.get(i)).run();
            i++;
        }
        this.s.clear();
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int a = w.a(motionEvent);
        if (!this.f && a == 0 && getChildCount() > 1) {
            View childAt = getChildAt(1);
            if (childAt != null) {
                y yVar = this.o;
                this.p = !y.b(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
            }
        }
        if (!this.f || (this.k && a != 0)) {
            this.o.e();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (a == 3 || a == 1) {
            this.o.e();
            return false;
        } else {
            float x;
            float y;
            boolean z;
            switch (a) {
                case IcsToast.LENGTH_SHORT:
                    this.k = false;
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    this.m = x;
                    this.n = y;
                    yVar = this.o;
                    if (y.b(this.g, (int) x, (int) y) && b(this.g)) {
                        z = true;
                    }
                    z = false;
                    break;
                case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    x = Math.abs(x - this.m);
                    y = Math.abs(y - this.n);
                    if (x > ((float) this.o.d()) && y > x) {
                        this.o.e();
                        this.k = true;
                        return false;
                    }
                    z = false;
                    break;
                default:
                    z = false;
                    break;
            }
            return this.o.a(motionEvent) || i != 0;
        }
    }

    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i3 - i;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.q) {
            float f;
            f = (this.f && this.p) ? 1.0f : 0.0f;
            this.h = f;
        }
        int i7 = 0;
        int i8 = paddingLeft;
        while (i7 < childCount) {
            int i9;
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                i9 = 0;
                if (layoutParams.b) {
                    int min = Math.min(i8, i6 - paddingRight - this.e) - paddingLeft - layoutParams.leftMargin + layoutParams.rightMargin;
                    this.j = min;
                    layoutParams.c = ((layoutParams.leftMargin + paddingLeft) + min) + (measuredWidth / 2) > i6 - paddingRight;
                    i5 = layoutParams.leftMargin + ((int) (((float) min) * this.h)) + paddingLeft;
                } else {
                    i5 = (!this.f || this.l == 0) ? 0 : (int) ((1.0f - this.h) * ((float) this.l));
                    i9 = i5;
                    i5 = i8;
                }
                int i10 = i5 - i9;
                childAt.layout(i10, paddingTop, i10 + measuredWidth, childAt.getMeasuredHeight() + paddingTop);
                i8 += childAt.getWidth();
            } else {
                i5 = paddingLeft;
            }
            i7++;
            paddingLeft = i5;
        }
        if (this.q) {
            View childAt2;
            if (this.f) {
                if (this.l != 0) {
                    float f2 = this.h;
                    layoutParams = (LayoutParams) this.g.getLayoutParams();
                    i5 = (!layoutParams.c || layoutParams.leftMargin > 0) ? 0 : 1;
                    i8 = getChildCount();
                    i10 = 0;
                    while (i10 < i8) {
                        View childAt3 = getChildAt(i10);
                        if (childAt3 != this.g) {
                            i7 = (int) ((1.0f - this.i) * ((float) this.l));
                            this.i = f2;
                            childAt3.offsetLeftAndRight(i7 - ((int) ((1.0f - f2) * ((float) this.l))));
                            if (i5 != 0) {
                                a(childAt3, 1.0f - this.i, this.c);
                            }
                        }
                        i10++;
                    }
                }
                if (((LayoutParams) this.g.getLayoutParams()).c) {
                    a(this.g, this.h, this.b);
                }
            } else {
                i5 = 0;
                while (i5 < childCount) {
                    a(getChildAt(i5), 0.0f, this.b);
                    i5++;
                }
            }
            View view = this.g;
            paddingRight = getPaddingLeft();
            paddingTop = getWidth() - getPaddingRight();
            childCount = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            if (view != null) {
                Drawable background = view.getBackground();
                boolean z2;
                if (background == null) {
                    z2 = 0;
                } else if (background.getOpacity() == -1) {
                    z2 = 1;
                } else {
                    z2 = 0;
                }
                if (i5 != 0) {
                    i8 = view.getLeft();
                    i9 = view.getRight();
                    i10 = view.getTop();
                    i5 = view.getBottom();
                    measuredWidth = getChildCount();
                    i7 = 0;
                    while (i7 < measuredWidth) {
                        childAt2 = getChildAt(i7);
                        if (childAt2 != view) {
                            break;
                            break;
                        } else {
                            paddingLeft = (Math.max(paddingRight, childAt2.getLeft()) < i || Math.max(childCount, childAt2.getTop()) < i || Math.min(paddingTop, childAt2.getRight()) > i || Math.min(height, childAt2.getBottom()) > i) ? 0 : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT;
                            childAt2.setVisibility(paddingLeft);
                            i7++;
                        }
                    }
                }
            }
            i5 = 0;
            i10 = 0;
            i9 = 0;
            i8 = 0;
            measuredWidth = getChildCount();
            i7 = 0;
            while (i7 < measuredWidth) {
                childAt2 = getChildAt(i7);
                if (childAt2 != view) {
                    break;
                    break;
                } else {
                    childAt2.setVisibility(paddingLeft);
                    i7++;
                }
            }
        }
        this.q = false;
    }

    protected final void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        } else if (mode2 == 0) {
            throw new IllegalStateException("Height must not be UNSPECIFIED");
        } else {
            int i3;
            LayoutParams layoutParams;
            int i4;
            int makeMeasureSpec;
            switch (mode2) {
                case Integer.MIN_VALUE:
                    mode = 0;
                    i3 = size2 - getPaddingTop() - getPaddingBottom();
                    break;
                case 1073741824:
                    mode = size2 - getPaddingTop() - getPaddingBottom();
                    i3 = mode;
                    break;
                default:
                    mode = 0;
                    i3 = -1;
                    break;
            }
            boolean z = false;
            int paddingLeft = size - getPaddingLeft() - getPaddingRight();
            int childCount = getChildCount();
            if (childCount > 2) {
                Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
            }
            this.g = null;
            int i5 = 0;
            int i6 = mode;
            float f = 0.0f;
            while (i5 < childCount) {
                float f2;
                boolean z2;
                View childAt = getChildAt(i5);
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (childAt.getVisibility() == 8) {
                    layoutParams.c = false;
                    mode = paddingLeft;
                    i4 = i6;
                    f2 = f;
                    z2 = z;
                } else {
                    boolean z3;
                    if (layoutParams.a > 0.0f) {
                        f += layoutParams.a;
                        if (layoutParams.width == 0) {
                            mode = paddingLeft;
                            i4 = i6;
                            f2 = f;
                            z2 = z;
                        }
                    }
                    i4 = layoutParams.leftMargin + layoutParams.rightMargin;
                    if (layoutParams.width == -2) {
                        i4 = MeasureSpec.makeMeasureSpec(size - i4, Integer.MIN_VALUE);
                    } else if (layoutParams.width == -1) {
                        i4 = MeasureSpec.makeMeasureSpec(size - i4, 1073741824);
                    } else {
                        i4 = MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
                    }
                    if (layoutParams.height == -2) {
                        makeMeasureSpec = MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                    } else if (layoutParams.height == -1) {
                        makeMeasureSpec = MeasureSpec.makeMeasureSpec(i3, 1073741824);
                    } else {
                        makeMeasureSpec = MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                    }
                    childAt.measure(i4, makeMeasureSpec);
                    i4 = childAt.getMeasuredWidth();
                    makeMeasureSpec = childAt.getMeasuredHeight();
                    if (mode2 == Integer.MIN_VALUE && makeMeasureSpec > i6) {
                        i6 = Math.min(makeMeasureSpec, i3);
                    }
                    makeMeasureSpec = paddingLeft - i4;
                    z3 = makeMeasureSpec < 0;
                    layoutParams.b = z3;
                    i4 = z3 | z;
                    if (layoutParams.b) {
                        this.g = childAt;
                    }
                    mode = makeMeasureSpec;
                    f2 = f;
                    size2 = i4;
                    i4 = i6;
                }
                i5++;
                z = z2;
                i6 = i4;
                paddingLeft = mode;
                f = f2;
            }
            if (z || f > 0.0f) {
                int i7 = size - this.e;
                mode2 = 0;
                while (mode2 < childCount) {
                    View childAt2 = getChildAt(mode2);
                    if (childAt2.getVisibility() != 8) {
                        layoutParams = (LayoutParams) childAt2.getLayoutParams();
                        i5 = (layoutParams.width != 0 || layoutParams.a <= 0.0f) ? 0 : 1;
                        makeMeasureSpec = i5 != 0 ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.g) {
                            if (layoutParams.a > 0.0f) {
                                if (layoutParams.width != 0) {
                                    i4 = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                } else if (layoutParams.height == -2) {
                                    i4 = MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                                } else if (layoutParams.height == -1) {
                                    i4 = MeasureSpec.makeMeasureSpec(i3, 1073741824);
                                } else {
                                    i4 = MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                                }
                                if (z) {
                                    mode = size - layoutParams.rightMargin + layoutParams.leftMargin;
                                    i5 = MeasureSpec.makeMeasureSpec(mode, 1073741824);
                                    if (makeMeasureSpec != mode) {
                                        childAt2.measure(i5, i4);
                                    }
                                } else {
                                    childAt2.measure(MeasureSpec.makeMeasureSpec(((int) ((layoutParams.a * ((float) Math.max(0, paddingLeft))) / f)) + makeMeasureSpec, 1073741824), i4);
                                }
                            }
                        } else if (layoutParams.width < 0) {
                            if (makeMeasureSpec > i7 || layoutParams.a > 0.0f) {
                                if (i5 == 0) {
                                    mode = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                } else if (layoutParams.height == -2) {
                                    mode = MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                                } else if (layoutParams.height == -1) {
                                    mode = MeasureSpec.makeMeasureSpec(i3, 1073741824);
                                } else {
                                    mode = MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                                }
                                childAt2.measure(MeasureSpec.makeMeasureSpec(i7, 1073741824), mode);
                            }
                        }
                    }
                    mode2++;
                }
            }
            setMeasuredDimension(size, i6);
            this.f = z;
            if (this.o.a() != 0 && !z) {
                this.o.f();
            }
        }
    }

    protected final void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        View view;
        if (savedState.a) {
            view = this.g;
            if (this.q || a(1.0f)) {
                this.p = true;
            }
        } else {
            view = this.g;
            a();
        }
        this.p = savedState.a;
    }

    protected final Parcelable onSaveInstanceState() {
        boolean z;
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        if (!this.f) {
            z = this.p;
        } else if (!this.f || this.h == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        savedState.a = z;
        return savedState;
    }

    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.q = true;
        }
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f) {
            return super.onTouchEvent(motionEvent);
        }
        this.o.b(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & 255) {
            case IcsToast.LENGTH_SHORT:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.m = x;
                this.n = y;
                break;
            case IcsToast.LENGTH_LONG:
                if (b(this.g)) {
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    float f = x - this.m;
                    float f2 = y - this.n;
                    int d = this.o.d();
                    if (f * f + f2 * f2 < ((float) (d * d))) {
                        y yVar = this.o;
                        if (y.b(this.g, (int) x, (int) y)) {
                            View view = this.g;
                            a();
                        }
                    }
                }
                break;
        }
        return true;
    }

    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.f) {
            this.p = view == this.g;
        }
    }
}