package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class DrawerLayout extends ViewGroup {
    private static final boolean ALLOW_EDGE_LOCK = false;
    private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    private static final int[] LAYOUT_ATTRS;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private static final float TOUCH_SLOP_SENSITIVITY = 1.0f;
    private boolean mChildrenCanceledTouch;
    private boolean mDisallowInterceptRequested;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private final ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;
    private DrawerListener mListener;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mMinDrawerMargin;
    private final ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowLeft;
    private Drawable mShadowRight;

    public static interface DrawerListener {
        void onDrawerClosed(View view);

        void onDrawerOpened(View view);

        void onDrawerSlide(View view, float f);

        void onDrawerStateChanged(int i);
    }

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
        }

        public boolean filter(View view) {
            View findOpenDrawer = DrawerLayout.this.findOpenDrawer();
            return (findOpenDrawer == null || findOpenDrawer == view) ? ALLOW_EDGE_LOCK : CHILDREN_DISALLOW_INTERCEPT;
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            accessibilityNodeInfoCompat.setSource(view);
            ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            copyNodeInfoNoChildren(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            int childCount = DrawerLayout.this.getChildCount();
            int i = STATE_IDLE;
            while (i < childCount) {
                View childAt = DrawerLayout.this.getChildAt(i);
                if (!filter(childAt)) {
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
                i++;
            }
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return filter(view) ? ALLOW_EDGE_LOCK : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity;
        boolean isPeeking;
        boolean knownOpen;
        float onScreen;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.gravity = i3;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
            this.gravity = obtainStyledAttributes.getInt(STATE_IDLE, STATE_IDLE);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(android.support.v4.widget.DrawerLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = 0;
        }
    }

    protected static class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        int lockModeLeft;
        int lockModeRight;
        int openDrawerGravity;

        static {
            CREATOR = new Creator() {
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel);
                }

                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.openDrawerGravity = 0;
            this.lockModeLeft = 0;
            this.lockModeRight = 0;
            this.openDrawerGravity = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
            this.lockModeLeft = 0;
            this.lockModeRight = 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.openDrawerGravity);
        }
    }

    public static abstract class SimpleDrawerListener implements android.support.v4.widget.DrawerLayout.DrawerListener {
        public void onDrawerClosed(View view) {
        }

        public void onDrawerOpened(View view) {
        }

        public void onDrawerSlide(View view, float f) {
        }

        public void onDrawerStateChanged(int i) {
        }
    }

    private class ViewDragCallback extends Callback {
        private ViewDragHelper mDragger;
        private final int mGravity;
        private final Runnable mPeekRunnable;

        public ViewDragCallback(int i) {
            this.mPeekRunnable = new Runnable() {
                public void run() {
                    ViewDragCallback.this.peekDrawer();
                }
            };
            this.mGravity = i;
        }

        private void closeOtherDrawer() {
            int i = IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
            if (this.mGravity == 3) {
                i = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
            }
            View findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(i);
            if (findDrawerWithGravity != null) {
                DrawerLayout.this.closeDrawer(findDrawerWithGravity);
            }
        }

        private void peekDrawer() {
            View view;
            int i;
            int i2 = STATE_IDLE;
            int edgeSize = this.mDragger.getEdgeSize();
            int i3 = this.mGravity == 3;
            if (i3 != 0) {
                View findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                if (findDrawerWithGravity != null) {
                    i2 = -findDrawerWithGravity.getWidth();
                }
                i2 += edgeSize;
                view = findDrawerWithGravity;
                i = i2;
            } else {
                i2 = DrawerLayout.this.getWidth() - edgeSize;
                view = DrawerLayout.this.findDrawerWithGravity(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
                i = i2;
            }
            if (view == null) {
                return;
            }
            if (((i3 != 0 && view.getLeft() < i) || (i3 == 0 && view.getLeft() > i)) && DrawerLayout.this.getDrawerLockMode(view) == 0) {
                android.support.v4.widget.DrawerLayout.LayoutParams layoutParams = (android.support.v4.widget.DrawerLayout.LayoutParams) view.getLayoutParams();
                this.mDragger.smoothSlideViewTo(view, i, view.getTop());
                layoutParams.isPeeking = true;
                DrawerLayout.this.invalidate();
                closeOtherDrawer();
                DrawerLayout.this.cancelChildViewTouch();
            }
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            if (DrawerLayout.this.checkDrawerViewGravity(view, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                return Math.max(-view.getWidth(), Math.min(i, STATE_IDLE));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        public void onEdgeDragStarted(int i, int i2) {
            View findDrawerWithGravity = (i & 1) == 1 ? DrawerLayout.this.findDrawerWithGravity(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) : DrawerLayout.this.findDrawerWithGravity(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
            if (findDrawerWithGravity != null && DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) == 0) {
                this.mDragger.captureChildView(findDrawerWithGravity, i2);
            }
        }

        public boolean onEdgeLock(int i) {
            return ALLOW_EDGE_LOCK;
        }

        public void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.mPeekRunnable, 160);
        }

        public void onViewCaptured(View view, int i) {
            ((android.support.v4.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).isPeeking = false;
            closeOtherDrawer();
        }

        public void onViewDragStateChanged(int i) {
            DrawerLayout.this.updateDrawerState(this.mGravity, i, this.mDragger.getCapturedView());
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width;
            int width2 = view.getWidth();
            width = DrawerLayout.this.checkDrawerViewGravity(view, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) ? ((float) (width2 + i)) / ((float) width2) : ((float) (DrawerLayout.this.getWidth() - i)) / ((float) width2);
            DrawerLayout.this.setDrawerViewOffset(view, width);
            view.setVisibility(width == 0.0f ? GoogleScorer.CLIENT_APPSTATE : STATE_IDLE);
            DrawerLayout.this.invalidate();
        }

        public void onViewReleased(View view, float f, float f2) {
            int width;
            float drawerViewOffset = DrawerLayout.this.getDrawerViewOffset(view);
            int width2 = view.getWidth();
            if (!DrawerLayout.this.checkDrawerViewGravity(view, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                width = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && drawerViewOffset < 0.5f)) {
                    width -= width2;
                }
            } else if (f > 0.0f || (f == 0.0f && drawerViewOffset > 0.5f)) {
                width = STATE_IDLE;
            } else {
                width = -width2;
            }
            this.mDragger.settleCapturedViewAt(width, view.getTop());
            DrawerLayout.this.invalidate();
        }

        public void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.mPeekRunnable);
        }

        public void setDragger(ViewDragHelper viewDragHelper) {
            this.mDragger = viewDragHelper;
        }

        public boolean tryCaptureView(View view, int i) {
            return (DrawerLayout.this.isDrawerView(view) && DrawerLayout.this.checkDrawerViewGravity(view, this.mGravity) && DrawerLayout.this.getDrawerLockMode(view) == 0) ? CHILDREN_DISALLOW_INTERCEPT : ALLOW_EDGE_LOCK;
        }
    }

    static {
        LAYOUT_ATTRS = new int[]{16842931};
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mScrimColor = -1728053248;
        this.mScrimPaint = new Paint();
        this.mFirstLayout = true;
        float f = getResources().getDisplayMetrics().density;
        this.mMinDrawerMargin = (int) (64.0f * f + 0.5f);
        f *= 400.0f;
        this.mLeftCallback = new ViewDragCallback(3);
        this.mRightCallback = new ViewDragCallback(5);
        this.mLeftDragger = ViewDragHelper.create(this, TOUCH_SLOP_SENSITIVITY, this.mLeftCallback);
        this.mLeftDragger.setEdgeTrackingEnabled(STATE_DRAGGING);
        this.mLeftDragger.setMinVelocity(f);
        this.mLeftCallback.setDragger(this.mLeftDragger);
        this.mRightDragger = ViewDragHelper.create(this, TOUCH_SLOP_SENSITIVITY, this.mRightCallback);
        this.mRightDragger.setEdgeTrackingEnabled(STATE_SETTLING);
        this.mRightDragger.setMinVelocity(f);
        this.mRightCallback.setDragger(this.mRightDragger);
        setFocusableInTouchMode(CHILDREN_DISALLOW_INTERCEPT);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewGroupCompat.setMotionEventSplittingEnabled(this, ALLOW_EDGE_LOCK);
    }

    private View findVisibleDrawer() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (isDrawerView(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
            i++;
        }
        return null;
    }

    static String gravityToString(int i) {
        if ((i & 3) == 3) {
            return "LEFT";
        }
        return (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    private static boolean hasOpaqueBackground(View view) {
        Drawable background = view.getBackground();
        return (background == null || background.getOpacity() != -1) ? ALLOW_EDGE_LOCK : CHILDREN_DISALLOW_INTERCEPT;
    }

    private boolean hasPeekingDrawer() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).isPeeking) {
                return CHILDREN_DISALLOW_INTERCEPT;
            }
            i++;
        }
        return false;
    }

    private boolean hasVisibleDrawer() {
        return findVisibleDrawer() != null ? CHILDREN_DISALLOW_INTERCEPT : ALLOW_EDGE_LOCK;
    }

    void cancelChildViewTouch() {
        int i = STATE_IDLE;
        if (!this.mChildrenCanceledTouch) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, BitmapDescriptorFactory.HUE_RED, 0.0f, STATE_IDLE);
            int childCount = getChildCount();
            while (i < childCount) {
                getChildAt(i).dispatchTouchEvent(obtain);
                i++;
            }
            obtain.recycle();
            this.mChildrenCanceledTouch = true;
        }
    }

    boolean checkDrawerViewGravity(View view, int i) {
        return (getDrawerViewGravity(view) & i) == i ? CHILDREN_DISALLOW_INTERCEPT : ALLOW_EDGE_LOCK;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams)) ? CHILDREN_DISALLOW_INTERCEPT : ALLOW_EDGE_LOCK;
    }

    public void closeDrawer(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        View findDrawerWithGravity = findDrawerWithGravity(absoluteGravity);
        if (findDrawerWithGravity == null) {
            throw new IllegalArgumentException("No drawer view found with absolute gravity " + gravityToString(absoluteGravity));
        }
        closeDrawer(findDrawerWithGravity);
    }

    public void closeDrawer(View view) {
        if (isDrawerView(view)) {
            if (this.mFirstLayout) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                layoutParams.onScreen = 0.0f;
                layoutParams.knownOpen = false;
            } else if (checkDrawerViewGravity(view, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                this.mLeftDragger.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(view, getWidth(), view.getTop());
            }
            invalidate();
        } else {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
    }

    public void closeDrawers() {
        closeDrawers(ALLOW_EDGE_LOCK);
    }

    void closeDrawers(boolean z) {
        int childCount = getChildCount();
        int i = 0;
        int i2 = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (isDrawerView(childAt)) {
                if (!z || layoutParams.isPeeking) {
                    i2 = checkDrawerViewGravity(childAt, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) ? i2 | this.mLeftDragger.smoothSlideViewTo(childAt, -childAt.getWidth(), childAt.getTop()) : i2 | this.mRightDragger.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                    layoutParams.isPeeking = false;
                }
            }
            i++;
        }
        this.mLeftCallback.removeCallbacks();
        this.mRightCallback.removeCallbacks();
        if (i2 != 0) {
            invalidate();
        }
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        int i = 0;
        while (i < childCount) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).onScreen);
            i++;
        }
        this.mScrimOpacity = f;
        if ((this.mLeftDragger.continueSettling(CHILDREN_DISALLOW_INTERCEPT) | this.mRightDragger.continueSettling(CHILDREN_DISALLOW_INTERCEPT)) != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    void dispatchOnDrawerClosed(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.knownOpen) {
            layoutParams.knownOpen = false;
            if (this.mListener != null) {
                this.mListener.onDrawerClosed(view);
            }
            sendAccessibilityEvent(ApiEventType.API_MRAID_PLAY_AUDIO);
        }
    }

    void dispatchOnDrawerOpened(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.knownOpen) {
            layoutParams.knownOpen = true;
            if (this.mListener != null) {
                this.mListener.onDrawerOpened(view);
            }
            view.sendAccessibilityEvent(ApiEventType.API_MRAID_PLAY_AUDIO);
        }
    }

    void dispatchOnDrawerSlide(View view, float f) {
        if (this.mListener != null) {
            this.mListener.onDrawerSlide(view, f);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected boolean drawChild(android.graphics.Canvas r10, android.view.View r11, long r12) {
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
        /*
        r9 = this;
        r4 = r9.getHeight();
        r5 = r9.isContentView(r11);
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
        r8 = hasOpaqueBackground(r0);
        if (r8 == 0) goto L_0x0055;
    L_0x002d:
        r8 = r9.isDrawerView(r0);
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
        r8 = r9.checkDrawerViewGravity(r0, r8);
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
        r2 = r9.mScrimOpacity;
        r3 = 0;
        r2 = (r2 > r3 ? 1 : (r2 == r3? 0 : -1));
        if (r2 <= 0) goto L_0x0099;
    L_0x006e:
        if (r5 == 0) goto L_0x0099;
    L_0x0070:
        r2 = r9.mScrimColor;
        r3 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r2 = r2 & r3;
        r2 = r2 >>> 24;
        r2 = (float) r2;
        r3 = r9.mScrimOpacity;
        r2 = r2 * r3;
        r2 = (int) r2;
        r2 = r2 << 24;
        r3 = r9.mScrimColor;
        r4 = 16777215; // 0xffffff float:2.3509886E-38 double:8.2890456E-317;
        r3 = r3 & r4;
        r2 = r2 | r3;
        r3 = r9.mScrimPaint;
        r3.setColor(r2);
        r1 = (float) r1;
        r2 = 0;
        r3 = (float) r0;
        r0 = r9.getHeight();
        r4 = (float) r0;
        r5 = r9.mScrimPaint;
        r0 = r10;
        r0.drawRect(r1, r2, r3, r4, r5);
    L_0x0098:
        return r7;
    L_0x0099:
        r0 = r9.mShadowLeft;
        if (r0 == 0) goto L_0x00e0;
    L_0x009d:
        r0 = 3;
        r0 = r9.checkDrawerViewGravity(r11, r0);
        if (r0 == 0) goto L_0x00e0;
    L_0x00a4:
        r0 = r9.mShadowLeft;
        r0 = r0.getIntrinsicWidth();
        r1 = r11.getRight();
        r2 = r9.mLeftDragger;
        r2 = r2.getEdgeSize();
        r3 = 0;
        r4 = (float) r1;
        r2 = (float) r2;
        r2 = r4 / r2;
        r4 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = java.lang.Math.min(r2, r4);
        r2 = java.lang.Math.max(r3, r2);
        r3 = r9.mShadowLeft;
        r4 = r11.getTop();
        r0 = r0 + r1;
        r5 = r11.getBottom();
        r3.setBounds(r1, r4, r0, r5);
        r0 = r9.mShadowLeft;
        r1 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
        r1 = r1 * r2;
        r1 = (int) r1;
        r0.setAlpha(r1);
        r0 = r9.mShadowLeft;
        r0.draw(r10);
        goto L_0x0098;
    L_0x00e0:
        r0 = r9.mShadowRight;
        if (r0 == 0) goto L_0x0098;
    L_0x00e4:
        r0 = 5;
        r0 = r9.checkDrawerViewGravity(r11, r0);
        if (r0 == 0) goto L_0x0098;
    L_0x00eb:
        r0 = r9.mShadowRight;
        r0 = r0.getIntrinsicWidth();
        r1 = r11.getLeft();
        r2 = r9.getWidth();
        r2 = r2 - r1;
        r3 = r9.mRightDragger;
        r3 = r3.getEdgeSize();
        r4 = 0;
        r2 = (float) r2;
        r3 = (float) r3;
        r2 = r2 / r3;
        r3 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = java.lang.Math.min(r2, r3);
        r2 = java.lang.Math.max(r4, r2);
        r3 = r9.mShadowRight;
        r0 = r1 - r0;
        r4 = r11.getTop();
        r5 = r11.getBottom();
        r3.setBounds(r0, r4, r1, r5);
        r0 = r9.mShadowRight;
        r1 = 1132396544; // 0x437f0000 float:255.0 double:5.5947823E-315;
        r1 = r1 * r2;
        r1 = (int) r1;
        r0.setAlpha(r1);
        r0 = r9.mShadowRight;
        r0.draw(r10);
        goto L_0x0098;
    L_0x012d:
        r0 = r1;
        goto L_0x004c;
        */
    }

    View findDrawerWithGravity(int i) {
        int childCount = getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            if ((getDrawerViewGravity(childAt) & 7) == (i & 7)) {
                return childAt;
            }
            i2++;
        }
        return null;
    }

    View findOpenDrawer() {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (((LayoutParams) childAt.getLayoutParams()).knownOpen) {
                return childAt;
            }
            i++;
        }
        return null;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int getDrawerLockMode(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.mLockModeLeft;
        }
        return absoluteGravity == 5 ? this.mLockModeRight : STATE_IDLE;
    }

    public int getDrawerLockMode(View view) {
        int drawerViewGravity = getDrawerViewGravity(view);
        if (drawerViewGravity == 3) {
            return this.mLockModeLeft;
        }
        return drawerViewGravity == 5 ? this.mLockModeRight : STATE_IDLE;
    }

    int getDrawerViewGravity(View view) {
        return GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view));
    }

    float getDrawerViewOffset(View view) {
        return ((LayoutParams) view.getLayoutParams()).onScreen;
    }

    boolean isContentView(View view) {
        return ((LayoutParams) view.getLayoutParams()).gravity == 0 ? CHILDREN_DISALLOW_INTERCEPT : ALLOW_EDGE_LOCK;
    }

    public boolean isDrawerOpen(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        return findDrawerWithGravity != null ? isDrawerOpen(findDrawerWithGravity) : ALLOW_EDGE_LOCK;
    }

    public boolean isDrawerOpen(View view) {
        if (isDrawerView(view)) {
            return ((LayoutParams) view.getLayoutParams()).knownOpen;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    boolean isDrawerView(View view) {
        return (GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view)) & 7) != 0 ? CHILDREN_DISALLOW_INTERCEPT : ALLOW_EDGE_LOCK;
    }

    public boolean isDrawerVisible(int i) {
        View findDrawerWithGravity = findDrawerWithGravity(i);
        return findDrawerWithGravity != null ? isDrawerVisible(findDrawerWithGravity) : ALLOW_EDGE_LOCK;
    }

    public boolean isDrawerVisible(View view) {
        if (!isDrawerView(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        } else if (((LayoutParams) view.getLayoutParams()).onScreen > 0.0f) {
            return CHILDREN_DISALLOW_INTERCEPT;
        } else {
            return ALLOW_EDGE_LOCK;
        }
    }

    void moveDrawerToOffset(View view, float f) {
        float drawerViewOffset = getDrawerViewOffset(view);
        int width = view.getWidth();
        int i = ((int) (((float) width) * f)) - ((int) (drawerViewOffset * ((float) width)));
        if (!checkDrawerViewGravity(view, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        setDrawerViewOffset(view, f);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int shouldInterceptTouchEvent = this.mLeftDragger.shouldInterceptTouchEvent(motionEvent) | this.mRightDragger.shouldInterceptTouchEvent(motionEvent);
        boolean z;
        switch (MotionEventCompat.getActionMasked(motionEvent)) {
            case STATE_IDLE:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                z = this.mScrimOpacity > 0.0f && isContentView(this.mLeftDragger.findTopChildUnder((int) x, (int) y));
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
                break;
            case STATE_DRAGGING:
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                closeDrawers(CHILDREN_DISALLOW_INTERCEPT);
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
                z = false;
                break;
            case STATE_SETTLING:
                if (this.mLeftDragger.checkTouchSlop(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                    this.mLeftCallback.removeCallbacks();
                    this.mRightCallback.removeCallbacks();
                    z = false;
                }
                z = false;
                break;
            default:
                z = false;
                break;
        }
        return (shouldInterceptTouchEvent != 0 || i != 0 || hasPeekingDrawer() || this.mChildrenCanceledTouch) ? true : ALLOW_EDGE_LOCK;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !hasVisibleDrawer()) {
            return super.onKeyDown(i, keyEvent);
        }
        KeyEventCompat.startTracking(keyEvent);
        return CHILDREN_DISALLOW_INTERCEPT;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View findVisibleDrawer = findVisibleDrawer();
        if (findVisibleDrawer != null && getDrawerLockMode(findVisibleDrawer) == 0) {
            closeDrawers();
        }
        return findVisibleDrawer != null ? CHILDREN_DISALLOW_INTERCEPT : ALLOW_EDGE_LOCK;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mInLayout = true;
        int i5 = i3 - i;
        int childCount = getChildCount();
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (isContentView(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int i7;
                    float f;
                    int i8;
                    int i9;
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (checkDrawerViewGravity(childAt, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                        i7 = ((int) (((float) measuredWidth) * layoutParams.onScreen)) + (-measuredWidth);
                        f = ((float) (measuredWidth + i7)) / ((float) measuredWidth);
                    } else {
                        i7 = i5 - ((int) (((float) measuredWidth) * layoutParams.onScreen));
                        f = ((float) (i5 - i7)) / ((float) measuredWidth);
                    }
                    i8 = f != layoutParams.onScreen ? STATE_DRAGGING : STATE_IDLE;
                    int i10;
                    switch (layoutParams.gravity & 112) {
                        case MMException.REQUEST_NOT_PERMITTED:
                            int i11 = i4 - i2;
                            i10 = (i11 - measuredHeight) / 2;
                            if (i10 < layoutParams.topMargin) {
                                i10 = layoutParams.topMargin;
                            } else if (i10 + measuredHeight > i11 - layoutParams.bottomMargin) {
                                i10 = i11 - layoutParams.bottomMargin - measuredHeight;
                            }
                            childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                            break;
                        case 80:
                            i10 = i4 - i2;
                            childAt.layout(i7, i10 - layoutParams.bottomMargin - childAt.getMeasuredHeight(), measuredWidth + i7, i10 - layoutParams.bottomMargin);
                            break;
                        default:
                            childAt.layout(i7, layoutParams.topMargin, measuredWidth + i7, measuredHeight);
                            break;
                    }
                    if (i8 != 0) {
                        setDrawerViewOffset(childAt, f);
                    }
                    i9 = layoutParams.onScreen > 0.0f ? STATE_IDLE : GoogleScorer.CLIENT_APPSTATE;
                    if (childAt.getVisibility() != i9) {
                        childAt.setVisibility(i9);
                    }
                }
            }
            i6++;
        }
        this.mInLayout = false;
        this.mFirstLayout = false;
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
        r0 = (android.support.v4.widget.DrawerLayout.LayoutParams) r0;
        r7 = r11.isContentView(r6);
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
        r7 = r11.isDrawerView(r6);
        if (r7 == 0) goto L_0x00da;
    L_0x007d:
        r7 = r11.getDrawerViewGravity(r6);
        r7 = r7 & 7;
        r8 = r4 & r7;
        if (r8 == 0) goto L_0x00bc;
    L_0x0087:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Child drawer has absolute gravity ";
        r1 = r1.append(r2);
        r2 = gravityToString(r7);
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
        r7 = r11.mMinDrawerMargin;
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
        if (savedState.openDrawerGravity != 0) {
            View findDrawerWithGravity = findDrawerWithGravity(savedState.openDrawerGravity);
            if (findDrawerWithGravity != null) {
                openDrawer(findDrawerWithGravity);
            }
        }
        setDrawerLockMode(savedState.lockModeLeft, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        setDrawerLockMode(savedState.lockModeRight, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
    }

    protected Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = getChildAt(i);
            if (isDrawerView(childAt)) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.knownOpen) {
                    savedState.openDrawerGravity = layoutParams.gravity;
                    break;
                }
            }
            i++;
        }
        savedState.lockModeLeft = this.mLockModeLeft;
        savedState.lockModeRight = this.mLockModeRight;
        return savedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mLeftDragger.processTouchEvent(motionEvent);
        this.mRightDragger.processTouchEvent(motionEvent);
        float x;
        float y;
        switch (motionEvent.getAction() & 255) {
            case STATE_IDLE:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
                break;
            case STATE_DRAGGING:
                boolean z;
                x = motionEvent.getX();
                y = motionEvent.getY();
                View findTopChildUnder = this.mLeftDragger.findTopChildUnder((int) x, (int) y);
                if (findTopChildUnder != null && isContentView(findTopChildUnder)) {
                    x -= this.mInitialMotionX;
                    y -= this.mInitialMotionY;
                    int touchSlop = this.mLeftDragger.getTouchSlop();
                    if (x * x + y * y < ((float) (touchSlop * touchSlop))) {
                        View findOpenDrawer = findOpenDrawer();
                        if (findOpenDrawer != null) {
                            z = getDrawerLockMode(findOpenDrawer) == 2;
                            closeDrawers(z);
                            this.mDisallowInterceptRequested = false;
                        }
                    }
                }
                z = true;
                closeDrawers(z);
                this.mDisallowInterceptRequested = false;
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                closeDrawers(CHILDREN_DISALLOW_INTERCEPT);
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
                break;
        }
        return CHILDREN_DISALLOW_INTERCEPT;
    }

    public void openDrawer(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        View findDrawerWithGravity = findDrawerWithGravity(absoluteGravity);
        if (findDrawerWithGravity == null) {
            throw new IllegalArgumentException("No drawer view found with absolute gravity " + gravityToString(absoluteGravity));
        }
        openDrawer(findDrawerWithGravity);
    }

    public void openDrawer(View view) {
        if (isDrawerView(view)) {
            if (this.mFirstLayout) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                layoutParams.onScreen = 1.0f;
                layoutParams.knownOpen = true;
            } else if (checkDrawerViewGravity(view, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) {
                this.mLeftDragger.smoothSlideViewTo(view, STATE_IDLE, view.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
            }
            invalidate();
        } else {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.mDisallowInterceptRequested = z;
        if (z) {
            closeDrawers(CHILDREN_DISALLOW_INTERCEPT);
        }
    }

    public void requestLayout() {
        if (!this.mInLayout) {
            super.requestLayout();
        }
    }

    public void setDrawerListener(DrawerListener drawerListener) {
        this.mListener = drawerListener;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, (int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        setDrawerLockMode(i, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
    }

    public void setDrawerLockMode(int i, int i2) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.mLockModeLeft = i;
        } else if (absoluteGravity == 5) {
            this.mLockModeRight = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.mLeftDragger : this.mRightDragger).cancel();
        }
        View findDrawerWithGravity;
        switch (i) {
            case STATE_DRAGGING:
                findDrawerWithGravity = findDrawerWithGravity(absoluteGravity);
                if (findDrawerWithGravity != null) {
                    closeDrawer(findDrawerWithGravity);
                }
            case STATE_SETTLING:
                findDrawerWithGravity = findDrawerWithGravity(absoluteGravity);
                if (findDrawerWithGravity != null) {
                    openDrawer(findDrawerWithGravity);
                }
            default:
                break;
        }
    }

    public void setDrawerLockMode(int i, View view) {
        if (isDrawerView(view)) {
            setDrawerLockMode(i, getDrawerViewGravity(view));
        } else {
            throw new IllegalArgumentException("View " + view + " is not a " + "drawer with appropriate layout_gravity");
        }
    }

    public void setDrawerShadow(int i, int i2) {
        setDrawerShadow(getResources().getDrawable(i), i2);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if ((absoluteGravity & 3) == 3) {
            this.mShadowLeft = drawable;
            invalidate();
        }
        if ((absoluteGravity & 5) == 5) {
            this.mShadowRight = drawable;
            invalidate();
        }
    }

    void setDrawerViewOffset(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.onScreen) {
            layoutParams.onScreen = f;
            dispatchOnDrawerSlide(view, f);
        }
    }

    public void setScrimColor(int i) {
        this.mScrimColor = i;
        invalidate();
    }

    void updateDrawerState(int i, int i2, View view) {
        int i3 = STATE_DRAGGING;
        int viewDragState = this.mLeftDragger.getViewDragState();
        int viewDragState2 = this.mRightDragger.getViewDragState();
        if (!(viewDragState == 1 || viewDragState2 == 1)) {
            i3 = (viewDragState == 2 || viewDragState2 == 2) ? 2 : 0;
        }
        if (view != null && i2 == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.onScreen == 0.0f) {
                dispatchOnDrawerClosed(view);
            } else if (layoutParams.onScreen == 1.0f) {
                dispatchOnDrawerOpened(view);
            }
        }
        if (i3 != this.mDrawerState) {
            this.mDrawerState = i3;
            if (this.mListener != null) {
                this.mListener.onDrawerStateChanged(i3);
            }
        }
    }
}