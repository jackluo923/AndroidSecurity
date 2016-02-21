package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ExploreByTouchHelper;
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
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final Comparator COMPARATOR;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int[] LAYOUT_ATTRS;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private static final Interpolator sInterpolator;
    private static final ViewPositionComparator sPositionComparator;
    private int mActivePointerId;
    private PagerAdapter mAdapter;
    private OnAdapterChangeListener mAdapterChangeListener;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    private int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mIgnoreGutter;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsUnableToDrag;
    private final ArrayList mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private EdgeEffectCompat mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private PagerObserver mObserver;
    private int mOffscreenPageLimit;
    private OnPageChangeListener mOnPageChangeListener;
    private int mPageMargin;
    private PageTransformer mPageTransformer;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private final ItemInfo mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    static interface Decor {
    }

    static interface OnAdapterChangeListener {
        void onAdapterChanged(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    public static interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    static class ItemInfo {
        Object object;
        float offset;
        int position;
        boolean scrolling;
        float widthFactor;

        ItemInfo() {
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {
        int childIndex;
        public int gravity;
        public boolean isDecor;
        boolean needsMeasure;
        int position;
        float widthFactor;

        public LayoutParams() {
            super(-1, -1);
            this.widthFactor = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.widthFactor = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
            this.gravity = obtainStyledAttributes.getInteger(SCROLL_STATE_IDLE, ApiEventType.API_MRAID_HIDE_VIDEO);
            obtainStyledAttributes.recycle();
        }
    }

    class MyAccessibilityDelegate extends AccessibilityDelegateCompat {
        MyAccessibilityDelegate() {
        }

        private boolean canScroll() {
            return (ViewPager.this.mAdapter == null || ViewPager.this.mAdapter.getCount() <= 1) ? DEBUG : true;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            AccessibilityRecordCompat obtain = AccessibilityRecordCompat.obtain();
            obtain.setScrollable(canScroll());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.mAdapter != null) {
                obtain.setItemCount(ViewPager.this.mAdapter.getCount());
                obtain.setFromIndex(ViewPager.this.mCurItem);
                obtain.setToIndex(ViewPager.this.mCurItem);
            }
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            accessibilityNodeInfoCompat.setScrollable(canScroll());
            if (ViewPager.this.canScrollHorizontally(SCROLL_STATE_DRAGGING)) {
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD);
            }
            if (ViewPager.this.canScrollHorizontally(INVALID_POINTER)) {
                accessibilityNodeInfoCompat.addAction(AsyncHttpClient.DEFAULT_SOCKET_BUFFER_SIZE);
            }
        }

        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            switch (i) {
                case AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD:
                    if (!ViewPager.this.canScrollHorizontally(SCROLL_STATE_DRAGGING)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.mCurItem + 1);
                    return true;
                case AsyncHttpClient.DEFAULT_SOCKET_BUFFER_SIZE:
                    if (!ViewPager.this.canScrollHorizontally(INVALID_POINTER)) {
                        return false;
                    }
                    ViewPager.this.setCurrentItem(ViewPager.this.mCurItem - 1);
                    return true;
                default:
                    return false;
            }
        }
    }

    public static interface PageTransformer {
        void transformPage(View view, float f);
    }

    private class PagerObserver extends DataSetObserver {
        private PagerObserver() {
        }

        public void onChanged() {
            ViewPager.this.dataSetChanged();
        }

        public void onInvalidated() {
            ViewPager.this.dataSetChanged();
        }
    }

    public static class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        static {
            CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks() {
                public android.support.v4.view.ViewPager.SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new android.support.v4.view.ViewPager.SavedState(parcel, classLoader);
                }

                public android.support.v4.view.ViewPager.SavedState[] newArray(int i) {
                    return new android.support.v4.view.ViewPager.SavedState[i];
                }
            });
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            if (classLoader == null) {
                classLoader = getClass().getClassLoader();
            }
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader);
            this.loader = classLoader;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i);
        }
    }

    public static class SimpleOnPageChangeListener implements android.support.v4.view.ViewPager.OnPageChangeListener {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
        }
    }

    static class ViewPositionComparator implements Comparator {
        ViewPositionComparator() {
        }

        public int compare(View view, View view2) {
            android.support.v4.view.ViewPager.LayoutParams layoutParams = (android.support.v4.view.ViewPager.LayoutParams) view.getLayoutParams();
            android.support.v4.view.ViewPager.LayoutParams layoutParams2 = (android.support.v4.view.ViewPager.LayoutParams) view2.getLayoutParams();
            if (layoutParams.isDecor == layoutParams2.isDecor) {
                return layoutParams.position - layoutParams2.position;
            }
            return layoutParams.isDecor ? SCROLL_STATE_DRAGGING : INVALID_POINTER;
        }
    }

    static {
        LAYOUT_ATTRS = new int[]{16842931};
        COMPARATOR = new Comparator() {
            public int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
                return itemInfo.position - itemInfo2.position;
            }
        };
        sInterpolator = new Interpolator() {
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return f2 * (((f2 * f2) * f2) * f2) + 1.0f;
            }
        };
        sPositionComparator = new ViewPositionComparator();
    }

    public ViewPager(Context context) {
        super(context);
        this.mItems = new ArrayList();
        this.mTempItem = new ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new Runnable() {
            public void run() {
                ViewPager.this.setScrollState(SCROLL_STATE_IDLE);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItems = new ArrayList();
        this.mTempItem = new ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new Runnable() {
            public void run() {
                ViewPager.this.setScrollState(SCROLL_STATE_IDLE);
                ViewPager.this.populate();
            }
        };
        this.mScrollState = 0;
        initViewPager();
    }

    private void calculatePageOffsets(ItemInfo itemInfo, int i, ItemInfo itemInfo2) {
        float f;
        float f2;
        int i2;
        ItemInfo itemInfo3;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        f = clientWidth > 0 ? ((float) this.mPageMargin) / ((float) clientWidth) : 0.0f;
        if (itemInfo2 != null) {
            clientWidth = itemInfo2.position;
            int i3;
            if (clientWidth < itemInfo.position) {
                f2 = itemInfo2.offset + itemInfo2.widthFactor + f;
                i3 = clientWidth + 1;
                i2 = 0;
                while (i3 <= itemInfo.position && i2 < this.mItems.size()) {
                    itemInfo3 = (ItemInfo) this.mItems.get(i2);
                    while (i3 > itemInfo3.position && i2 < this.mItems.size() - 1) {
                        i2++;
                        itemInfo3 = (ItemInfo) this.mItems.get(i2);
                    }
                    while (i3 < itemInfo3.position) {
                        f2 += this.mAdapter.getPageWidth(i3) + f;
                        i3++;
                    }
                    itemInfo3.offset = f2;
                    f2 += itemInfo3.widthFactor + f;
                    i3++;
                }
            } else if (clientWidth > itemInfo.position) {
                i2 = this.mItems.size() - 1;
                f2 = itemInfo2.offset;
                i3 = clientWidth - 1;
                while (i3 >= itemInfo.position && i2 >= 0) {
                    itemInfo3 = (ItemInfo) this.mItems.get(i2);
                    while (i3 < itemInfo3.position && i2 > 0) {
                        i2--;
                        itemInfo3 = (ItemInfo) this.mItems.get(i2);
                    }
                    while (i3 > itemInfo3.position) {
                        f2 -= this.mAdapter.getPageWidth(i3) + f;
                        i3--;
                    }
                    f2 -= itemInfo3.widthFactor + f;
                    itemInfo3.offset = f2;
                    i3--;
                }
            }
        }
        int size = this.mItems.size();
        float f3 = itemInfo.offset;
        i2 = itemInfo.position - 1;
        this.mFirstOffset = itemInfo.position == 0 ? itemInfo.offset : -3.4028235E38f;
        this.mLastOffset = itemInfo.position == count + -1 ? itemInfo.offset + itemInfo.widthFactor - 1.0f : Float.MAX_VALUE;
        int i4 = i - 1;
        while (i4 >= 0) {
            itemInfo3 = (ItemInfo) this.mItems.get(i4);
            f2 = f3;
            while (i2 > itemInfo3.position) {
                f2 -= this.mAdapter.getPageWidth(i2) + f;
                i2--;
            }
            f3 = f2 - itemInfo3.widthFactor + f;
            itemInfo3.offset = f3;
            if (itemInfo3.position == 0) {
                this.mFirstOffset = f3;
            }
            i2--;
            i4--;
        }
        f3 = itemInfo.offset + itemInfo.widthFactor + f;
        i2 = itemInfo.position + 1;
        i4 = i + 1;
        while (i4 < size) {
            itemInfo3 = (ItemInfo) this.mItems.get(i4);
            f2 = f3;
            while (i2 < itemInfo3.position) {
                f2 = this.mAdapter.getPageWidth(i2) + f + f2;
                i2++;
            }
            if (itemInfo3.position == count - 1) {
                this.mLastOffset = itemInfo3.widthFactor + f2 - 1.0f;
            }
            itemInfo3.offset = f2;
            f3 = f2 + itemInfo3.widthFactor + f;
            i2++;
            i4++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    private void completeScroll(boolean z) {
        int i;
        int scrollX;
        int scrollY;
        i = this.mScrollState == 2;
        if (i != 0) {
            setScrollingCacheEnabled(DEBUG);
            this.mScroller.abortAnimation();
            scrollX = getScrollX();
            scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
            }
        }
        this.mPopulatePending = false;
        scrollX = 0;
        scrollY = i;
        while (scrollX < this.mItems.size()) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(scrollX);
            if (itemInfo.scrolling) {
                itemInfo.scrolling = false;
                boolean z2 = true;
            }
            scrollX++;
        }
        if (scrollY == 0) {
            return;
        }
        if (z) {
            ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
        } else {
            this.mEndScrollRunnable.run();
        }
    }

    private int determineTargetPage(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.mFlingDistance || Math.abs(i2) <= this.mMinimumVelocity) {
            i = (int) ((i >= this.mCurItem ? 0.4f : 0.6f) + ((float) i) + f);
        } else if (i2 <= 0) {
            i++;
        }
        if (this.mItems.size() <= 0) {
            return i;
        }
        return Math.max(((ItemInfo) this.mItems.get(SCROLL_STATE_IDLE)).position, Math.min(i, ((ItemInfo) this.mItems.get(this.mItems.size() - 1)).position));
    }

    private void enableLayers(boolean z) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            ViewCompat.setLayerType(getChildAt(i), z ? SCROLL_STATE_SETTLING : 0, null);
            i++;
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(SCROLL_STATE_IDLE, SCROLL_STATE_IDLE, SCROLL_STATE_IDLE, SCROLL_STATE_IDLE);
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

    private int getClientWidth() {
        return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    }

    private ItemInfo infoForCurrentScrollPosition() {
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        float f = clientWidth > 0 ? ((float) this.mPageMargin) / ((float) clientWidth) : 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        ItemInfo itemInfo = null;
        while (i2 < this.mItems.size()) {
            int i4;
            ItemInfo itemInfo2;
            ItemInfo itemInfo3 = (ItemInfo) this.mItems.get(i2);
            ItemInfo itemInfo4;
            if (i3 != 0 || itemInfo3.position == i + 1) {
                itemInfo4 = itemInfo3;
                i4 = i2;
                itemInfo2 = itemInfo4;
            } else {
                itemInfo3 = this.mTempItem;
                itemInfo3.offset = f2 + f3 + f;
                itemInfo3.position = i + 1;
                itemInfo3.widthFactor = this.mAdapter.getPageWidth(itemInfo3.position);
                itemInfo4 = itemInfo3;
                i4 = i2 - 1;
                itemInfo2 = itemInfo4;
            }
            f2 = itemInfo2.offset;
            f3 = itemInfo2.widthFactor + f2 + f;
            if (i3 == 0 && scrollX < f2) {
                return itemInfo;
            }
            if (scrollX >= f3 && i4 != this.mItems.size() - 1) {
                f3 = f2;
                i = itemInfo2.position;
                boolean z = false;
                f2 = itemInfo2.widthFactor;
                itemInfo = itemInfo2;
                i2 = i4 + 1;
            }
            return itemInfo2;
        }
        return itemInfo;
    }

    private boolean isGutterDrag(float f, float f2) {
        return ((f >= ((float) this.mGutterSize) || f2 <= 0.0f) && (f <= ((float) (getWidth() - this.mGutterSize)) || f2 >= 0.0f)) ? DEBUG : true;
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.mActivePointerId) {
            actionIndex = actionIndex == 0 ? SCROLL_STATE_DRAGGING : SCROLL_STATE_IDLE;
            this.mLastMotionX = MotionEventCompat.getX(motionEvent, actionIndex);
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private boolean pageScrolled(int i) {
        if (this.mItems.size() == 0) {
            this.mCalledSuper = false;
            onPageScrolled(SCROLL_STATE_IDLE, BitmapDescriptorFactory.HUE_RED, SCROLL_STATE_IDLE);
            if (this.mCalledSuper) {
                return DEBUG;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else {
            ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            int clientWidth = getClientWidth();
            int i2 = this.mPageMargin + clientWidth;
            float f = ((float) this.mPageMargin) / ((float) clientWidth);
            int i3 = infoForCurrentScrollPosition.position;
            float f2 = ((((float) i) / ((float) clientWidth)) - infoForCurrentScrollPosition.offset) / (infoForCurrentScrollPosition.widthFactor + f);
            clientWidth = (int) (((float) i2) * f2);
            this.mCalledSuper = false;
            onPageScrolled(i3, f2, clientWidth);
            if (this.mCalledSuper) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    private boolean performDrag(float f) {
        float f2;
        boolean z = SCROLL_STATE_DRAGGING;
        boolean z2 = DEBUG;
        float f3 = this.mLastMotionX - f;
        this.mLastMotionX = f;
        float scrollX = ((float) getScrollX()) + f3;
        int clientWidth = getClientWidth();
        float f4 = ((float) clientWidth) * this.mFirstOffset;
        float f5 = ((float) clientWidth) * this.mLastOffset;
        ItemInfo itemInfo = (ItemInfo) this.mItems.get(SCROLL_STATE_IDLE);
        ItemInfo itemInfo2 = (ItemInfo) this.mItems.get(this.mItems.size() - 1);
        boolean z3;
        if (itemInfo.position != 0) {
            f4 = itemInfo.offset * ((float) clientWidth);
            z3 = false;
        } else {
            z3 = true;
        }
        if (itemInfo2.position != this.mAdapter.getCount() - 1) {
            f2 = itemInfo2.offset * ((float) clientWidth);
            z = false;
        } else {
            f2 = f5;
        }
        if (scrollX < f4) {
            if (i != 0) {
                z2 = this.mLeftEdge.onPull(Math.abs(f4 - scrollX) / ((float) clientWidth));
            }
        } else if (scrollX > f2) {
            if (i != 0) {
                z2 = this.mRightEdge.onPull(Math.abs(scrollX - f2) / ((float) clientWidth));
            }
            f4 = f2;
        } else {
            f4 = scrollX;
        }
        this.mLastMotionX += f4 - ((float) ((int) f4));
        scrollTo((int) f4, getScrollY());
        pageScrolled((int) f4);
        return z2;
    }

    private void recomputeScrollPosition(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.mItems.isEmpty()) {
            ItemInfo infoForPosition = infoForPosition(this.mCurItem);
            int min = (int) ((infoForPosition != null ? Math.min(infoForPosition.offset, this.mLastOffset) : BitmapDescriptorFactory.HUE_RED) * ((float) ((i - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                completeScroll(DEBUG);
                scrollTo(min, getScrollY());
            }
        } else {
            int paddingLeft = (int) (((float) (((i - getPaddingLeft()) - getPaddingRight()) + i3)) * (((float) getScrollX()) / ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))));
            scrollTo(paddingLeft, getScrollY());
            if (!this.mScroller.isFinished()) {
                this.mScroller.startScroll(paddingLeft, SCROLL_STATE_IDLE, (int) (infoForPosition(this.mCurItem).offset * ((float) i)), 0, this.mScroller.getDuration() - this.mScroller.timePassed());
            }
        }
    }

    private void removeNonDecorViews() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    private void scrollToItem(int i, boolean z, int i2, boolean z2) {
        int max;
        ItemInfo infoForPosition = infoForPosition(i);
        if (infoForPosition != null) {
            max = (int) (Math.max(this.mFirstOffset, Math.min(infoForPosition.offset, this.mLastOffset)) * ((float) getClientWidth()));
        } else {
            max = 0;
        }
        if (z) {
            smoothScrollTo(max, SCROLL_STATE_IDLE, i2);
            if (z2 && this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.onPageSelected(i);
            }
            if (z2 && this.mInternalPageChangeListener != null) {
                this.mInternalPageChangeListener.onPageSelected(i);
            }
        } else {
            if (z2 && this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.onPageSelected(i);
            }
            if (z2 && this.mInternalPageChangeListener != null) {
                this.mInternalPageChangeListener.onPageSelected(i);
            }
            completeScroll(DEBUG);
            scrollTo(max, SCROLL_STATE_IDLE);
            pageScrolled(max);
        }
    }

    private void setScrollState(int i) {
        if (this.mScrollState != i) {
            this.mScrollState = i;
            if (this.mPageTransformer != null) {
                enableLayers(i != 0 ? true : DEBUG);
            }
            if (this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.onPageScrollStateChanged(i);
            }
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.mScrollingCacheEnabled != z) {
            this.mScrollingCacheEnabled = z;
        }
    }

    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            if (this.mDrawingOrderedChildren == null) {
                this.mDrawingOrderedChildren = new ArrayList();
            } else {
                this.mDrawingOrderedChildren.clear();
            }
            int childCount = getChildCount();
            int i = SCROLL_STATE_IDLE;
            while (i < childCount) {
                this.mDrawingOrderedChildren.add(getChildAt(i));
                i++;
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    public void addFocusables(ArrayList arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            int i3 = SCROLL_STATE_IDLE;
            while (i3 < getChildCount()) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    ItemInfo infoForChild = infoForChild(childAt);
                    if (infoForChild != null && infoForChild.position == this.mCurItem) {
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

    ItemInfo addNewItem(int i, int i2) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.position = i;
        itemInfo.object = this.mAdapter.instantiateItem(this, i);
        itemInfo.widthFactor = this.mAdapter.getPageWidth(i);
        if (i2 < 0 || i2 >= this.mItems.size()) {
            this.mItems.add(itemInfo);
        } else {
            this.mItems.add(i2, itemInfo);
        }
        return itemInfo;
    }

    public void addTouchables(ArrayList arrayList) {
        int i = SCROLL_STATE_IDLE;
        while (i < getChildCount()) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem) {
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
        layoutParams2.isDecor |= view instanceof Decor;
        if (!this.mInLayout) {
            super.addView(view, i, generateLayoutParams);
        } else if (layoutParams2 == null || !layoutParams2.isDecor) {
            layoutParams2.needsMeasure = true;
            addViewInLayout(view, i, generateLayoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public boolean arrowScroll(int i) {
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
                    Log.e(TAG, "arrowScroll tried to find focus based on non-child current focused view " + stringBuilder.toString());
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                z = pageLeft();
            } else {
                if (i == 66 || i == 2) {
                    z = pageRight();
                }
                z = false;
            }
        } else if (i == 17) {
            z = (view == null || getChildRectInPagerCoordinates(this.mTempRect, findNextFocus).left < getChildRectInPagerCoordinates(this.mTempRect, view).left) ? findNextFocus.requestFocus() : pageLeft();
        } else {
            if (i == 66) {
                z = (view == null || getChildRectInPagerCoordinates(this.mTempRect, findNextFocus).left > getChildRectInPagerCoordinates(this.mTempRect, view).left) ? findNextFocus.requestFocus() : pageRight();
            }
            z = false;
        }
        if (z) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return z;
    }

    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return DEBUG;
        }
        this.mFakeDragging = true;
        setScrollState(SCROLL_STATE_DRAGGING);
        this.mLastMotionX = 0.0f;
        this.mInitialMotionX = 0.0f;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, SCROLL_STATE_IDLE, BitmapDescriptorFactory.HUE_RED, 0.0f, 0);
        this.mVelocityTracker.addMovement(obtain);
        obtain.recycle();
        this.mFakeDragBeginTime = uptimeMillis;
        return true;
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
        return (z && ViewCompat.canScrollHorizontally(view, -i)) ? true : DEBUG;
    }

    public boolean canScrollHorizontally(int i) {
        boolean z = SCROLL_STATE_DRAGGING;
        if (this.mAdapter == null) {
            return DEBUG;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX <= ((int) (((float) clientWidth) * this.mFirstOffset))) {
                z = false;
            }
            return z;
        } else if (i <= 0) {
            return DEBUG;
        } else {
            if (scrollX >= ((int) (((float) clientWidth) * this.mLastOffset))) {
                z = false;
            }
            return z;
        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams && super.checkLayoutParams(layoutParams)) ? true : DEBUG;
    }

    public void computeScroll() {
        if (this.mScroller.isFinished() || !this.mScroller.computeScrollOffset()) {
            completeScroll(true);
        } else {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
                if (!pageScrolled(currX)) {
                    this.mScroller.abortAnimation();
                    scrollTo(SCROLL_STATE_IDLE, currY);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    void dataSetChanged() {
        boolean z;
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        z = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < count;
        boolean z2 = false;
        int i = this.mCurItem;
        boolean z3 = z;
        int i2 = 0;
        while (i2 < this.mItems.size()) {
            int i3;
            int i4;
            boolean z4;
            boolean z5;
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i2);
            int itemPosition = this.mAdapter.getItemPosition(itemInfo.object);
            if (itemPosition == -1) {
                i3 = i2;
                i2 = i4;
                i4 = i;
                i = i;
            } else if (itemPosition == -2) {
                this.mItems.remove(i2);
                i2--;
                if (i4 == 0) {
                    this.mAdapter.startUpdate(this);
                    z2 = true;
                }
                this.mAdapter.destroyItem(this, itemInfo.position, itemInfo.object);
                if (this.mCurItem == itemInfo.position) {
                    i3 = i2;
                    z4 = z2;
                    i4 = Math.max(SCROLL_STATE_IDLE, Math.min(this.mCurItem, count - 1));
                    z5 = true;
                } else {
                    i3 = i2;
                    z4 = z2;
                    i4 = i;
                    z5 = true;
                }
            } else if (itemInfo.position != itemPosition) {
                if (itemInfo.position == this.mCurItem) {
                    i = itemPosition;
                }
                itemInfo.position = itemPosition;
                i3 = i2;
                i2 = i4;
                i4 = i;
                z5 = true;
            } else {
                i3 = i2;
                i2 = i4;
                i4 = i;
                i = i;
            }
            z3 = z5;
            i = i4;
            z2 = z4;
            i2 = i3 + 1;
        }
        if (i4 != 0) {
            this.mAdapter.finishUpdate(this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (i != 0) {
            i4 = getChildCount();
            i2 = 0;
            while (i2 < i4) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.widthFactor = 0.0f;
                }
                i2++;
            }
            setCurrentItemInternal(i, DEBUG, true);
            requestLayout();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return (super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent)) ? true : DEBUG;
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
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
            i++;
        }
        return DEBUG;
    }

    float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int i = SCROLL_STATE_IDLE;
        int overScrollMode = ViewCompat.getOverScrollMode(this);
        if (overScrollMode == 0 || (overScrollMode == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1)) {
            int height;
            int width;
            if (!this.mLeftEdge.isFinished()) {
                overScrollMode = canvas.save();
                height = getHeight() - getPaddingTop() - getPaddingBottom();
                width = getWidth();
                canvas.rotate(BitmapDescriptorFactory.HUE_VIOLET);
                canvas.translate((float) ((-height) + getPaddingTop()), this.mFirstOffset * ((float) width));
                this.mLeftEdge.setSize(height, width);
                i = 0 | this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(overScrollMode);
            }
            if (!this.mRightEdge.isFinished()) {
                overScrollMode = canvas.save();
                height = getWidth();
                width = getHeight() - getPaddingTop() - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.mLastOffset + 1.0f)) * ((float) height));
                this.mRightEdge.setSize(width, height);
                i |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(overScrollMode);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (i != 0) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    public void endFakeDrag() {
        if (this.mFakeDragging) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, (float) this.mMaximumVelocity);
            int xVelocity = (int) VelocityTrackerCompat.getXVelocity(velocityTracker, this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
            setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.position, ((((float) scrollX) / ((float) clientWidth)) - infoForCurrentScrollPosition.offset) / infoForCurrentScrollPosition.widthFactor, xVelocity, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, xVelocity);
            endDrag();
            this.mFakeDragging = false;
        } else {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
    }

    public boolean executeKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return DEBUG;
        }
        switch (keyEvent.getKeyCode()) {
            case MMException.DISPLAY_AD_EXPIRED:
                return arrowScroll(ZBuildConfig.$targetsdk);
            case MMException.DISPLAY_AD_NOT_FOUND:
                return arrowScroll(66);
            case 61:
                if (VERSION.SDK_INT < 11) {
                    return DEBUG;
                }
                if (KeyEventCompat.hasNoModifiers(keyEvent)) {
                    return arrowScroll(SCROLL_STATE_SETTLING);
                }
                return KeyEventCompat.hasModifiers(keyEvent, SCROLL_STATE_DRAGGING) ? arrowScroll(SCROLL_STATE_DRAGGING) : DEBUG;
            default:
                return DEBUG;
        }
    }

    public void fakeDragBy(float f) {
        if (this.mFakeDragging) {
            float f2;
            float f3;
            this.mLastMotionX += f;
            float scrollX = ((float) getScrollX()) - f;
            int clientWidth = getClientWidth();
            float f4 = ((float) clientWidth) * this.mLastOffset;
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(SCROLL_STATE_IDLE);
            ItemInfo itemInfo2 = (ItemInfo) this.mItems.get(this.mItems.size() - 1);
            f2 = itemInfo.position != 0 ? itemInfo.offset * ((float) clientWidth) : ((float) clientWidth) * this.mFirstOffset;
            f3 = itemInfo2.position != this.mAdapter.getCount() + -1 ? itemInfo2.offset * ((float) clientWidth) : f4;
            if (scrollX >= f2) {
                f2 = scrollX > f3 ? f3 : scrollX;
            }
            this.mLastMotionX += f2 - ((float) ((int) f2));
            scrollTo((int) f2, getScrollY());
            pageScrolled((int) f2);
            MotionEvent obtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), SCROLL_STATE_SETTLING, this.mLastMotionX, BitmapDescriptorFactory.HUE_RED, SCROLL_STATE_IDLE);
            this.mVelocityTracker.addMovement(obtain);
            obtain.recycle();
        } else {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
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

    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    protected int getChildDrawingOrder(int i, int i2) {
        if (this.mDrawingOrder == 2) {
            i2 = i - 1 - i2;
        }
        return ((LayoutParams) ((View) this.mDrawingOrderedChildren.get(i2)).getLayoutParams()).childIndex;
    }

    public int getCurrentItem() {
        return this.mCurItem;
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getPageMargin() {
        return this.mPageMargin;
    }

    ItemInfo infoForAnyChild(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return infoForChild(view);
            }
            if (parent != null && parent instanceof View) {
                view = (View) parent;
            }
            return null;
        }
    }

    ItemInfo infoForChild(View view) {
        int i = 0;
        while (i < this.mItems.size()) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
            if (this.mAdapter.isViewFromObject(view, itemInfo.object)) {
                return itemInfo;
            }
            i++;
        }
        return null;
    }

    ItemInfo infoForPosition(int i) {
        int i2 = 0;
        while (i2 < this.mItems.size()) {
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(i2);
            if (itemInfo.position == i) {
                return itemInfo;
            }
            i2++;
        }
        return null;
    }

    void initViewPager() {
        setWillNotDraw(DEBUG);
        setDescendantFocusability(AccessibilityEventCompat.TYPE_GESTURE_DETECTION_START);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        this.mMinimumVelocity = (int) (400.0f * f);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffectCompat(context);
        this.mRightEdge = new EdgeEffectCompat(context);
        this.mFlingDistance = (int) (25.0f * f);
        this.mCloseEnough = (int) (2.0f * f);
        this.mDefaultGutterSize = (int) (16.0f * f);
        ViewCompat.setAccessibilityDelegate(this, new MyAccessibilityDelegate());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, SCROLL_STATE_DRAGGING);
        }
    }

    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = ((float) this.mPageMargin) / ((float) width);
            ItemInfo itemInfo = (ItemInfo) this.mItems.get(SCROLL_STATE_IDLE);
            float f2 = itemInfo.offset;
            int size = this.mItems.size();
            int i = itemInfo.position;
            int i2 = ((ItemInfo) this.mItems.get(size - 1)).position;
            int i3 = 0;
            int i4 = i;
            while (i4 < i2) {
                float f3;
                while (i4 > itemInfo.position && i3 < size) {
                    i3++;
                    itemInfo = (ItemInfo) this.mItems.get(i3);
                }
                if (i4 == itemInfo.position) {
                    f3 = (itemInfo.offset + itemInfo.widthFactor) * ((float) width);
                    f2 = itemInfo.offset + itemInfo.widthFactor + f;
                } else {
                    float pageWidth = this.mAdapter.getPageWidth(i4);
                    f3 = (f2 + pageWidth) * ((float) width);
                    f2 += pageWidth + f;
                }
                if (((float) this.mPageMargin) + f3 > ((float) scrollX)) {
                    this.mMarginDrawable.setBounds((int) f3, this.mTopPageBounds, (int) (((float) this.mPageMargin) + f3 + 0.5f), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
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
            this.mIsBeingDragged = false;
            this.mIsUnableToDrag = false;
            this.mActivePointerId = -1;
            if (this.mVelocityTracker == null) {
                return DEBUG;
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            return DEBUG;
        } else {
            if (action != 0 && this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return DEBUG;
            }
            switch (action) {
                case SCROLL_STATE_IDLE:
                    float x = motionEvent.getX();
                    this.mInitialMotionX = x;
                    this.mLastMotionX = x;
                    x = motionEvent.getY();
                    this.mInitialMotionY = x;
                    this.mLastMotionY = x;
                    this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, SCROLL_STATE_IDLE);
                    this.mIsUnableToDrag = false;
                    this.mScroller.computeScrollOffset();
                    if (this.mScrollState != 2 || Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) <= this.mCloseEnough) {
                        completeScroll(DEBUG);
                        this.mIsBeingDragged = false;
                    } else {
                        this.mScroller.abortAnimation();
                        this.mPopulatePending = false;
                        populate();
                        this.mIsBeingDragged = true;
                        setScrollState(SCROLL_STATE_DRAGGING);
                    }
                    break;
                case SCROLL_STATE_SETTLING:
                    action = this.mActivePointerId;
                    if (action != -1) {
                        action = MotionEventCompat.findPointerIndex(motionEvent, action);
                        float x2 = MotionEventCompat.getX(motionEvent, action);
                        float f = x2 - this.mLastMotionX;
                        float abs = Math.abs(f);
                        float y = MotionEventCompat.getY(motionEvent, action);
                        float abs2 = Math.abs(y - this.mInitialMotionY);
                        if (f == 0.0f || isGutterDrag(this.mLastMotionX, f) || !canScroll(this, DEBUG, (int) f, (int) x2, (int) y)) {
                            if (abs > ((float) this.mTouchSlop) && 0.5f * abs > abs2) {
                                this.mIsBeingDragged = true;
                                setScrollState(SCROLL_STATE_DRAGGING);
                                this.mLastMotionX = f > 0.0f ? this.mInitialMotionX + ((float) this.mTouchSlop) : this.mInitialMotionX - ((float) this.mTouchSlop);
                                this.mLastMotionY = y;
                                setScrollingCacheEnabled(true);
                            } else if (abs2 > ((float) this.mTouchSlop)) {
                                this.mIsUnableToDrag = true;
                            }
                            if (this.mIsBeingDragged && performDrag(x2)) {
                                ViewCompat.postInvalidateOnAnimation(this);
                            }
                        } else {
                            this.mLastMotionX = x2;
                            this.mLastMotionY = y;
                            this.mIsUnableToDrag = true;
                            return DEBUG;
                        }
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    onSecondaryPointerUp(motionEvent);
                    break;
            }
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            return this.mIsBeingDragged;
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
        int i8 = SCROLL_STATE_IDLE;
        int i9 = 0;
        while (i9 < childCount) {
            int measuredWidth;
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int i10 = layoutParams.gravity & 112;
                    switch (layoutParams.gravity & 7) {
                        case SCROLL_STATE_DRAGGING:
                            i5 = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                            i5 = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
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
                        case DEFAULT_GUTTER_SIZE:
                            measuredWidth = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            i11 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = i11;
                            break;
                        case ApiEventType.API_MRAID_HIDE_VIDEO:
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
                if (!layoutParams.isDecor) {
                    ItemInfo infoForChild = infoForChild(childAt2);
                    if (infoForChild != null) {
                        i6 = ((int) (infoForChild.offset * ((float) i5))) + paddingLeft;
                        if (layoutParams.needsMeasure) {
                            layoutParams.needsMeasure = false;
                            childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.widthFactor * ((float) i5)), 1073741824), MeasureSpec.makeMeasureSpec(i7 - paddingTop - paddingBottom, 1073741824));
                        }
                        childAt2.layout(i6, paddingTop, childAt2.getMeasuredWidth() + i6, childAt2.getMeasuredHeight() + paddingTop);
                    }
                }
            }
            paddingRight++;
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = i7 - paddingBottom;
        this.mDecorChildCount = i8;
        if (this.mFirstLayout) {
            scrollToItem(this.mCurItem, DEBUG, SCROLL_STATE_IDLE, DEBUG);
        }
        this.mFirstLayout = false;
    }

    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        int i3;
        int i4;
        setMeasuredDimension(getDefaultSize(SCROLL_STATE_IDLE, i), getDefaultSize(SCROLL_STATE_IDLE, i2));
        int measuredWidth = getMeasuredWidth();
        this.mGutterSize = Math.min(measuredWidth / 10, this.mDefaultGutterSize);
        int paddingLeft = measuredWidth - getPaddingLeft() - getPaddingRight();
        int measuredHeight = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.isDecor) {
                    int i6;
                    int i7 = layoutParams.gravity & 7;
                    int i8 = layoutParams.gravity & 112;
                    boolean z = ExploreByTouchHelper.INVALID_ID;
                    boolean z2 = ExploreByTouchHelper.INVALID_ID;
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
        this.mChildWidthMeasureSpec = MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.mChildHeightMeasureSpec = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        i3 = getChildCount();
        i4 = 0;
        while (i4 < i3) {
            View childAt2 = getChildAt(i4);
            if (childAt2.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if (layoutParams == null || !layoutParams.isDecor) {
                    childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.widthFactor * ((float) paddingLeft)), 1073741824), this.mChildHeightMeasureSpec);
                }
            }
            i4++;
        }
    }

    protected void onPageScrolled(int i, float f, int i2) {
        int paddingLeft;
        int paddingRight;
        int i3;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            i3 = 0;
            while (i3 < childCount) {
                int i4;
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isDecor) {
                    int max;
                    switch (layoutParams.gravity & 7) {
                        case SCROLL_STATE_DRAGGING:
                            max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            i4 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                        case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                            max = childAt.getWidth() + paddingLeft;
                            i4 = paddingLeft;
                            paddingLeft = paddingRight;
                            paddingRight = max;
                            max = i4;
                            break;
                        case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
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
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(i, f, i2);
        }
        if (this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.onPageScrolled(i, f, i2);
        }
        if (this.mPageTransformer != null) {
            paddingRight = getScrollX();
            i3 = getChildCount();
            paddingLeft = 0;
            while (paddingLeft < i3) {
                View childAt2 = getChildAt(paddingLeft);
                if (!((LayoutParams) childAt2.getLayoutParams()).isDecor) {
                    this.mPageTransformer.transformPage(childAt2, ((float) (childAt2.getLeft() - paddingRight)) / ((float) getClientWidth()));
                }
                paddingLeft++;
            }
        }
        this.mCalledSuper = true;
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3 = INVALID_POINTER;
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
                ItemInfo infoForChild = infoForChild(childAt);
                if (infoForChild != null && infoForChild.position == this.mCurItem && childAt.requestFocus(i, rect)) {
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
            if (this.mAdapter != null) {
                this.mAdapter.restoreState(savedState.adapterState, savedState.loader);
                setCurrentItemInternal(savedState.position, DEBUG, true);
            } else {
                this.mRestoredCurItem = savedState.position;
                this.mRestoredAdapterState = savedState.adapterState;
                this.mRestoredClassLoader = savedState.loader;
            }
        } else {
            super.onRestoreInstanceState(parcelable);
        }
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.mCurItem;
        if (this.mAdapter != null) {
            savedState.adapterState = this.mAdapter.saveState();
        }
        return savedState;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            recomputeScrollPosition(i, i3, this.mPageMargin, this.mPageMargin);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = DEBUG;
        if (this.mFakeDragging) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.mAdapter == null || this.mAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        float x;
        int xVelocity;
        switch (motionEvent.getAction() & 255) {
            case SCROLL_STATE_IDLE:
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                setScrollState(SCROLL_STATE_DRAGGING);
                x = motionEvent.getX();
                this.mInitialMotionX = x;
                this.mLastMotionX = x;
                x = motionEvent.getY();
                this.mInitialMotionY = x;
                this.mLastMotionY = x;
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, SCROLL_STATE_IDLE);
                break;
            case SCROLL_STATE_DRAGGING:
                if (this.mIsBeingDragged) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, (float) this.mMaximumVelocity);
                    xVelocity = (int) VelocityTrackerCompat.getXVelocity(velocityTracker, this.mActivePointerId);
                    this.mPopulatePending = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    ItemInfo infoForCurrentScrollPosition = infoForCurrentScrollPosition();
                    setCurrentItemInternal(determineTargetPage(infoForCurrentScrollPosition.position, ((((float) scrollX) / ((float) clientWidth)) - infoForCurrentScrollPosition.offset) / infoForCurrentScrollPosition.widthFactor, xVelocity, (int) (MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId)) - this.mInitialMotionX)), true, true, xVelocity);
                    this.mActivePointerId = -1;
                    endDrag();
                    z = this.mRightEdge.onRelease() | this.mLeftEdge.onRelease();
                }
                break;
            case SCROLL_STATE_SETTLING:
                if (!this.mIsBeingDragged) {
                    xVelocity = MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId);
                    float x2 = MotionEventCompat.getX(motionEvent, xVelocity);
                    float abs = Math.abs(x2 - this.mLastMotionX);
                    float y = MotionEventCompat.getY(motionEvent, xVelocity);
                    x = Math.abs(y - this.mLastMotionY);
                    if (abs > ((float) this.mTouchSlop) && abs > x) {
                        this.mIsBeingDragged = true;
                        this.mLastMotionX = x2 - this.mInitialMotionX > 0.0f ? this.mInitialMotionX + ((float) this.mTouchSlop) : this.mInitialMotionX - ((float) this.mTouchSlop);
                        this.mLastMotionY = y;
                        setScrollState(SCROLL_STATE_DRAGGING);
                        setScrollingCacheEnabled(true);
                    }
                }
                if (this.mIsBeingDragged) {
                    z = false | performDrag(MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId)));
                }
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                if (this.mIsBeingDragged) {
                    scrollToItem(this.mCurItem, true, SCROLL_STATE_IDLE, DEBUG);
                    this.mActivePointerId = -1;
                    endDrag();
                    z = this.mRightEdge.onRelease() | this.mLeftEdge.onRelease();
                }
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                xVelocity = MotionEventCompat.getActionIndex(motionEvent);
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, xVelocity);
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, xVelocity);
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                onSecondaryPointerUp(motionEvent);
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                break;
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    boolean pageLeft() {
        if (this.mCurItem <= 0) {
            return DEBUG;
        }
        setCurrentItem(this.mCurItem - 1, true);
        return true;
    }

    boolean pageRight() {
        if (this.mAdapter == null || this.mCurItem >= this.mAdapter.getCount() - 1) {
            return DEBUG;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    void populate() {
        populate(this.mCurItem);
    }

    void populate(int i) {
        int i2;
        ItemInfo itemInfo;
        int i3;
        if (this.mCurItem != i) {
            i2 = this.mCurItem < i ? 66 : ZBuildConfig.$targetsdk;
            ItemInfo infoForPosition = infoForPosition(this.mCurItem);
            this.mCurItem = i;
            itemInfo = infoForPosition;
            i3 = i2;
        } else {
            itemInfo = null;
            i3 = 2;
        }
        if (this.mAdapter == null) {
            sortChildDrawingOrder();
        } else if (this.mPopulatePending) {
            sortChildDrawingOrder();
        } else if (getWindowToken() != null) {
            this.mAdapter.startUpdate(this);
            i2 = this.mOffscreenPageLimit;
            int max = Math.max(SCROLL_STATE_IDLE, this.mCurItem - i2);
            int count = this.mAdapter.getCount();
            int min = Math.min(count - 1, i2 + this.mCurItem);
            if (count != this.mExpectedAdapterCount) {
                String resourceName;
                try {
                    resourceName = getResources().getResourceName(getId());
                } catch (NotFoundException e) {
                    resourceName = Integer.toHexString(getId());
                }
                throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + count + " Pager id: " + resourceName + " Pager class: " + getClass() + " Problematic adapter: " + this.mAdapter.getClass());
            } else {
                ItemInfo itemInfo2;
                ItemInfo addNewItem;
                ItemInfo itemInfo3;
                int i4 = 0;
                while (i4 < this.mItems.size()) {
                    itemInfo2 = (ItemInfo) this.mItems.get(i4);
                    if (itemInfo2.position >= this.mCurItem) {
                        if (itemInfo2.position != this.mCurItem) goto L_0x033c;
                        break;
                    } else {
                        i4++;
                    }
                }
                itemInfo2 = null;
                addNewItem = (itemInfo2 != null || count <= 0) ? itemInfo2 : addNewItem(this.mCurItem, i4);
                if (addNewItem != null) {
                    float paddingLeft;
                    int i5 = i4 - 1;
                    itemInfo2 = i5 >= 0 ? (ItemInfo) this.mItems.get(i5) : null;
                    int clientWidth = getClientWidth();
                    paddingLeft = clientWidth <= 0 ? BitmapDescriptorFactory.HUE_RED : 2.0f - addNewItem.widthFactor + ((float) getPaddingLeft()) / ((float) clientWidth);
                    float f = 0.0f;
                    int i6 = this.mCurItem - 1;
                    int i7 = i5;
                    i5 = i4;
                    i4 = i7;
                    while (i6 >= 0) {
                        if (f < paddingLeft || i6 >= max) {
                            if (itemInfo2 == null || i6 != itemInfo2.position) {
                                f += addNewItem(i6, i4 + 1).widthFactor;
                                i5++;
                                itemInfo2 = i4 >= 0 ? (ItemInfo) this.mItems.get(i4) : null;
                            } else {
                                f += itemInfo2.widthFactor;
                                i4--;
                                itemInfo2 = i4 >= 0 ? (ItemInfo) this.mItems.get(i4) : null;
                            }
                        } else if (itemInfo2 == null) {
                            break;
                        } else if (i6 == itemInfo2.position && !itemInfo2.scrolling) {
                            this.mItems.remove(i4);
                            this.mAdapter.destroyItem(this, i6, itemInfo2.object);
                            i4--;
                            i5--;
                            itemInfo2 = i4 >= 0 ? (ItemInfo) this.mItems.get(i4) : null;
                        }
                        i6--;
                    }
                    paddingLeft = addNewItem.widthFactor;
                    i6 = i5 + 1;
                    if (paddingLeft < 2.0f) {
                        ItemInfo itemInfo4;
                        float paddingRight;
                        if (i6 < this.mItems.size()) {
                            itemInfo4 = (ItemInfo) this.mItems.get(i6);
                        } else {
                            boolean z = SCROLL_STATE_IDLE;
                        }
                        paddingRight = clientWidth <= 0 ? 0.0f : ((float) getPaddingRight()) / ((float) clientWidth) + 2.0f;
                        itemInfo2 = itemInfo4;
                        int i8 = i6;
                        i6 = this.mCurItem + 1;
                        while (i6 < count) {
                            float f2;
                            float f3;
                            if (paddingLeft < paddingRight || i6 <= min) {
                                if (itemInfo2 == null || i6 != itemInfo2.position) {
                                    itemInfo2 = addNewItem(i6, i8);
                                    i8++;
                                    f2 = paddingLeft + itemInfo2.widthFactor;
                                    itemInfo3 = i8 < this.mItems.size() ? (ItemInfo) this.mItems.get(i8) : null;
                                    f3 = f2;
                                } else {
                                    i8++;
                                    f2 = paddingLeft + itemInfo2.widthFactor;
                                    itemInfo3 = i8 < this.mItems.size() ? (ItemInfo) this.mItems.get(i8) : null;
                                    f3 = f2;
                                }
                            } else if (itemInfo2 == null) {
                                break;
                            } else if (i6 != itemInfo2.position || itemInfo2.scrolling) {
                                f2 = paddingLeft;
                                itemInfo3 = itemInfo2;
                                f3 = f2;
                            } else {
                                this.mItems.remove(i8);
                                this.mAdapter.destroyItem(this, i6, itemInfo2.object);
                                f2 = paddingLeft;
                                itemInfo3 = i8 < this.mItems.size() ? (ItemInfo) this.mItems.get(i8) : null;
                                f3 = f2;
                            }
                            i6++;
                            f2 = f3;
                            itemInfo2 = itemInfo3;
                            paddingLeft = f2;
                        }
                    }
                    calculatePageOffsets(addNewItem, i5, itemInfo);
                }
                this.mAdapter.setPrimaryItem(this, this.mCurItem, addNewItem != null ? addNewItem.object : null);
                this.mAdapter.finishUpdate(this);
                i4 = getChildCount();
                int i9 = 0;
                while (i9 < i4) {
                    View childAt = getChildAt(i9);
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    layoutParams.childIndex = i9;
                    if (!layoutParams.isDecor && layoutParams.widthFactor == 0.0f) {
                        itemInfo3 = infoForChild(childAt);
                        if (itemInfo3 != null) {
                            layoutParams.widthFactor = itemInfo3.widthFactor;
                            layoutParams.position = itemInfo3.position;
                        }
                    }
                    i9++;
                }
                sortChildDrawingOrder();
                if (hasFocus()) {
                    View findFocus = findFocus();
                    itemInfo2 = findFocus != null ? infoForAnyChild(findFocus) : null;
                    if (itemInfo2 == null || itemInfo2.position != this.mCurItem) {
                        i2 = SCROLL_STATE_IDLE;
                        while (i2 < getChildCount()) {
                            View childAt2 = getChildAt(i2);
                            ItemInfo infoForChild = infoForChild(childAt2);
                            if (infoForChild == null || infoForChild.position != this.mCurItem || !childAt2.requestFocus(i)) {
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

    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver(this.mObserver);
            this.mAdapter.startUpdate(this);
            int i = 0;
            while (i < this.mItems.size()) {
                ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
                this.mAdapter.destroyItem(this, itemInfo.position, itemInfo.object);
                i++;
            }
            this.mAdapter.finishUpdate(this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(SCROLL_STATE_IDLE, SCROLL_STATE_IDLE);
        }
        PagerAdapter pagerAdapter2 = this.mAdapter;
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (this.mAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new PagerObserver(null);
            }
            this.mAdapter.registerDataSetObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, DEBUG, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (z) {
                requestLayout();
            } else {
                populate();
            }
        }
        if (this.mAdapterChangeListener != null && pagerAdapter2 != pagerAdapter) {
            this.mAdapterChangeListener.onAdapterChanged(pagerAdapter2, pagerAdapter);
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (VERSION.SDK_INT >= 7) {
            if (this.mSetChildrenDrawingOrderEnabled == null) {
                try {
                    this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[]{Boolean.TYPE});
                } catch (NoSuchMethodException e) {
                    Log.e(TAG, "Can't find setChildrenDrawingOrderEnabled", e);
                }
            }
            try {
                this.mSetChildrenDrawingOrderEnabled.invoke(this, new Object[]{Boolean.valueOf(z)});
            } catch (Exception e2) {
                Log.e(TAG, "Error changing children drawing order", e2);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, !this.mFirstLayout, DEBUG);
    }

    public void setCurrentItem(int i, boolean z) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i, z, DEBUG);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2) {
        setCurrentItemInternal(i, z, z2, SCROLL_STATE_IDLE);
    }

    void setCurrentItemInternal(int i, boolean z, boolean z2, int i2) {
        boolean z3 = DEBUG;
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(DEBUG);
        } else if (z2 || this.mCurItem != i || this.mItems.size() == 0) {
            if (i < 0) {
                i = 0;
            } else if (i >= this.mAdapter.getCount()) {
                i = this.mAdapter.getCount() - 1;
            }
            int i3 = this.mOffscreenPageLimit;
            if (i > this.mCurItem + i3 || i < this.mCurItem - i3) {
                int i4 = 0;
                while (i4 < this.mItems.size()) {
                    ((ItemInfo) this.mItems.get(i4)).scrolling = true;
                    i4++;
                }
            }
            if (this.mCurItem != i) {
                z3 = true;
            }
            if (this.mFirstLayout) {
                this.mCurItem = i;
                if (z3 && this.mOnPageChangeListener != null) {
                    this.mOnPageChangeListener.onPageSelected(i);
                }
                if (z3 && this.mInternalPageChangeListener != null) {
                    this.mInternalPageChangeListener.onPageSelected(i);
                }
                requestLayout();
            } else {
                populate(i);
                scrollToItem(i, z, i2, z3);
            }
        } else {
            setScrollingCacheEnabled(DEBUG);
        }
    }

    OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = onPageChangeListener;
        return onPageChangeListener2;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w(TAG, "Requested offscreen page limit " + i + " too small; defaulting to " + SCROLL_STATE_DRAGGING);
            i = 1;
        }
        if (i != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i;
            populate();
        }
    }

    void setOnAdapterChangeListener(OnAdapterChangeListener onAdapterChangeListener) {
        this.mAdapterChangeListener = onAdapterChangeListener;
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
    }

    public void setPageMargin(int i) {
        int i2 = this.mPageMargin;
        this.mPageMargin = i;
        int width = getWidth();
        recomputeScrollPosition(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null ? true : DEBUG);
        invalidate();
    }

    public void setPageTransformer(boolean z, PageTransformer pageTransformer) {
        int i = SCROLL_STATE_DRAGGING;
        if (VERSION.SDK_INT >= 11) {
            boolean z2;
            int i2;
            z2 = pageTransformer != null;
            i2 = z2 != (this.mPageTransformer != null);
            this.mPageTransformer = pageTransformer;
            setChildrenDrawingOrderEnabledCompat(z2);
            if (z2) {
                if (z) {
                    i = SCROLL_STATE_SETTLING;
                }
                this.mDrawingOrder = i;
            } else {
                this.mDrawingOrder = 0;
            }
            if (i2 != 0) {
                populate();
            }
        }
    }

    void smoothScrollTo(int i, int i2) {
        smoothScrollTo(i, i2, SCROLL_STATE_IDLE);
    }

    void smoothScrollTo(int i, int i2, int i3) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(DEBUG);
        } else {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int i4 = i - scrollX;
            int i5 = i2 - scrollY;
            if (i4 == 0 && i5 == 0) {
                completeScroll(DEBUG);
                populate();
                setScrollState(SCROLL_STATE_IDLE);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(SCROLL_STATE_SETTLING);
                int clientWidth = getClientWidth();
                int i6 = clientWidth / 2;
                float distanceInfluenceForSnapDuration = ((float) i6) * distanceInfluenceForSnapDuration(Math.min(1.0f, (((float) Math.abs(i4)) * 1.0f) / ((float) clientWidth))) + ((float) i6);
                int abs = Math.abs(i3);
                if (abs > 0) {
                    clientWidth = Math.round(1000.0f * Math.abs(distanceInfluenceForSnapDuration / ((float) abs))) * 4;
                } else {
                    clientWidth = (int) (((((float) Math.abs(i4)) / ((((float) clientWidth) * this.mAdapter.getPageWidth(this.mCurItem)) + ((float) this.mPageMargin))) + 1.0f) * 100.0f);
                }
                this.mScroller.startScroll(scrollX, scrollY, i4, i5, Math.min(clientWidth, MAX_SETTLE_DURATION));
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return (super.verifyDrawable(drawable) || drawable == this.mMarginDrawable) ? true : DEBUG;
    }
}