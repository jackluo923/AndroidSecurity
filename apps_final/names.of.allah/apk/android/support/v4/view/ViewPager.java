package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.widget.k;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager
  extends ViewGroup
{
  private static final int CLOSE_ENOUGH = 2;
  private static final Comparator<ax> COMPARATOR = new at();
  private static final boolean DEBUG = false;
  private static final int DEFAULT_GUTTER_SIZE = 16;
  private static final int DEFAULT_OFFSCREEN_PAGES = 1;
  private static final int DRAW_ORDER_DEFAULT = 0;
  private static final int DRAW_ORDER_FORWARD = 1;
  private static final int DRAW_ORDER_REVERSE = 2;
  private static final int INVALID_POINTER = -1;
  private static final int[] LAYOUT_ATTRS = { 16842931 };
  private static final int MAX_SETTLE_DURATION = 600;
  private static final int MIN_DISTANCE_FOR_FLING = 25;
  private static final int MIN_FLING_VELOCITY = 400;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE = false;
  private static final Interpolator sInterpolator = new au();
  private static final bf sPositionComparator = new bf();
  private int mActivePointerId = -1;
  private aa mAdapter;
  private ba mAdapterChangeListener;
  private int mBottomPageBounds;
  private boolean mCalledSuper;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCloseEnough;
  private int mCurItem;
  private int mDecorChildCount;
  private int mDefaultGutterSize;
  private int mDrawingOrder;
  private ArrayList<View> mDrawingOrderedChildren;
  private final Runnable mEndScrollRunnable = new av(this);
  private int mExpectedAdapterCount;
  private long mFakeDragBeginTime;
  private boolean mFakeDragging;
  private boolean mFirstLayout = true;
  private float mFirstOffset = -3.4028235E38F;
  private int mFlingDistance;
  private int mGutterSize;
  private boolean mIgnoreGutter;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private bb mInternalPageChangeListener;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList<ax> mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private float mLastOffset = Float.MAX_VALUE;
  private k mLeftEdge;
  private Drawable mMarginDrawable;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private boolean mNeedCalculatePageOffsets = false;
  private bd mObserver;
  private int mOffscreenPageLimit = 1;
  private bb mOnPageChangeListener;
  private int mPageMargin;
  private bc mPageTransformer;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private k mRightEdge;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrollingCacheEnabled;
  private Method mSetChildrenDrawingOrderEnabled;
  private final ax mTempItem = new ax();
  private final Rect mTempRect = new Rect();
  private int mTopPageBounds;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    initViewPager();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViewPager();
  }
  
  private void calculatePageOffsets(ax paramax1, int paramInt, ax paramax2)
  {
    int m = mAdapter.getCount();
    int i = getClientWidth();
    float f2;
    if (i > 0)
    {
      f2 = mPageMargin / i;
      if (paramax2 == null) {
        break label409;
      }
      i = b;
      if (i < b)
      {
        f1 = e + d + f2;
        i += 1;
        j = 0;
      }
    }
    else
    {
      for (;;)
      {
        if ((i > b) || (j >= mItems.size())) {
          break label409;
        }
        for (paramax2 = (ax)mItems.get(j);; paramax2 = (ax)mItems.get(j))
        {
          k = i;
          f3 = f1;
          if (i <= b) {
            break;
          }
          k = i;
          f3 = f1;
          if (j >= mItems.size() - 1) {
            break;
          }
          j += 1;
        }
        f2 = 0.0F;
        break;
        while (k < b)
        {
          f3 += mAdapter.getPageWidth(k) + f2;
          k += 1;
        }
        e = f3;
        f1 = f3 + (d + f2);
        i = k + 1;
      }
    }
    if (i > b)
    {
      j = mItems.size() - 1;
      f1 = e;
      i -= 1;
      while ((i >= b) && (j >= 0))
      {
        for (paramax2 = (ax)mItems.get(j);; paramax2 = (ax)mItems.get(j))
        {
          k = i;
          f3 = f1;
          if (i >= b) {
            break;
          }
          k = i;
          f3 = f1;
          if (j <= 0) {
            break;
          }
          j -= 1;
        }
        while (k > b)
        {
          f3 -= mAdapter.getPageWidth(k) + f2;
          k -= 1;
        }
        f1 = f3 - (d + f2);
        e = f1;
        i = k - 1;
      }
    }
    label409:
    int k = mItems.size();
    float f3 = e;
    i = b - 1;
    if (b == 0)
    {
      f1 = e;
      mFirstOffset = f1;
      if (b != m - 1) {
        break label550;
      }
      f1 = e + d - 1.0F;
      label475:
      mLastOffset = f1;
      j = paramInt - 1;
      f1 = f3;
    }
    for (;;)
    {
      if (j < 0) {
        break label603;
      }
      paramax2 = (ax)mItems.get(j);
      for (;;)
      {
        if (i > b)
        {
          f1 -= mAdapter.getPageWidth(i) + f2;
          i -= 1;
          continue;
          f1 = -3.4028235E38F;
          break;
          label550:
          f1 = Float.MAX_VALUE;
          break label475;
        }
      }
      f1 -= d + f2;
      e = f1;
      if (b == 0) {
        mFirstOffset = f1;
      }
      i -= 1;
      j -= 1;
    }
    label603:
    float f1 = e + d + f2;
    int j = b + 1;
    i = paramInt + 1;
    paramInt = j;
    while (i < k)
    {
      paramax1 = (ax)mItems.get(i);
      while (paramInt < b)
      {
        f1 = mAdapter.getPageWidth(paramInt) + f2 + f1;
        paramInt += 1;
      }
      if (b == m - 1) {
        mLastOffset = (d + f1 - 1.0F);
      }
      e = f1;
      f1 += d + f2;
      paramInt += 1;
      i += 1;
    }
    mNeedCalculatePageOffsets = false;
  }
  
  private void completeScroll(boolean paramBoolean)
  {
    if (mScrollState == 2) {}
    int j;
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        setScrollingCacheEnabled(false);
        mScroller.abortAnimation();
        j = getScrollX();
        k = getScrollY();
        int m = mScroller.getCurrX();
        int n = mScroller.getCurrY();
        if ((j != m) || (k != n)) {
          scrollTo(m, n);
        }
      }
      mPopulatePending = false;
      int k = 0;
      j = i;
      i = k;
      while (i < mItems.size())
      {
        ax localax = (ax)mItems.get(i);
        if (c)
        {
          c = false;
          j = 1;
        }
        i += 1;
      }
    }
    if (j != 0)
    {
      if (paramBoolean) {
        af.a(this, mEndScrollRunnable);
      }
    }
    else {
      return;
    }
    mEndScrollRunnable.run();
  }
  
  private int determineTargetPage(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > mFlingDistance) && (Math.abs(paramInt2) > mMinimumVelocity))
    {
      if (paramInt2 > 0) {}
      for (;;)
      {
        paramInt2 = paramInt1;
        if (mItems.size() > 0)
        {
          ax localax1 = (ax)mItems.get(0);
          ax localax2 = (ax)mItems.get(mItems.size() - 1);
          paramInt2 = Math.max(b, Math.min(paramInt1, b));
        }
        return paramInt2;
        paramInt1 += 1;
      }
    }
    if (paramInt1 >= mCurItem) {}
    for (float f = 0.4F;; f = 0.6F)
    {
      paramInt1 = (int)(f + (paramInt1 + paramFloat));
      break;
    }
  }
  
  private void enableLayers(boolean paramBoolean)
  {
    int k = getChildCount();
    int i = 0;
    if (i < k)
    {
      if (paramBoolean) {}
      for (int j = 2;; j = 0)
      {
        af.a(getChildAt(i), j, null);
        i += 1;
        break;
      }
    }
  }
  
  private void endDrag()
  {
    mIsBeingDragged = false;
    mIsUnableToDrag = false;
    if (mVelocityTracker != null)
    {
      mVelocityTracker.recycle();
      mVelocityTracker = null;
    }
  }
  
  private Rect getChildRectInPagerCoordinates(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      left = paramView.getLeft();
      right = paramView.getRight();
      top = paramView.getTop();
      bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        left += paramView.getLeft();
        right += paramView.getRight();
        top += paramView.getTop();
        bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }
  
  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private ax infoForCurrentScrollPosition()
  {
    int i = getClientWidth();
    float f1;
    float f2;
    label36:
    float f4;
    float f3;
    int k;
    int j;
    Object localObject1;
    label53:
    Object localObject2;
    ax localax;
    if (i > 0)
    {
      f1 = getScrollX() / i;
      if (i <= 0) {
        break label214;
      }
      f2 = mPageMargin / i;
      f4 = 0.0F;
      f3 = 0.0F;
      k = -1;
      i = 0;
      j = 1;
      localObject1 = null;
      localObject2 = localObject1;
      if (i < mItems.size())
      {
        localax = (ax)mItems.get(i);
        if ((j != 0) || (b == k + 1)) {
          break label249;
        }
        localax = mTempItem;
        e = (f4 + f3 + f2);
        b = (k + 1);
        d = mAdapter.getPageWidth(b);
        i -= 1;
      }
    }
    label214:
    label219:
    label249:
    for (;;)
    {
      f3 = e;
      f4 = d;
      if (j == 0)
      {
        localObject2 = localObject1;
        if (f1 < f3) {}
      }
      else
      {
        if ((f1 >= f4 + f3 + f2) && (i != mItems.size() - 1)) {
          break label219;
        }
        localObject2 = localax;
      }
      return (ax)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      k = b;
      f4 = d;
      j = 0;
      i += 1;
      localObject1 = localax;
      break label53;
    }
  }
  
  private boolean isGutterDrag(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < mGutterSize) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - mGutterSize) && (paramFloat2 < 0.0F));
  }
  
  private void onSecondaryPointerUp(MotionEvent paramMotionEvent)
  {
    int i = w.b(paramMotionEvent);
    if (w.b(paramMotionEvent, i) == mActivePointerId) {
      if (i != 0) {
        break label56;
      }
    }
    label56:
    for (i = 1;; i = 0)
    {
      mLastMotionX = w.c(paramMotionEvent, i);
      mActivePointerId = w.b(paramMotionEvent, i);
      if (mVelocityTracker != null) {
        mVelocityTracker.clear();
      }
      return;
    }
  }
  
  private boolean pageScrolled(int paramInt)
  {
    boolean bool = false;
    if (mItems.size() == 0)
    {
      mCalledSuper = false;
      onPageScrolled(0, 0.0F, 0);
      if (!mCalledSuper) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      ax localax = infoForCurrentScrollPosition();
      int j = getClientWidth();
      int k = mPageMargin;
      float f = mPageMargin / j;
      int i = b;
      f = (paramInt / j - e) / (d + f);
      paramInt = (int)((k + j) * f);
      mCalledSuper = false;
      onPageScrolled(i, f, paramInt);
      if (!mCalledSuper) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool = true;
    }
    return bool;
  }
  
  private boolean performDrag(float paramFloat)
  {
    int j = 1;
    boolean bool2 = false;
    boolean bool1 = false;
    float f1 = mLastMotionX;
    mLastMotionX = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int k = getClientWidth();
    paramFloat = k * mFirstOffset;
    f1 = k;
    float f3 = mLastOffset;
    ax localax1 = (ax)mItems.get(0);
    ax localax2 = (ax)mItems.get(mItems.size() - 1);
    if (b != 0) {
      paramFloat = e * k;
    }
    for (int i = 0;; i = 1)
    {
      if (b != mAdapter.getCount() - 1)
      {
        f1 = e * k;
        j = 0;
      }
      for (;;)
      {
        if (f2 < paramFloat)
        {
          f1 = paramFloat;
          if (i != 0)
          {
            bool1 = mLeftEdge.a(Math.abs(paramFloat - f2) / k);
            f1 = paramFloat;
          }
        }
        for (;;)
        {
          mLastMotionX += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          pageScrolled((int)f1);
          return bool1;
          if (f2 > f1)
          {
            bool1 = bool2;
            if (j != 0) {
              bool1 = mRightEdge.a(Math.abs(f2 - f1) / k);
            }
          }
          else
          {
            f1 = f2;
          }
        }
        f1 *= f3;
      }
    }
  }
  
  private void recomputeScrollPosition(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!mItems.isEmpty()))
    {
      int i = getPaddingLeft();
      int j = getPaddingRight();
      int k = getPaddingLeft();
      int m = getPaddingRight();
      f = getScrollX() / (paramInt2 - k - m + paramInt4);
      paramInt2 = (int)((paramInt1 - i - j + paramInt3) * f);
      scrollTo(paramInt2, getScrollY());
      if (!mScroller.isFinished())
      {
        paramInt3 = mScroller.getDuration();
        paramInt4 = mScroller.timePassed();
        localax = infoForPosition(mCurItem);
        mScroller.startScroll(paramInt2, 0, (int)(e * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    ax localax = infoForPosition(mCurItem);
    if (localax != null) {}
    for (float f = Math.min(e, mLastOffset);; f = 0.0F)
    {
      paramInt1 = (int)(f * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX()) {
        break;
      }
      completeScroll(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }
  
  private void removeNonDecorViews()
  {
    int j;
    for (int i = 0; i < getChildCount(); i = j + 1)
    {
      j = i;
      if (!getChildAtgetLayoutParamsa)
      {
        removeViewAt(i);
        j = i - 1;
      }
    }
  }
  
  private void requestParentDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(paramBoolean);
    }
  }
  
  private void scrollToItem(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    ax localax = infoForPosition(paramInt1);
    float f;
    if (localax != null) {
      f = getClientWidth();
    }
    for (int i = (int)(Math.max(mFirstOffset, Math.min(e, mLastOffset)) * f);; i = 0)
    {
      if (paramBoolean1)
      {
        smoothScrollTo(i, 0, paramInt2);
        if ((paramBoolean2) && (mOnPageChangeListener != null)) {
          mOnPageChangeListener.a(paramInt1);
        }
        if ((paramBoolean2) && (mInternalPageChangeListener != null)) {
          mInternalPageChangeListener.a(paramInt1);
        }
        return;
      }
      if ((paramBoolean2) && (mOnPageChangeListener != null)) {
        mOnPageChangeListener.a(paramInt1);
      }
      if ((paramBoolean2) && (mInternalPageChangeListener != null)) {
        mInternalPageChangeListener.a(paramInt1);
      }
      completeScroll(false);
      scrollTo(i, 0);
      pageScrolled(i);
      return;
    }
  }
  
  private void setScrollState(int paramInt)
  {
    if (mScrollState == paramInt) {
      return;
    }
    mScrollState = paramInt;
    if (mPageTransformer != null) {
      if (paramInt == 0) {
        break label50;
      }
    }
    label50:
    for (boolean bool = true;; bool = false)
    {
      enableLayers(bool);
      if (mOnPageChangeListener == null) {
        break;
      }
      mOnPageChangeListener.b(paramInt);
      return;
    }
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (mScrollingCacheEnabled != paramBoolean) {
      mScrollingCacheEnabled = paramBoolean;
    }
  }
  
  private void sortChildDrawingOrder()
  {
    if (mDrawingOrder != 0)
    {
      if (mDrawingOrderedChildren == null) {
        mDrawingOrderedChildren = new ArrayList();
      }
      for (;;)
      {
        int j = getChildCount();
        int i = 0;
        while (i < j)
        {
          View localView = getChildAt(i);
          mDrawingOrderedChildren.add(localView);
          i += 1;
        }
        mDrawingOrderedChildren.clear();
      }
      Collections.sort(mDrawingOrderedChildren, sPositionComparator);
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int j = paramArrayList.size();
    int k = getDescendantFocusability();
    if (k != 393216)
    {
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        if (localView.getVisibility() == 0)
        {
          ax localax = infoForChild(localView);
          if ((localax != null) && (b == mCurItem)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i += 1;
      }
    }
    if (((k == 262144) && (j != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  ax addNewItem(int paramInt1, int paramInt2)
  {
    ax localax = new ax();
    b = paramInt1;
    a = mAdapter.instantiateItem(this, paramInt1);
    d = mAdapter.getPageWidth(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= mItems.size()))
    {
      mItems.add(localax);
      return localax;
    }
    mItems.add(paramInt2, localax);
    return localax;
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ax localax = infoForChild(localView);
        if ((localax != null) && (b == mCurItem)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    for (;;)
    {
      ay localay = (ay)paramLayoutParams;
      a |= paramView instanceof aw;
      if (mInLayout)
      {
        if ((localay != null) && (a)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        d = true;
        addViewInLayout(paramView, paramInt, paramLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  public boolean arrowScroll(int paramInt)
  {
    View localView = findFocus();
    Object localObject;
    int j;
    boolean bool;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject)) {
        break label295;
      }
      if (paramInt != 17) {
        break label241;
      }
      i = getChildRectInPagerCoordinatesmTempRect, localView).left;
      j = getChildRectInPagerCoordinatesmTempRect, (View)localObject).left;
      if ((localObject != null) && (i >= j))
      {
        bool = pageLeft();
        label82:
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView == null) {
        break label341;
      }
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup)) {
        break label346;
      }
      if (localObject != this) {}
    }
    label241:
    label295:
    label335:
    label341:
    label346:
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        for (;;)
        {
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label82;
        if (paramInt == 66)
        {
          i = getChildRectInPagerCoordinatesmTempRect, localView).left;
          j = getChildRectInPagerCoordinatesmTempRect, (View)localObject).left;
          if ((localObject == null) || (i > j))
          {
            bool = localView.requestFocus();
            break label82;
            if ((paramInt == 17) || (paramInt == 1))
            {
              bool = pageLeft();
              break label82;
            }
            if ((paramInt != 66) && (paramInt != 2)) {
              break label335;
            }
          }
          bool = pageRight();
          break label82;
        }
        bool = false;
        break label82;
      }
      localObject = localView;
      break;
    }
  }
  
  public boolean beginFakeDrag()
  {
    if (mIsBeingDragged) {
      return false;
    }
    mFakeDragging = true;
    setScrollState(1);
    mLastMotionX = 0.0F;
    mInitialMotionX = 0.0F;
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    for (;;)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 0, 0.0F, 0.0F, 0);
      mVelocityTracker.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      mFakeDragBeginTime = l;
      return true;
      mVelocityTracker.clear();
    }
  }
  
  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      i = localViewGroup.getChildCount() - 1;
      if (i >= 0)
      {
        localView = localViewGroup.getChildAt(i);
        if ((paramInt2 + j < localView.getLeft()) || (paramInt2 + j >= localView.getRight()) || (paramInt3 + k < localView.getTop()) || (paramInt3 + k >= localView.getBottom()) || (!canScroll(localView, true, paramInt1, paramInt2 + j - localView.getLeft(), paramInt3 + k - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (af.a(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i -= 1;
      break;
    }
    return false;
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    if (mAdapter == null) {}
    int i;
    int j;
    do
    {
      do
      {
        return false;
        i = getClientWidth();
        j = getScrollX();
        if (paramInt >= 0) {
          break;
        }
      } while (j <= (int)(i * mFirstOffset));
      return true;
    } while ((paramInt <= 0) || (j >= (int)(i * mLastOffset)));
    return true;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ay)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!mScroller.isFinished()) && (mScroller.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = mScroller.getCurrX();
      int m = mScroller.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!pageScrolled(k))
        {
          mScroller.abortAnimation();
          scrollTo(0, m);
        }
      }
      af.b(this);
      return;
    }
    completeScroll(true);
  }
  
  void dataSetChanged()
  {
    int i2 = mAdapter.getCount();
    mExpectedAdapterCount = i2;
    int i;
    int j;
    int k;
    int n;
    int m;
    label70:
    Object localObject;
    if ((mItems.size() < mOffscreenPageLimit * 2 + 1) && (mItems.size() < i2))
    {
      i = 1;
      j = mCurItem;
      k = 0;
      n = 0;
      m = i;
      i = j;
      j = k;
      k = n;
      if (k >= mItems.size()) {
        break label285;
      }
      localObject = (ax)mItems.get(k);
      n = mAdapter.getItemPosition(a);
      if (n == -1) {
        break label369;
      }
      if (n != -2) {
        break label234;
      }
      mItems.remove(k);
      m = k - 1;
      k = j;
      if (j == 0)
      {
        mAdapter.startUpdate(this);
        k = 1;
      }
      mAdapter.destroyItem(this, b, a);
      if (mCurItem != b) {
        break label392;
      }
      j = Math.max(0, Math.min(mCurItem, i2 - 1));
      i = k;
      k = 1;
    }
    for (;;)
    {
      n = k;
      int i1 = j;
      k = m + 1;
      j = i;
      i = i1;
      m = n;
      break label70;
      i = 0;
      break;
      label234:
      if (b != n)
      {
        if (b == mCurItem) {
          i = n;
        }
        b = n;
        n = i;
        i1 = 1;
        m = k;
        i = j;
        j = n;
        k = i1;
        continue;
        label285:
        if (j != 0) {
          mAdapter.finishUpdate(this);
        }
        Collections.sort(mItems, COMPARATOR);
        if (m != 0)
        {
          k = getChildCount();
          j = 0;
          while (j < k)
          {
            localObject = (ay)getChildAt(j).getLayoutParams();
            if (!a) {
              c = 0.0F;
            }
            j += 1;
          }
          setCurrentItemInternal(i, false, true);
          requestLayout();
        }
      }
      else
      {
        label369:
        n = i;
        i1 = m;
        m = k;
        i = j;
        j = n;
        k = i1;
        continue;
        label392:
        j = i;
        n = 1;
        i = k;
        k = n;
      }
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (executeKeyEvent(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool1 = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool1;
    }
    int j = getChildCount();
    int i = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i >= j) {
        break;
      }
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ax localax = infoForChild(localView);
        if ((localax != null) && (b == mCurItem) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
      i += 1;
    }
  }
  
  float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int k = 0;
    int i = 0;
    int m = af.a(this);
    boolean bool;
    if ((m == 0) || ((m == 1) && (mAdapter != null) && (mAdapter.getCount() > 1)))
    {
      int j;
      if (!mLeftEdge.a())
      {
        k = paramCanvas.save();
        i = getHeight() - getPaddingTop() - getPaddingBottom();
        m = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i + getPaddingTop(), mFirstOffset * m);
        mLeftEdge.a(i, m);
        j = mLeftEdge.a(paramCanvas) | false;
        paramCanvas.restoreToCount(k);
      }
      k = j;
      if (!mRightEdge.a())
      {
        m = paramCanvas.save();
        k = getWidth();
        int n = getHeight();
        int i1 = getPaddingTop();
        int i2 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(mLastOffset + 1.0F) * k);
        mRightEdge.a(n - i1 - i2, k);
        bool = j | mRightEdge.a(paramCanvas);
        paramCanvas.restoreToCount(m);
      }
    }
    for (;;)
    {
      if (bool) {
        af.b(this);
      }
      return;
      mLeftEdge.b();
      mRightEdge.b();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = mMarginDrawable;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  public void endFakeDrag()
  {
    if (!mFakeDragging) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    Object localObject = mVelocityTracker;
    ((VelocityTracker)localObject).computeCurrentVelocity(1000, mMaximumVelocity);
    int i = (int)ab.a((VelocityTracker)localObject, mActivePointerId);
    mPopulatePending = true;
    int j = getClientWidth();
    int k = getScrollX();
    localObject = infoForCurrentScrollPosition();
    setCurrentItemInternal(determineTargetPage(b, (k / j - e) / d, i, (int)(mLastMotionX - mInitialMotionX)), true, true, i);
    endDrag();
    mFakeDragging = false;
  }
  
  public boolean executeKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    do
    {
      do
      {
        return false;
        return arrowScroll(17);
        return arrowScroll(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (r.b(paramKeyEvent)) {
        return arrowScroll(2);
      }
    } while (!r.a(paramKeyEvent));
    return arrowScroll(1);
  }
  
  public void fakeDragBy(float paramFloat)
  {
    if (!mFakeDragging) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    mLastMotionX += paramFloat;
    float f2 = getScrollX() - paramFloat;
    int i = getClientWidth();
    paramFloat = i;
    float f4 = mFirstOffset;
    float f1 = i;
    float f3 = mLastOffset;
    Object localObject = (ax)mItems.get(0);
    ax localax = (ax)mItems.get(mItems.size() - 1);
    if (b != 0) {}
    for (paramFloat = e * i;; paramFloat *= f4)
    {
      if (b != mAdapter.getCount() - 1) {}
      for (f1 = e * i;; f1 *= f3)
      {
        if (f2 < paramFloat) {}
        for (;;)
        {
          mLastMotionX += paramFloat - (int)paramFloat;
          scrollTo((int)paramFloat, getScrollY());
          pageScrolled((int)paramFloat);
          long l = SystemClock.uptimeMillis();
          localObject = MotionEvent.obtain(mFakeDragBeginTime, l, 2, mLastMotionX, 0.0F, 0);
          mVelocityTracker.addMovement((MotionEvent)localObject);
          ((MotionEvent)localObject).recycle();
          return;
          if (f2 > f1) {
            paramFloat = f1;
          } else {
            paramFloat = f2;
          }
        }
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ay();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ay(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  public aa getAdapter()
  {
    return mAdapter;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (mDrawingOrder == 2) {
      i = paramInt1 - 1 - paramInt2;
    }
    return mDrawingOrderedChildren.get(i)).getLayoutParams()).f;
  }
  
  public int getCurrentItem()
  {
    return mCurItem;
  }
  
  public int getOffscreenPageLimit()
  {
    return mOffscreenPageLimit;
  }
  
  public int getPageMargin()
  {
    return mPageMargin;
  }
  
  ax infoForAnyChild(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return infoForChild(paramView);
  }
  
  ax infoForChild(View paramView)
  {
    int i = 0;
    while (i < mItems.size())
    {
      ax localax = (ax)mItems.get(i);
      if (mAdapter.isViewFromObject(paramView, a)) {
        return localax;
      }
      i += 1;
    }
    return null;
  }
  
  ax infoForPosition(int paramInt)
  {
    int i = 0;
    while (i < mItems.size())
    {
      ax localax = (ax)mItems.get(i);
      if (b == paramInt) {
        return localax;
      }
      i += 1;
    }
    return null;
  }
  
  void initViewPager()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    mScroller = new Scroller(localContext, sInterpolator);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f = getResourcesgetDisplayMetricsdensity;
    mTouchSlop = ap.a(localViewConfiguration);
    mMinimumVelocity = ((int)(400.0F * f));
    mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
    mLeftEdge = new k(localContext);
    mRightEdge = new k(localContext);
    mFlingDistance = ((int)(25.0F * f));
    mCloseEnough = ((int)(2.0F * f));
    mDefaultGutterSize = ((int)(16.0F * f));
    af.a(this, new az(this));
    if (af.c(this) == 0) {
      af.b(this, 1);
    }
  }
  
  public boolean isFakeDragging()
  {
    return mFakeDragging;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mFirstLayout = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(mEndScrollRunnable);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((mPageMargin > 0) && (mMarginDrawable != null) && (mItems.size() > 0) && (mAdapter != null))
    {
      int k = getScrollX();
      int m = getWidth();
      float f3 = mPageMargin / m;
      Object localObject = (ax)mItems.get(0);
      float f1 = e;
      int n = mItems.size();
      int i = b;
      int i1 = mItems.get(n - 1)).b;
      int j = 0;
      if (i < i1)
      {
        while ((i > b) && (j < n))
        {
          localObject = mItems;
          j += 1;
          localObject = (ax)((ArrayList)localObject).get(j);
        }
        float f2;
        if (i == b) {
          f2 = (e + d) * m;
        }
        float f4;
        for (f1 = e + d + f3;; f1 += f4 + f3)
        {
          if (mPageMargin + f2 > k)
          {
            mMarginDrawable.setBounds((int)f2, mTopPageBounds, (int)(mPageMargin + f2 + 0.5F), mBottomPageBounds);
            mMarginDrawable.draw(paramCanvas);
          }
          if (f2 > k + m) {
            return;
          }
          i += 1;
          break;
          f4 = mAdapter.getPageWidth(i);
          f2 = (f1 + f4) * m;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction() & 0xFF;
    if ((i == 3) || (i == 1))
    {
      mIsBeingDragged = false;
      mIsUnableToDrag = false;
      mActivePointerId = -1;
      if (mVelocityTracker != null)
      {
        mVelocityTracker.recycle();
        mVelocityTracker = null;
      }
    }
    do
    {
      return false;
      if (i == 0) {
        break;
      }
      if (mIsBeingDragged) {
        return true;
      }
    } while (mIsUnableToDrag);
    switch (i)
    {
    }
    for (;;)
    {
      if (mVelocityTracker == null) {
        mVelocityTracker = VelocityTracker.obtain();
      }
      mVelocityTracker.addMovement(paramMotionEvent);
      return mIsBeingDragged;
      i = mActivePointerId;
      if (i != -1)
      {
        i = w.a(paramMotionEvent, i);
        float f2 = w.c(paramMotionEvent, i);
        float f1 = f2 - mLastMotionX;
        float f4 = Math.abs(f1);
        float f3 = w.d(paramMotionEvent, i);
        float f5 = Math.abs(f3 - mInitialMotionY);
        if ((f1 != 0.0F) && (!isGutterDrag(mLastMotionX, f1)) && (canScroll(this, false, (int)f1, (int)f2, (int)f3)))
        {
          mLastMotionX = f2;
          mLastMotionY = f3;
          mIsUnableToDrag = true;
          return false;
        }
        if ((f4 > mTouchSlop) && (0.5F * f4 > f5))
        {
          mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent(true);
          setScrollState(1);
          if (f1 > 0.0F)
          {
            f1 = mInitialMotionX + mTouchSlop;
            label310:
            mLastMotionX = f1;
            mLastMotionY = f3;
            setScrollingCacheEnabled(true);
          }
        }
        while ((mIsBeingDragged) && (performDrag(f2)))
        {
          af.b(this);
          break;
          f1 = mInitialMotionX - mTouchSlop;
          break label310;
          if (f5 > mTouchSlop) {
            mIsUnableToDrag = true;
          }
        }
        f1 = paramMotionEvent.getX();
        mInitialMotionX = f1;
        mLastMotionX = f1;
        f1 = paramMotionEvent.getY();
        mInitialMotionY = f1;
        mLastMotionY = f1;
        mActivePointerId = w.b(paramMotionEvent, 0);
        mIsUnableToDrag = false;
        mScroller.computeScrollOffset();
        if ((mScrollState == 2) && (Math.abs(mScroller.getFinalX() - mScroller.getCurrX()) > mCloseEnough))
        {
          mScroller.abortAnimation();
          mPopulatePending = false;
          populate();
          mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent(true);
          setScrollState(1);
        }
        else
        {
          completeScroll(false);
          mIsBeingDragged = false;
          continue;
          onSecondaryPointerUp(paramMotionEvent);
        }
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i3 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i4 = getScrollX();
    int j = 0;
    int m = 0;
    View localView;
    ay localay;
    int i5;
    int k;
    label154:
    int n;
    if (m < i1)
    {
      localView = getChildAt(m);
      if (localView.getVisibility() == 8) {
        break label671;
      }
      localay = (ay)localView.getLayoutParams();
      if (!a) {
        break label671;
      }
      paramInt4 = b;
      i5 = b;
      switch (paramInt4 & 0x7)
      {
      case 2: 
      case 4: 
      default: 
        paramInt4 = paramInt2;
        k = paramInt2;
        switch (i5 & 0x70)
        {
        default: 
          n = paramInt1;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
          paramInt3 = n;
          label204:
          paramInt4 += i4;
          localView.layout(paramInt4, paramInt3, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + paramInt3);
          j += 1;
          paramInt4 = i;
          paramInt3 = k;
          i = paramInt1;
          paramInt1 = j;
        }
        break;
      }
    }
    for (;;)
    {
      m += 1;
      k = paramInt3;
      j = paramInt1;
      paramInt1 = paramInt2;
      paramInt3 = i;
      i = paramInt4;
      paramInt2 = k;
      break;
      k = localView.getMeasuredWidth();
      paramInt4 = paramInt2;
      k += paramInt2;
      break label154;
      paramInt4 = Math.max((i3 - localView.getMeasuredWidth()) / 2, paramInt2);
      k = paramInt2;
      break label154;
      k = localView.getMeasuredWidth();
      paramInt4 = i + localView.getMeasuredWidth();
      n = i3 - i - k;
      i = paramInt4;
      k = paramInt2;
      paramInt4 = n;
      break label154;
      n = localView.getMeasuredHeight();
      paramInt2 = paramInt3;
      n += paramInt1;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = n;
      break label204;
      n = Math.max((i2 - localView.getMeasuredHeight()) / 2, paramInt1);
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = n;
      break label204;
      n = i2 - paramInt3 - localView.getMeasuredHeight();
      i5 = localView.getMeasuredHeight();
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + i5;
      paramInt3 = n;
      break label204;
      i = i3 - paramInt2 - i;
      paramInt4 = 0;
      while (paramInt4 < i1)
      {
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8)
        {
          localay = (ay)localView.getLayoutParams();
          if (!a)
          {
            ax localax = infoForChild(localView);
            if (localax != null)
            {
              float f = i;
              k = (int)(e * f) + paramInt2;
              if (d)
              {
                d = false;
                f = i;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f), 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - paramInt1 - paramInt3, 1073741824));
              }
              localView.layout(k, paramInt1, localView.getMeasuredWidth() + k, localView.getMeasuredHeight() + paramInt1);
            }
          }
        }
        paramInt4 += 1;
      }
      mTopPageBounds = paramInt1;
      mBottomPageBounds = (i2 - paramInt3);
      mDecorChildCount = j;
      if (mFirstLayout) {
        scrollToItem(mCurItem, false, 0, false);
      }
      mFirstLayout = false;
      return;
      label671:
      paramInt4 = j;
      j = paramInt1;
      k = paramInt2;
      paramInt1 = paramInt4;
      paramInt4 = i;
      i = paramInt3;
      paramInt2 = j;
      paramInt3 = k;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    mGutterSize = Math.min(paramInt1 / 10, mDefaultGutterSize);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i4 = getChildCount();
    int k = 0;
    View localView;
    int i;
    int j;
    ay localay;
    int m;
    int i1;
    label183:
    int n;
    if (k < i4)
    {
      localView = getChildAt(k);
      i = paramInt1;
      j = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localay = (ay)localView.getLayoutParams();
        i = paramInt1;
        j = paramInt2;
        if (localay != null)
        {
          i = paramInt1;
          j = paramInt2;
          if (a)
          {
            i = b & 0x7;
            m = b & 0x70;
            i1 = Integer.MIN_VALUE;
            j = Integer.MIN_VALUE;
            if ((m != 48) && (m != 80)) {
              break label333;
            }
            m = 1;
            if ((i != 3) && (i != 5)) {
              break label339;
            }
            n = 1;
            label198:
            if (m == 0) {
              break label345;
            }
            i = 1073741824;
            label208:
            if (width == -2) {
              break label528;
            }
            i1 = 1073741824;
            if (width == -1) {
              break label522;
            }
            i = width;
          }
        }
      }
    }
    for (;;)
    {
      int i3;
      if (height != -2)
      {
        i2 = 1073741824;
        j = i2;
        if (height != -1)
        {
          i3 = height;
          j = i2;
        }
      }
      for (int i2 = i3;; i2 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i, i1), View.MeasureSpec.makeMeasureSpec(i2, j));
        if (m != 0)
        {
          j = paramInt2 - localView.getMeasuredHeight();
          i = paramInt1;
        }
        for (;;)
        {
          k += 1;
          paramInt1 = i;
          paramInt2 = j;
          break;
          label333:
          m = 0;
          break label183;
          label339:
          n = 0;
          break label198;
          label345:
          i = i1;
          if (n == 0) {
            break label208;
          }
          j = 1073741824;
          i = i1;
          break label208;
          i = paramInt1;
          j = paramInt2;
          if (n != 0)
          {
            i = paramInt1 - localView.getMeasuredWidth();
            j = paramInt2;
          }
        }
        mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        mInLayout = true;
        populate();
        mInLayout = false;
        i = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            localay = (ay)localView.getLayoutParams();
            if ((localay == null) || (!a))
            {
              float f = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(c * f), 1073741824), mChildHeightMeasureSpec);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522:
      i = paramInt1;
      continue;
      label528:
      i1 = i;
      i = paramInt1;
    }
  }
  
  protected void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    int i;
    int j;
    int i2;
    int n;
    Object localObject;
    int k;
    int m;
    label132:
    int i4;
    if (mDecorChildCount > 0)
    {
      int i1 = getScrollX();
      i = getPaddingLeft();
      j = getPaddingRight();
      i2 = getWidth();
      int i3 = getChildCount();
      n = 0;
      if (n < i3)
      {
        localObject = getChildAt(n);
        ay localay = (ay)((View)localObject).getLayoutParams();
        if (!a) {
          break label402;
        }
        switch (b & 0x7)
        {
        case 2: 
        case 4: 
        default: 
          k = i;
          m = j;
          j = i;
          i = m;
          i4 = k + i1 - ((View)localObject).getLeft();
          k = i;
          m = j;
          if (i4 != 0)
          {
            ((View)localObject).offsetLeftAndRight(i4);
            m = j;
            k = i;
          }
          break;
        }
      }
    }
    for (;;)
    {
      n += 1;
      i = m;
      j = k;
      break;
      k = ((View)localObject).getWidth();
      m = k + i;
      k = i;
      i = j;
      j = m;
      break label132;
      k = Math.max((i2 - ((View)localObject).getMeasuredWidth()) / 2, i);
      m = i;
      i = j;
      j = m;
      break label132;
      k = i2 - j - ((View)localObject).getMeasuredWidth();
      i4 = ((View)localObject).getMeasuredWidth();
      m = i;
      i = j + i4;
      j = m;
      break label132;
      if (mOnPageChangeListener != null) {
        mOnPageChangeListener.a(paramInt1, paramFloat, paramInt2);
      }
      if (mInternalPageChangeListener != null) {
        mInternalPageChangeListener.a(paramInt1, paramFloat, paramInt2);
      }
      if (mPageTransformer != null)
      {
        getScrollX();
        paramInt2 = getChildCount();
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          localObject = getChildAt(paramInt1);
          if (!getLayoutParamsa)
          {
            ((View)localObject).getLeft();
            getClientWidth();
            localObject = mPageTransformer;
          }
          paramInt1 += 1;
        }
      }
      mCalledSuper = true;
      return;
      label402:
      k = j;
      m = i;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int k = -1;
    int j = getChildCount();
    int i;
    if ((paramInt & 0x2) != 0)
    {
      k = 1;
      i = 0;
    }
    while (i != j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ax localax = infoForChild(localView);
        if ((localax != null) && (b == mCurItem) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i = j - 1;
          j = -1;
          continue;
        }
      }
      i += k;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (ViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (mAdapter != null)
    {
      mAdapter.restoreState(b, c);
      setCurrentItemInternal(a, false, true);
      return;
    }
    mRestoredCurItem = a;
    mRestoredAdapterState = b;
    mRestoredClassLoader = c;
  }
  
  public Parcelable onSaveInstanceState()
  {
    ViewPager.SavedState localSavedState = new ViewPager.SavedState(super.onSaveInstanceState());
    a = mCurItem;
    if (mAdapter != null) {
      b = mAdapter.saveState();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      recomputeScrollPosition(paramInt1, paramInt3, mPageMargin, mPageMargin);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int m = 0;
    if (mFakeDragging) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((mAdapter == null) || (mAdapter.getCount() == 0)) {
      return false;
    }
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    int i = m;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      i = m;
    }
    for (;;)
    {
      if (i != 0) {
        af.b(this);
      }
      return true;
      mScroller.abortAnimation();
      mPopulatePending = false;
      populate();
      float f1 = paramMotionEvent.getX();
      mInitialMotionX = f1;
      mLastMotionX = f1;
      f1 = paramMotionEvent.getY();
      mInitialMotionY = f1;
      mLastMotionY = f1;
      mActivePointerId = w.b(paramMotionEvent, 0);
      i = m;
      continue;
      float f2;
      if (!mIsBeingDragged)
      {
        i = w.a(paramMotionEvent, mActivePointerId);
        f1 = w.c(paramMotionEvent, i);
        float f3 = Math.abs(f1 - mLastMotionX);
        f2 = w.d(paramMotionEvent, i);
        float f4 = Math.abs(f2 - mLastMotionY);
        if ((f3 > mTouchSlop) && (f3 > f4))
        {
          mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent(true);
          if (f1 - mInitialMotionX <= 0.0F) {
            break label378;
          }
        }
      }
      Object localObject;
      label378:
      for (f1 = mInitialMotionX + mTouchSlop;; f1 = mInitialMotionX - mTouchSlop)
      {
        mLastMotionX = f1;
        mLastMotionY = f2;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        localObject = getParent();
        if (localObject != null) {
          ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
        }
        i = m;
        if (!mIsBeingDragged) {
          break;
        }
        bool1 = performDrag(w.c(paramMotionEvent, w.a(paramMotionEvent, mActivePointerId))) | false;
        break;
      }
      boolean bool1 = m;
      if (mIsBeingDragged)
      {
        localObject = mVelocityTracker;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, mMaximumVelocity);
        int j = (int)ab.a((VelocityTracker)localObject, mActivePointerId);
        mPopulatePending = true;
        m = getClientWidth();
        int n = getScrollX();
        localObject = infoForCurrentScrollPosition();
        setCurrentItemInternal(determineTargetPage(b, (n / m - e) / d, j, (int)(w.c(paramMotionEvent, w.a(paramMotionEvent, mActivePointerId)) - mInitialMotionX)), true, true, j);
        mActivePointerId = -1;
        endDrag();
        boolean bool3 = mLeftEdge.c();
        boolean bool2 = mRightEdge.c() | bool3;
        continue;
        bool2 = m;
        if (mIsBeingDragged)
        {
          scrollToItem(mCurItem, true, 0, false);
          mActivePointerId = -1;
          endDrag();
          bool3 = mLeftEdge.c();
          bool2 = mRightEdge.c() | bool3;
          continue;
          int k = w.b(paramMotionEvent);
          mLastMotionX = w.c(paramMotionEvent, k);
          mActivePointerId = w.b(paramMotionEvent, k);
          k = m;
          continue;
          onSecondaryPointerUp(paramMotionEvent);
          mLastMotionX = w.c(paramMotionEvent, w.a(paramMotionEvent, mActivePointerId));
          k = m;
        }
      }
    }
  }
  
  boolean pageLeft()
  {
    if (mCurItem > 0)
    {
      setCurrentItem(mCurItem - 1, true);
      return true;
    }
    return false;
  }
  
  boolean pageRight()
  {
    if ((mAdapter != null) && (mCurItem < mAdapter.getCount() - 1))
    {
      setCurrentItem(mCurItem + 1, true);
      return true;
    }
    return false;
  }
  
  void populate()
  {
    populate(mCurItem);
  }
  
  void populate(int paramInt)
  {
    int i;
    Object localObject2;
    if (mCurItem != paramInt) {
      if (mCurItem < paramInt)
      {
        i = 66;
        localObject2 = infoForPosition(mCurItem);
        mCurItem = paramInt;
      }
    }
    for (int j = i;; j = 2)
    {
      if (mAdapter == null) {
        sortChildDrawingOrder();
      }
      do
      {
        return;
        i = 17;
        break;
        if (mPopulatePending)
        {
          sortChildDrawingOrder();
          return;
        }
      } while (getWindowToken() == null);
      mAdapter.startUpdate(this);
      paramInt = mOffscreenPageLimit;
      int i3 = Math.max(0, mCurItem - paramInt);
      int i1 = mAdapter.getCount();
      int i2 = Math.min(i1 - 1, paramInt + mCurItem);
      Object localObject1;
      if (i1 != mExpectedAdapterCount) {
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + mExpectedAdapterCount + ", found: " + i1 + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + mAdapter.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            localObject1 = Integer.toHexString(getId());
          }
        }
      }
      paramInt = 0;
      if (paramInt < mItems.size())
      {
        localObject1 = (ax)mItems.get(paramInt);
        if (b >= mCurItem) {
          if (b != mCurItem) {
            break label1270;
          }
        }
      }
      for (;;)
      {
        if ((localObject1 == null) && (i1 > 0)) {}
        for (Object localObject3 = addNewItem(mCurItem, paramInt);; localObject3 = localObject1)
        {
          label341:
          int i4;
          float f2;
          label354:
          float f3;
          int k;
          label376:
          float f1;
          if (localObject3 != null)
          {
            int n = paramInt - 1;
            int m;
            Object localObject4;
            if (n >= 0)
            {
              localObject1 = (ax)mItems.get(n);
              i4 = getClientWidth();
              if (i4 > 0) {
                break label538;
              }
              f2 = 0.0F;
              i = mCurItem;
              f3 = 0.0F;
              m = i - 1;
              k = paramInt;
              localObject4 = localObject1;
              if (m < 0) {
                break label688;
              }
              if ((f3 < f2) || (m >= i3)) {
                break label568;
              }
              if (localObject4 == null) {
                break label688;
              }
              localObject1 = localObject4;
              paramInt = n;
              f1 = f3;
              i = k;
              if (m == b)
              {
                localObject1 = localObject4;
                paramInt = n;
                f1 = f3;
                i = k;
                if (!c)
                {
                  mItems.remove(n);
                  mAdapter.destroyItem(this, m, a);
                  paramInt = n - 1;
                  i = k - 1;
                  if (paramInt < 0) {
                    break label559;
                  }
                  localObject1 = (ax)mItems.get(paramInt);
                  f1 = f3;
                }
              }
            }
            for (;;)
            {
              m -= 1;
              localObject4 = localObject1;
              n = paramInt;
              f3 = f1;
              k = i;
              break label376;
              paramInt += 1;
              break;
              localObject1 = null;
              break label341;
              label538:
              f2 = 2.0F - d + getPaddingLeft() / i4;
              break label354;
              label559:
              localObject1 = null;
              f1 = f3;
              continue;
              label568:
              if ((localObject4 != null) && (m == b))
              {
                f1 = f3 + d;
                paramInt = n - 1;
                if (paramInt >= 0)
                {
                  localObject1 = (ax)mItems.get(paramInt);
                  i = k;
                }
                else
                {
                  localObject1 = null;
                  i = k;
                }
              }
              else
              {
                f1 = f3 + addNewItem1d;
                i = k + 1;
                if (n >= 0)
                {
                  localObject1 = (ax)mItems.get(n);
                  paramInt = n;
                }
                else
                {
                  localObject1 = null;
                  paramInt = n;
                }
              }
            }
            label688:
            f1 = d;
            paramInt = k + 1;
            if (f1 < 2.0F) {
              if (paramInt < mItems.size())
              {
                localObject1 = (ax)mItems.get(paramInt);
                label729:
                if (i4 > 0) {
                  break label854;
                }
                f2 = 0.0F;
                label736:
                i = mCurItem;
                i += 1;
                label748:
                if (i >= i1) {
                  break label997;
                }
                if ((f1 < f2) || (i <= i2)) {
                  break label875;
                }
                if (localObject1 == null) {
                  break label997;
                }
                if ((i != b) || (c)) {
                  break label1260;
                }
                mItems.remove(paramInt);
                mAdapter.destroyItem(this, i, a);
                if (paramInt >= mItems.size()) {
                  break label869;
                }
                localObject1 = (ax)mItems.get(paramInt);
              }
            }
          }
          label854:
          label869:
          label875:
          label997:
          label1252:
          label1258:
          label1260:
          for (;;)
          {
            i += 1;
            break label748;
            localObject1 = null;
            break label729;
            f2 = getPaddingRight() / i4 + 2.0F;
            break label736;
            localObject1 = null;
            continue;
            if ((localObject1 != null) && (i == b))
            {
              f3 = d;
              paramInt += 1;
              if (paramInt < mItems.size()) {}
              for (localObject1 = (ax)mItems.get(paramInt);; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = addNewItem(i, paramInt);
            paramInt += 1;
            f3 = d;
            if (paramInt < mItems.size()) {}
            for (localObject1 = (ax)mItems.get(paramInt);; localObject1 = null)
            {
              f1 += f3;
              break;
            }
            calculatePageOffsets((ax)localObject3, k, (ax)localObject2);
            localObject2 = mAdapter;
            paramInt = mCurItem;
            if (localObject3 != null) {}
            for (localObject1 = a;; localObject1 = null)
            {
              ((aa)localObject2).setPrimaryItem(this, paramInt, localObject1);
              mAdapter.finishUpdate(this);
              i = getChildCount();
              paramInt = 0;
              while (paramInt < i)
              {
                localObject2 = getChildAt(paramInt);
                localObject1 = (ay)((View)localObject2).getLayoutParams();
                f = paramInt;
                if ((!a) && (c == 0.0F))
                {
                  localObject2 = infoForChild((View)localObject2);
                  if (localObject2 != null)
                  {
                    c = d;
                    e = b;
                  }
                }
                paramInt += 1;
              }
            }
            sortChildDrawingOrder();
            if (!hasFocus()) {
              break;
            }
            localObject1 = findFocus();
            if (localObject1 != null) {}
            for (localObject1 = infoForAnyChild((View)localObject1);; localObject1 = null)
            {
              if ((localObject1 != null) && (b == mCurItem)) {
                break label1258;
              }
              paramInt = 0;
              for (;;)
              {
                if (paramInt >= getChildCount()) {
                  break label1252;
                }
                localObject1 = getChildAt(paramInt);
                localObject2 = infoForChild((View)localObject1);
                if ((localObject2 != null) && (b == mCurItem) && (((View)localObject1).requestFocus(j))) {
                  break;
                }
                paramInt += 1;
              }
              break;
            }
            break;
          }
        }
        label1270:
        localObject1 = null;
      }
      localObject2 = null;
    }
  }
  
  public void removeView(View paramView)
  {
    if (mInLayout)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setAdapter(aa paramaa)
  {
    if (mAdapter != null)
    {
      mAdapter.unregisterDataSetObserver(mObserver);
      mAdapter.startUpdate(this);
      int i = 0;
      while (i < mItems.size())
      {
        localObject = (ax)mItems.get(i);
        mAdapter.destroyItem(this, b, a);
        i += 1;
      }
      mAdapter.finishUpdate(this);
      mItems.clear();
      removeNonDecorViews();
      mCurItem = 0;
      scrollTo(0, 0);
    }
    Object localObject = mAdapter;
    mAdapter = paramaa;
    mExpectedAdapterCount = 0;
    boolean bool;
    if (mAdapter != null)
    {
      if (mObserver == null) {
        mObserver = new bd(this, (byte)0);
      }
      mAdapter.registerDataSetObserver(mObserver);
      mPopulatePending = false;
      bool = mFirstLayout;
      mFirstLayout = true;
      mExpectedAdapterCount = mAdapter.getCount();
      if (mRestoredCurItem < 0) {
        break label249;
      }
      mAdapter.restoreState(mRestoredAdapterState, mRestoredClassLoader);
      setCurrentItemInternal(mRestoredCurItem, false, true);
      mRestoredCurItem = -1;
      mRestoredAdapterState = null;
      mRestoredClassLoader = null;
    }
    for (;;)
    {
      if ((mAdapterChangeListener != null) && (localObject != paramaa)) {
        paramaa = mAdapterChangeListener;
      }
      return;
      label249:
      if (!bool) {
        populate();
      } else {
        requestLayout();
      }
    }
  }
  
  void setChildrenDrawingOrderEnabledCompat(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT < 7) || (mSetChildrenDrawingOrderEnabled == null)) {}
    try
    {
      mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          mSetChildrenDrawingOrderEnabled.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
          return;
        }
        catch (Exception localException)
        {
          Log.e("ViewPager", "Error changing children drawing order", localException);
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
      }
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    mPopulatePending = false;
    if (!mFirstLayout) {}
    for (boolean bool = true;; bool = false)
    {
      setCurrentItemInternal(paramInt, bool, false);
      return;
    }
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    mPopulatePending = false;
    setCurrentItemInternal(paramInt, paramBoolean, false);
  }
  
  void setCurrentItemInternal(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    setCurrentItemInternal(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void setCurrentItemInternal(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((mAdapter == null) || (mAdapter.getCount() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (mCurItem == paramInt1) && (mItems.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i;
    if (paramInt1 < 0) {
      i = 0;
    }
    for (;;)
    {
      paramInt1 = mOffscreenPageLimit;
      if ((i <= mCurItem + paramInt1) && (i >= mCurItem - paramInt1)) {
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < mItems.size())
      {
        mItems.get(paramInt1)).c = true;
        paramInt1 += 1;
      }
      i = paramInt1;
      if (paramInt1 >= mAdapter.getCount()) {
        i = mAdapter.getCount() - 1;
      }
    }
    paramBoolean2 = bool;
    if (mCurItem != i) {
      paramBoolean2 = true;
    }
    if (mFirstLayout)
    {
      mCurItem = i;
      if ((paramBoolean2) && (mOnPageChangeListener != null)) {
        mOnPageChangeListener.a(i);
      }
      if ((paramBoolean2) && (mInternalPageChangeListener != null)) {
        mInternalPageChangeListener.a(i);
      }
      requestLayout();
      return;
    }
    populate(i);
    scrollToItem(i, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  bb setInternalPageChangeListener(bb parambb)
  {
    bb localbb = mInternalPageChangeListener;
    mInternalPageChangeListener = parambb;
    return localbb;
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    int i = paramInt;
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      i = 1;
    }
    if (i != mOffscreenPageLimit)
    {
      mOffscreenPageLimit = i;
      populate();
    }
  }
  
  void setOnAdapterChangeListener(ba paramba)
  {
    mAdapterChangeListener = paramba;
  }
  
  public void setOnPageChangeListener(bb parambb)
  {
    mOnPageChangeListener = parambb;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i = mPageMargin;
    mPageMargin = paramInt;
    int j = getWidth();
    recomputeScrollPosition(j, j, paramInt, i);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    mMarginDrawable = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    if (paramDrawable == null) {}
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }
  
  public void setPageTransformer(boolean paramBoolean, bc parambc)
  {
    int j = 1;
    boolean bool1;
    boolean bool2;
    label28:
    int i;
    if (Build.VERSION.SDK_INT >= 11)
    {
      if (parambc == null) {
        break label75;
      }
      bool1 = true;
      if (mPageTransformer == null) {
        break label81;
      }
      bool2 = true;
      if (bool1 == bool2) {
        break label87;
      }
      i = 1;
      label37:
      mPageTransformer = parambc;
      setChildrenDrawingOrderEnabledCompat(bool1);
      if (!bool1) {
        break label92;
      }
      if (paramBoolean) {
        j = 2;
      }
    }
    label75:
    label81:
    label87:
    label92:
    for (mDrawingOrder = j;; mDrawingOrder = 0)
    {
      if (i != 0) {
        populate();
      }
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label28;
      i = 0;
      break label37;
    }
  }
  
  void smoothScrollTo(int paramInt1, int paramInt2)
  {
    smoothScrollTo(paramInt1, paramInt2, 0);
  }
  
  void smoothScrollTo(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i = getScrollX();
    int j = getScrollY();
    int k = paramInt1 - i;
    paramInt2 -= j;
    if ((k == 0) && (paramInt2 == 0))
    {
      completeScroll(false);
      populate();
      setScrollState(0);
      return;
    }
    setScrollingCacheEnabled(true);
    setScrollState(2);
    paramInt1 = getClientWidth();
    int m = paramInt1 / 2;
    float f3 = Math.min(1.0F, Math.abs(k) * 1.0F / paramInt1);
    float f1 = m;
    float f2 = m;
    f3 = distanceInfluenceForSnapDuration(f3);
    paramInt3 = Math.abs(paramInt3);
    if (paramInt3 > 0) {}
    for (paramInt1 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt3)) * 4;; paramInt1 = (int)((Math.abs(k) / (f1 * f2 + mPageMargin) + 1.0F) * 100.0F))
    {
      paramInt1 = Math.min(paramInt1, 600);
      mScroller.startScroll(i, j, k, paramInt2, paramInt1);
      af.b(this);
      return;
      f1 = paramInt1;
      f2 = mAdapter.getPageWidth(mCurItem);
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == mMarginDrawable);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */