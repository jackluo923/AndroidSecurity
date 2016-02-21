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
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    private final ArrayList mPostedRunnables;
    private boolean mPreservedOpenState;
    private Drawable mShadowDrawable;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect;

        AccessibilityDelegate() {
            this.mTmpRect = new Rect();
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        public boolean filter(View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            copyNodeInfoNoChildren(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource(view);
            ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!filter(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
                i++;
            }
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return filter(view) ? false : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    private class DisableLayerRunnable implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                ViewCompat.setLayerType(this.mChildView, 0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    private class DragHelperCallback extends Callback {
        private DragHelperCallback() {
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            android.support.v4.widget.SlidingPaneLayout.LayoutParams layoutParams = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) SlidingPaneLayout.this.mSlideableView.getLayoutParams();
            int paddingLeft = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
            return Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.mSlideRange + paddingLeft);
        }

        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        public void onEdgeDragStarted(int i, int i2) {
            SlidingPaneLayout.this.mDragHelper.captureChildView(SlidingPaneLayout.this.mSlideableView, i2);
        }

        public void onViewCaptured(View view, int i) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }

        public void onViewDragStateChanged(int i) {
            if (SlidingPaneLayout.this.mDragHelper.getViewDragState() != 0) {
                return;
            }
            if (SlidingPaneLayout.this.mSlideOffset == 0.0f) {
                SlidingPaneLayout.this.updateObscuredViewsVisibility(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.dispatchOnPanelClosed(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = false;
            } else {
                SlidingPaneLayout.this.dispatchOnPanelOpened(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = true;
            }
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.onPanelDragged(i);
            SlidingPaneLayout.this.invalidate();
        }

        public void onViewReleased(View view, float f, float f2) {
            android.support.v4.widget.SlidingPaneLayout.LayoutParams layoutParams = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams();
            int paddingLeft = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
            if (f > 0.0f || (f == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                paddingLeft += SlidingPaneLayout.this.mSlideRange;
            }
            SlidingPaneLayout.this.mDragHelper.settleCapturedViewAt(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        public boolean tryCaptureView(View view, int i) {
            return SlidingPaneLayout.this.mIsUnableToDrag ? false : ((android.support.v4.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams()).slideable;
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        private static final int[] ATTRS;
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;

        static {
            ATTRS = new int[]{16843137};
        }

        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.weight = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = obtainStyledAttributes.getFloat(0, BitmapDescriptorFactory.HUE_RED);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(android.support.v4.widget.SlidingPaneLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
            this.weight = layoutParams.weight;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = 0.0f;
        }
    }

    public static interface PanelSlideListener {
        void onPanelClosed(View view);

        void onPanelOpened(View view);

        void onPanelSlide(View view, float f);
    }

    static class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        boolean isOpen;

        static {
            CREATOR = new Creator() {
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(null);
                }

                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.isOpen = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isOpen ? 1 : 0);
        }
    }

    public static class SimplePanelSlideListener implements android.support.v4.widget.SlidingPaneLayout.PanelSlideListener {
        public void onPanelClosed(View view) {
        }

        public void onPanelOpened(View view) {
        }

        public void onPanelSlide(View view, float f) {
        }
    }

    static interface SlidingPanelLayoutImpl {
        void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view);
    }

    static class SlidingPanelLayoutImplBase implements SlidingPanelLayoutImpl {
        SlidingPanelLayoutImplBase() {
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.postInvalidateOnAnimation(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    static class SlidingPanelLayoutImplJB extends SlidingPanelLayoutImplBase {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        SlidingPanelLayoutImplJB() {
            try {
                this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", (Class[]) 0);
            } catch (NoSuchMethodException e) {
                Log.e(TAG, "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                this.mRecreateDisplayList.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(TAG, "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.mGetDisplayList == null || this.mRecreateDisplayList == null) {
                view.invalidate();
            } else {
                try {
                    this.mRecreateDisplayList.setBoolean(view, true);
                    this.mGetDisplayList.invoke(view, (Object[]) 0);
                } catch (Exception e) {
                    Log.e(TAG, "Error refreshing display list state", e);
                }
                super.invalidateChildRegion(slidingPaneLayout, view);
            }
        }
    }

    static class SlidingPanelLayoutImplJBMR1 extends SlidingPanelLayoutImplBase {
        SlidingPanelLayoutImplJBMR1() {
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.setLayerPaint(view, ((android.support.v4.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams()).dimPaint);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 17) {
            IMPL = new SlidingPanelLayoutImplJBMR1();
        } else if (i >= 16) {
            IMPL = new SlidingPanelLayoutImplJB();
        } else {
            IMPL = new SlidingPanelLayoutImplBase();
        }
    }

    public SlidingPaneLayout(Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSliderFadeColor = -858993460;
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList();
        float f = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int) (32.0f * f + 0.5f);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        this.mDragHelper = ViewDragHelper.create(this, 0.5f, new DragHelperCallback(null));
        this.mDragHelper.setEdgeTrackingEnabled(1);
        this.mDragHelper.setMinVelocity(f * 400.0f);
    }

    private boolean closePane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(BitmapDescriptorFactory.HUE_RED, i)) {
            return false;
        }
        this.mPreservedOpenState = false;
        return true;
    }

    private void dimChildView(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (((int) (((float) ((-16777216 & i) >>> 24)) * f)) << 24) | (16777215 & i);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(i2, Mode.SRC_OVER));
            if (ViewCompat.getLayerType(view) != 2) {
                ViewCompat.setLayerType(view, GoogleScorer.CLIENT_PLUS, layoutParams.dimPaint);
            }
            invalidateChildRegion(view);
        } else if (ViewCompat.getLayerType(view) != 0) {
            if (layoutParams.dimPaint != null) {
                layoutParams.dimPaint.setColorFilter(null);
            }
            Runnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.mPostedRunnables.add(disableLayerRunnable);
            ViewCompat.postOnAnimation(this, disableLayerRunnable);
        }
    }

    private void invalidateChildRegion(View view) {
        IMPL.invalidateChildRegion(this, view);
    }

    private void onPanelDragged(int i) {
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        this.mSlideOffset = ((float) (i - (getPaddingLeft() + layoutParams.leftMargin))) / ((float) this.mSlideRange);
        if (this.mParallaxBy != 0) {
            parallaxOtherViews(this.mSlideOffset);
        }
        if (layoutParams.dimWhenOffset) {
            dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        dispatchOnPanelSlide(this.mSlideableView);
    }

    private boolean openPane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(1.0f, i)) {
            return false;
        }
        this.mPreservedOpenState = true;
        return true;
    }

    private void parallaxOtherViews(float f) {
        int i = 0;
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        int i2 = (!layoutParams.dimWhenOffset || layoutParams.leftMargin > 0) ? false : 1;
        int childCount = getChildCount();
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt != this.mSlideableView) {
                int i3 = (int) ((1.0f - this.mParallaxOffset) * ((float) this.mParallaxBy));
                this.mParallaxOffset = f;
                childAt.offsetLeftAndRight(i3 - ((int) ((1.0f - f) * ((float) this.mParallaxBy))));
                if (i2 != 0) {
                    dimChildView(childAt, 1.0f - this.mParallaxOffset, this.mCoveredFadeColor);
                }
            }
            i++;
        }
    }

    private static boolean viewIsOpaque(View view) {
        if (ViewCompat.isOpaque(view)) {
            return true;
        }
        if (VERSION.SDK_INT >= 18) {
            return false;
        }
        Drawable background = view.getBackground();
        if (background == null) {
            return false;
        }
        return background.getOpacity() == -1;
    }

    protected boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            int i4 = viewGroup.getChildCount() - 1;
            while (i4 >= 0) {
                View childAt = viewGroup.getChildAt(i4);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    if (canScroll(childAt, true, i, i2 + scrollX - childAt.getLeft(), i3 + scrollY - childAt.getTop())) {
                        return true;
                    }
                }
                i4--;
            }
        }
        return z && ViewCompat.canScrollHorizontally(view, -i);
    }

    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams);
    }

    public boolean closePane() {
        return closePane(this.mSlideableView, 0);
    }

    public void computeScroll() {
        if (!this.mDragHelper.continueSettling(true)) {
            return;
        }
        if (this.mCanSlide) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            this.mDragHelper.abort();
        }
    }

    void dispatchOnPanelClosed(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelClosed(view);
        }
        sendAccessibilityEvent(DEFAULT_OVERHANG_SIZE);
    }

    void dispatchOnPanelOpened(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelOpened(view);
        }
        sendAccessibilityEvent(DEFAULT_OVERHANG_SIZE);
    }

    void dispatchOnPanelSlide(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && this.mShadowDrawable != null) {
            int intrinsicWidth = this.mShadowDrawable.getIntrinsicWidth();
            int left = childAt.getLeft();
            this.mShadowDrawable.setBounds(left - intrinsicWidth, childAt.getTop(), left, childAt.getBottom());
            this.mShadowDrawable.draw(canvas);
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save(GoogleScorer.CLIENT_PLUS);
        if (!(!this.mCanSlide || layoutParams.slideable || this.mSlideableView == null)) {
            canvas.getClipBounds(this.mTmpRect);
            this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            canvas.clipRect(this.mTmpRect);
        }
        if (VERSION.SDK_INT >= 11) {
            drawChild = super.drawChild(canvas, view, j);
        } else if (!layoutParams.dimWhenOffset || this.mSlideOffset <= 0.0f) {
            if (view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(false);
            }
            drawChild = super.drawChild(canvas, view, j);
        } else {
            if (!view.isDrawingCacheEnabled()) {
                view.setDrawingCacheEnabled(true);
            }
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                canvas.drawBitmap(drawingCache, (float) view.getLeft(), (float) view.getTop(), layoutParams.dimPaint);
                drawChild = false;
            } else {
                Log.e(TAG, "drawChild: child view " + view + " returned null drawing cache");
                drawChild = super.drawChild(canvas, view, j);
            }
        }
        canvas.restoreToCount(save);
        return drawChild;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        boolean z;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        z = (this.mCanSlide && layoutParams.dimWhenOffset && this.mSlideOffset > 0.0f) ? 1 : false;
        return z;
    }

    public boolean isOpen() {
        return !this.mCanSlide || this.mSlideOffset == 1.0f;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int size = this.mPostedRunnables.size();
        int i = 0;
        while (i < size) {
            ((DisableLayerRunnable) this.mPostedRunnables.get(i)).run();
            i++;
        }
        this.mPostedRunnables.clear();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (!this.mCanSlide && actionMasked == 0 && getChildCount() > 1) {
            View childAt = getChildAt(1);
            if (childAt != null) {
                this.mPreservedOpenState = !this.mDragHelper.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
            }
        }
        if (!this.mCanSlide || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.cancel();
            return false;
        } else {
            float x;
            float y;
            boolean z;
            switch (actionMasked) {
                case IabHelper.BILLING_RESPONSE_RESULT_OK:
                    this.mIsUnableToDrag = false;
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    this.mInitialMotionX = x;
                    this.mInitialMotionY = y;
                    if (this.mDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y) && isDimmed(this.mSlideableView)) {
                        z = true;
                    }
                    z = false;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    x = Math.abs(x - this.mInitialMotionX);
                    y = Math.abs(y - this.mInitialMotionY);
                    if (x > ((float) this.mDragHelper.getTouchSlop()) && y > x) {
                        this.mDragHelper.cancel();
                        this.mIsUnableToDrag = true;
                        return false;
                    }
                    z = false;
                    break;
                default:
                    z = false;
                    break;
            }
            return this.mDragHelper.shouldInterceptTouchEvent(motionEvent) || i != 0;
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i3 - i;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.mFirstLayout) {
            float f;
            f = (this.mCanSlide && this.mPreservedOpenState) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            this.mSlideOffset = f;
        }
        int i7 = 0;
        int i8 = paddingLeft;
        while (i7 < childCount) {
            int i9;
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                i9 = i8;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.slideable) {
                    int min = Math.min(paddingLeft, i6 - paddingRight - this.mOverhangSize) - i8 - layoutParams.leftMargin + layoutParams.rightMargin;
                    this.mSlideRange = min;
                    layoutParams.dimWhenOffset = ((layoutParams.leftMargin + i8) + min) + (measuredWidth / 2) > i6 - paddingRight;
                    i9 = layoutParams.leftMargin + ((int) (((float) min) * this.mSlideOffset)) + i8;
                    i5 = 0;
                } else if (!this.mCanSlide || this.mParallaxBy == 0) {
                    i5 = 0;
                    i9 = paddingLeft;
                } else {
                    i5 = (int) ((1.0f - this.mSlideOffset) * ((float) this.mParallaxBy));
                    i9 = paddingLeft;
                }
                i5 = i9 - i5;
                childAt.layout(i5, paddingTop, i5 + measuredWidth, childAt.getMeasuredHeight() + paddingTop);
                paddingLeft += childAt.getWidth();
            }
            i7++;
            i8 = i9;
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide) {
                if (this.mParallaxBy != 0) {
                    parallaxOtherViews(this.mSlideOffset);
                }
                if (((LayoutParams) this.mSlideableView.getLayoutParams()).dimWhenOffset) {
                    dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
                }
            } else {
                i5 = 0;
                while (i5 < childCount) {
                    dimChildView(getChildAt(i5), BitmapDescriptorFactory.HUE_RED, this.mSliderFadeColor);
                    i5++;
                }
            }
            updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            } else if (mode == Integer.MIN_VALUE) {
                i3 = mode2;
                i4 = size;
                size = size2;
            } else {
                if (mode == 0) {
                    i3 = mode2;
                    i4 = 300;
                    size = size2;
                }
                i3 = mode2;
                i4 = size;
                size = size2;
            }
        } else if (mode2 == 0 && isInEditMode()) {
            if (mode2 == 0) {
                i3 = Integer.MIN_VALUE;
                i4 = size;
                size = 300;
            }
            i3 = mode2;
            i4 = size;
            size = size2;
        } else {
            throw new IllegalStateException("Height must not be UNSPECIFIED");
        }
        switch (i3) {
            case ExploreByTouchHelper.INVALID_ID:
                size2 = 0;
                mode2 = size - getPaddingTop() - getPaddingBottom();
                break;
            case 1073741824:
                size2 = size - getPaddingTop() - getPaddingBottom();
                mode2 = size2;
                break;
            default:
                size2 = 0;
                mode2 = -1;
                break;
        }
        boolean z = false;
        int paddingLeft = i4 - getPaddingLeft() - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e(TAG, "onMeasure: More than two child views are not supported.");
        }
        this.mSlideableView = null;
        int i6 = 0;
        int i7 = size2;
        float f = 0.0f;
        while (i6 < childCount) {
            float f2;
            boolean z2;
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.dimWhenOffset = false;
                size2 = paddingLeft;
                f2 = f;
                i5 = i7;
                z2 = z;
            } else {
                boolean z3;
                if (layoutParams.weight > 0.0f) {
                    f += layoutParams.weight;
                    if (layoutParams.width == 0) {
                        size2 = paddingLeft;
                        f2 = f;
                        i5 = i7;
                        z2 = z;
                    }
                }
                mode = layoutParams.leftMargin + layoutParams.rightMargin;
                if (layoutParams.width == -2) {
                    mode = MeasureSpec.makeMeasureSpec(i4 - mode, ExploreByTouchHelper.INVALID_ID);
                } else if (layoutParams.width == -1) {
                    mode = MeasureSpec.makeMeasureSpec(i4 - mode, 1073741824);
                } else {
                    mode = MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
                }
                if (layoutParams.height == -2) {
                    i5 = MeasureSpec.makeMeasureSpec(mode2, ExploreByTouchHelper.INVALID_ID);
                } else if (layoutParams.height == -1) {
                    i5 = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                } else {
                    i5 = MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                }
                childAt.measure(mode, i5);
                mode = childAt.getMeasuredWidth();
                i5 = childAt.getMeasuredHeight();
                if (i3 == Integer.MIN_VALUE && i5 > i7) {
                    i7 = Math.min(i5, mode2);
                }
                i5 = paddingLeft - mode;
                z3 = i5 < 0;
                layoutParams.slideable = z3;
                mode = z3 | z;
                if (layoutParams.slideable) {
                    this.mSlideableView = childAt;
                }
                size2 = i5;
                i5 = i7;
                float f3 = f;
                size = mode;
                f2 = f3;
            }
            i6++;
            z = z2;
            i7 = i5;
            f = f2;
            paddingLeft = size2;
        }
        if (z || f > 0.0f) {
            int i8 = i4 - this.mOverhangSize;
            i3 = 0;
            while (i3 < childCount) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getVisibility() != 8) {
                    layoutParams = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != 8) {
                        i6 = (layoutParams.width != 0 || layoutParams.weight <= 0.0f) ? 0 : 1;
                        i5 = i6 != 0 ? 0 : childAt2.getMeasuredWidth();
                        if (!z || childAt2 == this.mSlideableView) {
                            if (layoutParams.weight > 0.0f) {
                                if (layoutParams.width != 0) {
                                    mode = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                } else if (layoutParams.height == -2) {
                                    mode = MeasureSpec.makeMeasureSpec(mode2, ExploreByTouchHelper.INVALID_ID);
                                } else if (layoutParams.height == -1) {
                                    mode = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                                } else {
                                    mode = MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                                }
                                if (z) {
                                    size2 = i4 - layoutParams.rightMargin + layoutParams.leftMargin;
                                    i6 = MeasureSpec.makeMeasureSpec(size2, 1073741824);
                                    if (i5 != size2) {
                                        childAt2.measure(i6, mode);
                                    }
                                } else {
                                    childAt2.measure(MeasureSpec.makeMeasureSpec(((int) ((layoutParams.weight * ((float) Math.max(0, paddingLeft))) / f)) + i5, 1073741824), mode);
                                }
                            }
                        } else if (layoutParams.width < 0) {
                            if (i5 > i8 || layoutParams.weight > 0.0f) {
                                if (i6 == 0) {
                                    size2 = MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                } else if (layoutParams.height == -2) {
                                    size2 = MeasureSpec.makeMeasureSpec(mode2, ExploreByTouchHelper.INVALID_ID);
                                } else if (layoutParams.height == -1) {
                                    size2 = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                                } else {
                                    size2 = MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                                }
                                childAt2.measure(MeasureSpec.makeMeasureSpec(i8, 1073741824), size2);
                            }
                        }
                    }
                }
                i3++;
            }
        }
        setMeasuredDimension(i4, i7);
        this.mCanSlide = z;
        if (this.mDragHelper.getViewDragState() != 0 && !z) {
            this.mDragHelper.abort();
        }
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isOpen) {
            openPane();
        } else {
            closePane();
        }
        this.mPreservedOpenState = savedState.isOpen;
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.isOpen = isSlideable() ? isOpen() : this.mPreservedOpenState;
        return savedState;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.mFirstLayout = true;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & 255) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                return true;
            case GoogleScorer.CLIENT_GAMES:
                if (!isDimmed(this.mSlideableView)) {
                    return true;
                }
                x = motionEvent.getX();
                y = motionEvent.getY();
                float f = x - this.mInitialMotionX;
                float f2 = y - this.mInitialMotionY;
                int touchSlop = this.mDragHelper.getTouchSlop();
                if (f * f + f2 * f2 >= ((float) (touchSlop * touchSlop)) || !this.mDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y)) {
                    return true;
                }
                closePane(this.mSlideableView, 0);
                return true;
            default:
                return true;
        }
    }

    public boolean openPane() {
        return openPane(this.mSlideableView, 0);
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.mCanSlide) {
            this.mPreservedOpenState = view == this.mSlideableView;
        }
    }

    void setAllChildrenVisible() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
            i++;
        }
    }

    public void setCoveredFadeColor(int i) {
        this.mCoveredFadeColor = i;
    }

    public void setPanelSlideListener(PanelSlideListener panelSlideListener) {
        this.mPanelSlideListener = panelSlideListener;
    }

    public void setParallaxDistance(int i) {
        this.mParallaxBy = i;
        requestLayout();
    }

    public void setShadowDrawable(Drawable drawable) {
        this.mShadowDrawable = drawable;
    }

    public void setShadowResource(int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setSliderFadeColor(int i) {
        this.mSliderFadeColor = i;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    boolean smoothSlideTo(float f, int i) {
        if (!this.mCanSlide) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        if (!this.mDragHelper.smoothSlideViewTo(this.mSlideableView, (int) (((float) (layoutParams.leftMargin + getPaddingLeft())) + ((float) this.mSlideRange) * f), this.mSlideableView.getTop())) {
            return false;
        }
        setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    void updateObscuredViewsVisibility(View view) {
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        int i;
        int i2;
        int i3;
        int i4;
        if (view == null || !viewIsOpaque(view)) {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i4 = view.getLeft();
            i3 = view.getRight();
            i2 = view.getTop();
            i = view.getBottom();
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt != view) {
                int i6;
                i6 = (Math.max(paddingLeft, childAt.getLeft()) < i || Math.max(paddingTop, childAt.getTop()) < i || Math.min(width, childAt.getRight()) > i || Math.min(height, childAt.getBottom()) > i) ? 0 : GoogleScorer.CLIENT_APPSTATE;
                childAt.setVisibility(i6);
                i5++;
            } else {
                return;
            }
        }
    }
}