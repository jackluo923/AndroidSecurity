package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
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
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout
  extends ViewGroup
{
  private static final int DEFAULT_FADE_COLOR = -858993460;
  private static final int DEFAULT_OVERHANG_SIZE = 32;
  static final SlidingPanelLayoutImpl IMPL = new SlidingPanelLayoutImplBase();
  private static final int MIN_FLING_VELOCITY = 400;
  private static final String TAG = "SlidingPaneLayout";
  private boolean mCanSlide;
  private int mCoveredFadeColor;
  private final ViewDragHelper mDragHelper;
  private boolean mFirstLayout = true;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private boolean mIsUnableToDrag;
  private final int mOverhangSize;
  private PanelSlideListener mPanelSlideListener;
  private int mParallaxBy;
  private float mParallaxOffset;
  private final ArrayList<DisableLayerRunnable> mPostedRunnables = new ArrayList();
  private boolean mPreservedOpenState;
  private Drawable mShadowDrawable;
  private float mSlideOffset;
  private int mSlideRange;
  private View mSlideableView;
  private int mSliderFadeColor = -858993460;
  private final Rect mTmpRect = new Rect();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17)
    {
      IMPL = new SlidingPanelLayoutImplJBMR1();
      return;
    }
    if (i >= 16)
    {
      IMPL = new SlidingPanelLayoutImplJB();
      return;
    }
  }
  
  public SlidingPaneLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f = getResourcesgetDisplayMetricsdensity;
    mOverhangSize = ((int)(32.0F * f + 0.5F));
    ViewConfiguration.get(paramContext);
    setWillNotDraw(false);
    ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
    ViewCompat.setImportantForAccessibility(this, 1);
    mDragHelper = ViewDragHelper.create(this, 0.5F, new DragHelperCallback(null));
    mDragHelper.setEdgeTrackingEnabled(1);
    mDragHelper.setMinVelocity(400.0F * f);
  }
  
  private boolean closePane(View paramView, int paramInt)
  {
    boolean bool = false;
    if ((mFirstLayout) || (smoothSlideTo(0.0F, paramInt)))
    {
      mPreservedOpenState = false;
      bool = true;
    }
    return bool;
  }
  
  private void dimChildView(View paramView, float paramFloat, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      i = (int)(((0xFF000000 & paramInt) >>> 24) * paramFloat);
      if (dimPaint == null) {
        dimPaint = new Paint();
      }
      dimPaint.setColorFilter(new PorterDuffColorFilter(i << 24 | 0xFFFFFF & paramInt, PorterDuff.Mode.SRC_OVER));
      if (ViewCompat.getLayerType(paramView) != 2) {
        ViewCompat.setLayerType(paramView, 2, dimPaint);
      }
      invalidateChildRegion(paramView);
    }
    while (ViewCompat.getLayerType(paramView) == 0)
    {
      int i;
      return;
    }
    if (dimPaint != null) {
      dimPaint.setColorFilter(null);
    }
    paramView = new DisableLayerRunnable(paramView);
    mPostedRunnables.add(paramView);
    ViewCompat.postOnAnimation(this, paramView);
  }
  
  private void invalidateChildRegion(View paramView)
  {
    IMPL.invalidateChildRegion(this, paramView);
  }
  
  private void onPanelDragged(int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)mSlideableView.getLayoutParams();
    mSlideOffset = ((paramInt - (getPaddingLeft() + leftMargin)) / mSlideRange);
    if (mParallaxBy != 0) {
      parallaxOtherViews(mSlideOffset);
    }
    if (dimWhenOffset) {
      dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
    }
    dispatchOnPanelSlide(mSlideableView);
  }
  
  private boolean openPane(View paramView, int paramInt)
  {
    if ((mFirstLayout) || (smoothSlideTo(1.0F, paramInt)))
    {
      mPreservedOpenState = true;
      return true;
    }
    return false;
  }
  
  private void parallaxOtherViews(float paramFloat)
  {
    Object localObject = (LayoutParams)mSlideableView.getLayoutParams();
    int i;
    int j;
    if ((dimWhenOffset) && (leftMargin <= 0))
    {
      i = 1;
      int k = getChildCount();
      j = 0;
      label36:
      if (j >= k) {
        return;
      }
      localObject = getChildAt(j);
      if (localObject != mSlideableView) {
        break label72;
      }
    }
    for (;;)
    {
      j += 1;
      break label36;
      i = 0;
      break;
      label72:
      int m = (int)((1.0F - mParallaxOffset) * mParallaxBy);
      mParallaxOffset = paramFloat;
      ((View)localObject).offsetLeftAndRight(m - (int)((1.0F - paramFloat) * mParallaxBy));
      if (i != 0) {
        dimChildView((View)localObject, 1.0F - mParallaxOffset, mCoveredFadeColor);
      }
    }
  }
  
  private static boolean viewIsOpaque(View paramView)
  {
    if (ViewCompat.isOpaque(paramView)) {}
    do
    {
      return true;
      if (Build.VERSION.SDK_INT >= 18) {
        return false;
      }
      paramView = paramView.getBackground();
      if (paramView == null) {
        break;
      }
    } while (paramView.getOpacity() == -1);
    return false;
    return false;
  }
  
  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      int i = localViewGroup.getChildCount() - 1;
      while (i >= 0)
      {
        View localView = localViewGroup.getChildAt(i);
        if ((paramInt2 + j >= localView.getLeft()) && (paramInt2 + j < localView.getRight()) && (paramInt3 + k >= localView.getTop()) && (paramInt3 + k < localView.getBottom()) && (canScroll(localView, true, paramInt1, paramInt2 + j - localView.getLeft(), paramInt3 + k - localView.getTop()))) {
          return true;
        }
        i -= 1;
      }
    }
    return (paramBoolean) && (ViewCompat.canScrollHorizontally(paramView, -paramInt1));
  }
  
  @Deprecated
  public boolean canSlide()
  {
    return mCanSlide;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public boolean closePane()
  {
    return closePane(mSlideableView, 0);
  }
  
  public void computeScroll()
  {
    if (mDragHelper.continueSettling(true))
    {
      if (!mCanSlide) {
        mDragHelper.abort();
      }
    }
    else {
      return;
    }
    ViewCompat.postInvalidateOnAnimation(this);
  }
  
  void dispatchOnPanelClosed(View paramView)
  {
    if (mPanelSlideListener != null) {
      mPanelSlideListener.onPanelClosed(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  void dispatchOnPanelOpened(View paramView)
  {
    if (mPanelSlideListener != null) {
      mPanelSlideListener.onPanelOpened(paramView);
    }
    sendAccessibilityEvent(32);
  }
  
  void dispatchOnPanelSlide(View paramView)
  {
    if (mPanelSlideListener != null) {
      mPanelSlideListener.onPanelSlide(paramView, mSlideOffset);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (getChildCount() > 1) {}
    for (View localView = getChildAt(1); (localView == null) || (mShadowDrawable == null); localView = null) {
      return;
    }
    int i = mShadowDrawable.getIntrinsicWidth();
    int j = localView.getLeft();
    int k = localView.getTop();
    int m = localView.getBottom();
    mShadowDrawable.setBounds(j - i, k, j, m);
    mShadowDrawable.draw(paramCanvas);
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i = paramCanvas.save(2);
    if ((mCanSlide) && (!slideable) && (mSlideableView != null))
    {
      paramCanvas.getClipBounds(mTmpRect);
      mTmpRect.right = Math.min(mTmpRect.right, mSlideableView.getLeft());
      paramCanvas.clipRect(mTmpRect);
    }
    boolean bool;
    if (Build.VERSION.SDK_INT >= 11) {
      bool = super.drawChild(paramCanvas, paramView, paramLong);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(i);
      return bool;
      if ((dimWhenOffset) && (mSlideOffset > 0.0F))
      {
        if (!paramView.isDrawingCacheEnabled()) {
          paramView.setDrawingCacheEnabled(true);
        }
        Bitmap localBitmap = paramView.getDrawingCache();
        if (localBitmap != null)
        {
          paramCanvas.drawBitmap(localBitmap, paramView.getLeft(), paramView.getTop(), dimPaint);
          bool = false;
        }
        else
        {
          Log.e("SlidingPaneLayout", "drawChild: child view " + paramView + " returned null drawing cache");
          bool = super.drawChild(paramCanvas, paramView, paramLong);
        }
      }
      else
      {
        if (paramView.isDrawingCacheEnabled()) {
          paramView.setDrawingCacheEnabled(false);
        }
        bool = super.drawChild(paramCanvas, paramView, paramLong);
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getCoveredFadeColor()
  {
    return mCoveredFadeColor;
  }
  
  public int getParallaxDistance()
  {
    return mParallaxBy;
  }
  
  public int getSliderFadeColor()
  {
    return mSliderFadeColor;
  }
  
  boolean isDimmed(View paramView)
  {
    if (paramView == null) {}
    do
    {
      return false;
      paramView = (LayoutParams)paramView.getLayoutParams();
    } while ((!mCanSlide) || (!dimWhenOffset) || (mSlideOffset <= 0.0F));
    return true;
  }
  
  public boolean isOpen()
  {
    return (!mCanSlide) || (mSlideOffset == 1.0F);
  }
  
  public boolean isSlideable()
  {
    return mCanSlide;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mFirstLayout = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    mFirstLayout = true;
    int i = 0;
    int j = mPostedRunnables.size();
    while (i < j)
    {
      ((DisableLayerRunnable)mPostedRunnables.get(i)).run();
      i += 1;
    }
    mPostedRunnables.clear();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = MotionEventCompat.getActionMasked(paramMotionEvent);
    if ((!mCanSlide) && (k == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null) {
        if (mDragHelper.isViewUnder(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
          break label101;
        }
      }
    }
    label101:
    for (boolean bool = true;; bool = false)
    {
      mPreservedOpenState = bool;
      if ((mCanSlide) && ((!mIsUnableToDrag) || (k == 0))) {
        break;
      }
      mDragHelper.cancel();
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    if ((k == 3) || (k == 1))
    {
      mDragHelper.cancel();
      return false;
    }
    int j = 0;
    int i = j;
    switch (k)
    {
    default: 
      i = j;
    }
    while ((mDragHelper.shouldInterceptTouchEvent(paramMotionEvent)) || (i != 0))
    {
      return true;
      mIsUnableToDrag = false;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      mInitialMotionX = f1;
      mInitialMotionY = f2;
      i = j;
      if (mDragHelper.isViewUnder(mSlideableView, (int)f1, (int)f2))
      {
        i = j;
        if (isDimmed(mSlideableView))
        {
          i = 1;
          continue;
          f2 = paramMotionEvent.getX();
          f1 = paramMotionEvent.getY();
          f2 = Math.abs(f2 - mInitialMotionX);
          f1 = Math.abs(f1 - mInitialMotionY);
          i = j;
          if (f2 > mDragHelper.getTouchSlop())
          {
            i = j;
            if (f1 > f2)
            {
              mDragHelper.cancel();
              mIsUnableToDrag = true;
              return false;
            }
          }
        }
      }
    }
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = paramInt3 - paramInt1;
    paramInt1 = getPaddingLeft();
    int k = getPaddingRight();
    int m = getPaddingTop();
    int i = getChildCount();
    paramInt3 = paramInt1;
    if (mFirstLayout) {
      if ((!mCanSlide) || (!mPreservedOpenState)) {
        break label108;
      }
    }
    View localView;
    label108:
    for (float f = 1.0F;; f = 0.0F)
    {
      mSlideOffset = f;
      paramInt4 = 0;
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = paramInt4;
      for (;;)
      {
        if (paramInt3 >= i) {
          break label318;
        }
        localView = getChildAt(paramInt3);
        if (localView.getVisibility() != 8) {
          break;
        }
        paramInt3 += 1;
      }
    }
    LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
    int n = localView.getMeasuredWidth();
    paramInt4 = 0;
    if (slideable)
    {
      int i1 = leftMargin;
      int i2 = rightMargin;
      i1 = Math.min(paramInt1, j - k - mOverhangSize) - paramInt2 - (i1 + i2);
      mSlideRange = i1;
      if (leftMargin + paramInt2 + i1 + n / 2 > j - k)
      {
        paramBoolean = true;
        label211:
        dimWhenOffset = paramBoolean;
        paramInt2 += (int)(i1 * mSlideOffset) + leftMargin;
      }
    }
    for (;;)
    {
      paramInt4 = paramInt2 - paramInt4;
      localView.layout(paramInt4, m, paramInt4 + n, m + localView.getMeasuredHeight());
      paramInt1 += localView.getWidth();
      break;
      paramBoolean = false;
      break label211;
      if ((mCanSlide) && (mParallaxBy != 0))
      {
        paramInt4 = (int)((1.0F - mSlideOffset) * mParallaxBy);
        paramInt2 = paramInt1;
      }
      else
      {
        paramInt2 = paramInt1;
      }
    }
    label318:
    if (mFirstLayout)
    {
      if (!mCanSlide) {
        break label393;
      }
      if (mParallaxBy != 0) {
        parallaxOtherViews(mSlideOffset);
      }
      if (mSlideableView.getLayoutParams()).dimWhenOffset) {
        dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
      }
    }
    for (;;)
    {
      updateObscuredViewsVisibility(mSlideableView);
      mFirstLayout = false;
      return;
      label393:
      paramInt1 = 0;
      while (paramInt1 < i)
      {
        dimChildView(getChildAt(paramInt1), 0.0F, mSliderFadeColor);
        paramInt1 += 1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int m = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    int k;
    int n;
    label88:
    float f1;
    boolean bool1;
    int i3;
    int i1;
    label136:
    View localView;
    LayoutParams localLayoutParams;
    int i2;
    if (m != 1073741824) {
      if (isInEditMode()) {
        if (m == Integer.MIN_VALUE)
        {
          k = i;
          paramInt1 = paramInt2;
          n = j;
          i = 0;
          paramInt2 = -1;
          switch (n)
          {
          default: 
            f1 = 0.0F;
            bool1 = false;
            m = k - getPaddingLeft() - getPaddingRight();
            i3 = getChildCount();
            if (i3 > 2) {
              Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
            }
            mSlideableView = null;
            i1 = 0;
            if (i1 >= i3) {
              break label649;
            }
            localView = getChildAt(i1);
            localLayoutParams = (LayoutParams)localView.getLayoutParams();
            if (localView.getVisibility() == 8)
            {
              dimWhenOffset = false;
              i2 = m;
              j = i;
              bool2 = bool1;
            }
            break;
          }
        }
      }
    }
    float f2;
    do
    {
      i1 += 1;
      bool1 = bool2;
      i = j;
      m = i2;
      break label136;
      n = j;
      paramInt1 = paramInt2;
      k = i;
      if (m != 0) {
        break;
      }
      k = 300;
      n = j;
      paramInt1 = paramInt2;
      break;
      throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
      n = j;
      paramInt1 = paramInt2;
      k = i;
      if (j != 0) {
        break;
      }
      if (isInEditMode())
      {
        n = j;
        paramInt1 = paramInt2;
        k = i;
        if (j != 0) {
          break;
        }
        n = Integer.MIN_VALUE;
        paramInt1 = 300;
        k = i;
        break;
      }
      throw new IllegalStateException("Height must not be UNSPECIFIED");
      paramInt2 = paramInt1 - getPaddingTop() - getPaddingBottom();
      i = paramInt2;
      break label88;
      paramInt2 = paramInt1 - getPaddingTop() - getPaddingBottom();
      break label88;
      f2 = f1;
      if (weight <= 0.0F) {
        break label392;
      }
      f2 = f1 + weight;
      bool2 = bool1;
      j = i;
      f1 = f2;
      i2 = m;
    } while (width == 0);
    label392:
    paramInt1 = leftMargin + rightMargin;
    if (width == -2)
    {
      paramInt1 = View.MeasureSpec.makeMeasureSpec(k - paramInt1, Integer.MIN_VALUE);
      label425:
      if (height != -2) {
        break label606;
      }
      j = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
      label444:
      localView.measure(paramInt1, j);
      j = localView.getMeasuredWidth();
      i2 = localView.getMeasuredHeight();
      paramInt1 = i;
      if (n == Integer.MIN_VALUE)
      {
        paramInt1 = i;
        if (i2 > i) {
          paramInt1 = Math.min(i2, paramInt2);
        }
      }
      i = m - j;
      if (i >= 0) {
        break label643;
      }
    }
    label606:
    label643:
    for (boolean bool2 = true;; bool2 = false)
    {
      slideable = bool2;
      bool1 |= bool2;
      bool2 = bool1;
      j = paramInt1;
      f1 = f2;
      i2 = i;
      if (!slideable) {
        break;
      }
      mSlideableView = localView;
      bool2 = bool1;
      j = paramInt1;
      f1 = f2;
      i2 = i;
      break;
      if (width == -1)
      {
        paramInt1 = View.MeasureSpec.makeMeasureSpec(k - paramInt1, 1073741824);
        break label425;
      }
      paramInt1 = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
      break label425;
      if (height == -1)
      {
        j = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        break label444;
      }
      j = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
      break label444;
    }
    label649:
    if ((bool1) || (f1 > 0.0F))
    {
      i1 = k - mOverhangSize;
      j = 0;
      if (j < i3)
      {
        localView = getChildAt(j);
        if (localView.getVisibility() == 8) {}
        for (;;)
        {
          j += 1;
          break;
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (localView.getVisibility() != 8)
          {
            if ((width == 0) && (weight > 0.0F))
            {
              paramInt1 = 1;
              label746:
              if (paramInt1 == 0) {
                break label836;
              }
              n = 0;
              label753:
              if ((!bool1) || (localView == mSlideableView)) {
                break label896;
              }
              if ((width >= 0) || ((n <= i1) && (weight <= 0.0F))) {
                continue;
              }
              if (paramInt1 == 0) {
                break label881;
              }
              if (height != -2) {
                break label846;
              }
              paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
            }
            for (;;)
            {
              localView.measure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), paramInt1);
              break;
              paramInt1 = 0;
              break label746;
              label836:
              n = localView.getMeasuredWidth();
              break label753;
              label846:
              if (height == -1)
              {
                paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
              }
              else
              {
                paramInt1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                continue;
                label881:
                paramInt1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
              }
            }
            label896:
            if (weight > 0.0F)
            {
              if (width == 0) {
                if (height == -2) {
                  paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
                }
              }
              for (;;)
              {
                if (!bool1) {
                  break label1031;
                }
                i2 = k - (leftMargin + rightMargin);
                int i4 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                if (n == i2) {
                  break;
                }
                localView.measure(i4, paramInt1);
                break;
                if (height == -1)
                {
                  paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
                }
                else
                {
                  paramInt1 = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                  continue;
                  paramInt1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                }
              }
              label1031:
              i2 = Math.max(0, m);
              localView.measure(View.MeasureSpec.makeMeasureSpec(n + (int)(weight * i2 / f1), 1073741824), paramInt1);
            }
          }
        }
      }
    }
    setMeasuredDimension(k, i);
    mCanSlide = bool1;
    if ((mDragHelper.getViewDragState() != 0) && (!bool1)) {
      mDragHelper.abort();
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (isOpen) {
      openPane();
    }
    for (;;)
    {
      mPreservedOpenState = isOpen;
      return;
      closePane();
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (isSlideable()) {}
    for (boolean bool = isOpen();; bool = mPreservedOpenState)
    {
      isOpen = bool;
      return localSavedState;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      mFirstLayout = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1;
    if (!mCanSlide) {
      bool1 = super.onTouchEvent(paramMotionEvent);
    }
    float f1;
    float f2;
    do
    {
      int i;
      boolean bool2;
      float f3;
      float f4;
      do
      {
        do
        {
          return bool1;
          mDragHelper.processTouchEvent(paramMotionEvent);
          i = paramMotionEvent.getAction();
          bool2 = true;
          switch (i & 0xFF)
          {
          default: 
            return true;
          case 0: 
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            mInitialMotionX = f1;
            mInitialMotionY = f2;
            return true;
          }
          bool1 = bool2;
        } while (!isDimmed(mSlideableView));
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        f3 = f1 - mInitialMotionX;
        f4 = f2 - mInitialMotionY;
        i = mDragHelper.getTouchSlop();
        bool1 = bool2;
      } while (f3 * f3 + f4 * f4 >= i * i);
      bool1 = bool2;
    } while (!mDragHelper.isViewUnder(mSlideableView, (int)f1, (int)f2));
    closePane(mSlideableView, 0);
    return true;
  }
  
  public boolean openPane()
  {
    return openPane(mSlideableView, 0);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!mCanSlide)) {
      if (paramView1 != mSlideableView) {
        break label36;
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      mPreservedOpenState = bool;
      return;
    }
  }
  
  void setAllChildrenVisible()
  {
    int i = 0;
    int j = getChildCount();
    while (i < j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 4) {
        localView.setVisibility(0);
      }
      i += 1;
    }
  }
  
  public void setCoveredFadeColor(int paramInt)
  {
    mCoveredFadeColor = paramInt;
  }
  
  public void setPanelSlideListener(PanelSlideListener paramPanelSlideListener)
  {
    mPanelSlideListener = paramPanelSlideListener;
  }
  
  public void setParallaxDistance(int paramInt)
  {
    mParallaxBy = paramInt;
    requestLayout();
  }
  
  public void setShadowDrawable(Drawable paramDrawable)
  {
    mShadowDrawable = paramDrawable;
  }
  
  public void setShadowResource(int paramInt)
  {
    setShadowDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setSliderFadeColor(int paramInt)
  {
    mSliderFadeColor = paramInt;
  }
  
  @Deprecated
  public void smoothSlideClosed()
  {
    closePane();
  }
  
  @Deprecated
  public void smoothSlideOpen()
  {
    openPane();
  }
  
  boolean smoothSlideTo(float paramFloat, int paramInt)
  {
    if (!mCanSlide) {}
    do
    {
      return false;
      LayoutParams localLayoutParams = (LayoutParams)mSlideableView.getLayoutParams();
      paramInt = (int)(getPaddingLeft() + leftMargin + mSlideRange * paramFloat);
    } while (!mDragHelper.smoothSlideViewTo(mSlideableView, paramInt, mSlideableView.getTop()));
    setAllChildrenVisible();
    ViewCompat.postInvalidateOnAnimation(this);
    return true;
  }
  
  void updateObscuredViewsVisibility(View paramView)
  {
    int i2 = getPaddingLeft();
    int i3 = getWidth();
    int i4 = getPaddingRight();
    int i5 = getPaddingTop();
    int i6 = getHeight();
    int i7 = getPaddingBottom();
    int j;
    int k;
    int m;
    int i;
    if ((paramView != null) && (viewIsOpaque(paramView)))
    {
      j = paramView.getLeft();
      k = paramView.getRight();
      m = paramView.getTop();
      i = paramView.getBottom();
    }
    int n;
    View localView;
    for (;;)
    {
      n = 0;
      int i8 = getChildCount();
      if (n < i8)
      {
        localView = getChildAt(n);
        if (localView != paramView) {
          break;
        }
      }
      return;
      i = 0;
      m = 0;
      k = 0;
      j = 0;
    }
    int i1 = Math.max(i2, localView.getLeft());
    int i9 = Math.max(i5, localView.getTop());
    int i10 = Math.min(i3 - i4, localView.getRight());
    int i11 = Math.min(i6 - i7, localView.getBottom());
    if ((i1 >= j) && (i9 >= m) && (i10 <= k) && (i11 <= i)) {}
    for (i1 = 4;; i1 = 0)
    {
      localView.setVisibility(i1);
      n += 1;
      break;
    }
  }
  
  class AccessibilityDelegate
    extends AccessibilityDelegateCompat
  {
    private final Rect mTmpRect = new Rect();
    
    AccessibilityDelegate() {}
    
    private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat1, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat2)
    {
      Rect localRect = mTmpRect;
      paramAccessibilityNodeInfoCompat2.getBoundsInParent(localRect);
      paramAccessibilityNodeInfoCompat1.setBoundsInParent(localRect);
      paramAccessibilityNodeInfoCompat2.getBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat1.setBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat1.setVisibleToUser(paramAccessibilityNodeInfoCompat2.isVisibleToUser());
      paramAccessibilityNodeInfoCompat1.setPackageName(paramAccessibilityNodeInfoCompat2.getPackageName());
      paramAccessibilityNodeInfoCompat1.setClassName(paramAccessibilityNodeInfoCompat2.getClassName());
      paramAccessibilityNodeInfoCompat1.setContentDescription(paramAccessibilityNodeInfoCompat2.getContentDescription());
      paramAccessibilityNodeInfoCompat1.setEnabled(paramAccessibilityNodeInfoCompat2.isEnabled());
      paramAccessibilityNodeInfoCompat1.setClickable(paramAccessibilityNodeInfoCompat2.isClickable());
      paramAccessibilityNodeInfoCompat1.setFocusable(paramAccessibilityNodeInfoCompat2.isFocusable());
      paramAccessibilityNodeInfoCompat1.setFocused(paramAccessibilityNodeInfoCompat2.isFocused());
      paramAccessibilityNodeInfoCompat1.setAccessibilityFocused(paramAccessibilityNodeInfoCompat2.isAccessibilityFocused());
      paramAccessibilityNodeInfoCompat1.setSelected(paramAccessibilityNodeInfoCompat2.isSelected());
      paramAccessibilityNodeInfoCompat1.setLongClickable(paramAccessibilityNodeInfoCompat2.isLongClickable());
      paramAccessibilityNodeInfoCompat1.addAction(paramAccessibilityNodeInfoCompat2.getActions());
      paramAccessibilityNodeInfoCompat1.setMovementGranularities(paramAccessibilityNodeInfoCompat2.getMovementGranularities());
    }
    
    public boolean filter(View paramView)
    {
      return isDimmed(paramView);
    }
    
    public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
      super.onInitializeAccessibilityNodeInfo(paramView, localAccessibilityNodeInfoCompat);
      copyNodeInfoNoChildren(paramAccessibilityNodeInfoCompat, localAccessibilityNodeInfoCompat);
      localAccessibilityNodeInfoCompat.recycle();
      paramAccessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
      paramAccessibilityNodeInfoCompat.setSource(paramView);
      paramView = ViewCompat.getParentForAccessibility(paramView);
      if ((paramView instanceof View)) {
        paramAccessibilityNodeInfoCompat.setParent((View)paramView);
      }
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        paramView = getChildAt(i);
        if ((!filter(paramView)) && (paramView.getVisibility() == 0))
        {
          ViewCompat.setImportantForAccessibility(paramView, 1);
          paramAccessibilityNodeInfoCompat.addChild(paramView);
        }
        i += 1;
      }
    }
    
    public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if (!filter(paramView)) {
        return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
      }
      return false;
    }
  }
  
  private class DisableLayerRunnable
    implements Runnable
  {
    final View mChildView;
    
    DisableLayerRunnable(View paramView)
    {
      mChildView = paramView;
    }
    
    public void run()
    {
      if (mChildView.getParent() == SlidingPaneLayout.this)
      {
        ViewCompat.setLayerType(mChildView, 0, null);
        SlidingPaneLayout.this.invalidateChildRegion(mChildView);
      }
      mPostedRunnables.remove(this);
    }
  }
  
  private class DragHelperCallback
    extends ViewDragHelper.Callback
  {
    private DragHelperCallback() {}
    
    public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
    {
      paramView = (SlidingPaneLayout.LayoutParams)mSlideableView.getLayoutParams();
      paramInt2 = getPaddingLeft() + leftMargin;
      int i = mSlideRange;
      return Math.min(Math.max(paramInt1, paramInt2), paramInt2 + i);
    }
    
    public int getViewHorizontalDragRange(View paramView)
    {
      return mSlideRange;
    }
    
    public void onEdgeDragStarted(int paramInt1, int paramInt2)
    {
      mDragHelper.captureChildView(mSlideableView, paramInt2);
    }
    
    public void onViewCaptured(View paramView, int paramInt)
    {
      setAllChildrenVisible();
    }
    
    public void onViewDragStateChanged(int paramInt)
    {
      if (mDragHelper.getViewDragState() == 0)
      {
        if (mSlideOffset == 0.0F)
        {
          updateObscuredViewsVisibility(mSlideableView);
          dispatchOnPanelClosed(mSlideableView);
          SlidingPaneLayout.access$502(SlidingPaneLayout.this, false);
        }
      }
      else {
        return;
      }
      dispatchOnPanelOpened(mSlideableView);
      SlidingPaneLayout.access$502(SlidingPaneLayout.this, true);
    }
    
    public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      SlidingPaneLayout.this.onPanelDragged(paramInt1);
      invalidate();
    }
    
    public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
    {
      SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
      int j = getPaddingLeft() + leftMargin;
      int i;
      if (paramFloat1 <= 0.0F)
      {
        i = j;
        if (paramFloat1 == 0.0F)
        {
          i = j;
          if (mSlideOffset <= 0.5F) {}
        }
      }
      else
      {
        i = j + mSlideRange;
      }
      mDragHelper.settleCapturedViewAt(i, paramView.getTop());
      invalidate();
    }
    
    public boolean tryCaptureView(View paramView, int paramInt)
    {
      if (mIsUnableToDrag) {
        return false;
      }
      return getLayoutParamsslideable;
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    private static final int[] ATTRS = { 16843137 };
    Paint dimPaint;
    boolean dimWhenOffset;
    boolean slideable;
    public float weight = 0.0F;
    
    public LayoutParams()
    {
      super(-1);
    }
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ATTRS);
      weight = paramContext.getFloat(0, 0.0F);
      paramContext.recycle();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      weight = weight;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  public static abstract interface PanelSlideListener
  {
    public abstract void onPanelClosed(View paramView);
    
    public abstract void onPanelOpened(View paramView);
    
    public abstract void onPanelSlide(View paramView, float paramFloat);
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public SlidingPaneLayout.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new SlidingPaneLayout.SavedState(paramAnonymousParcel, null);
      }
      
      public SlidingPaneLayout.SavedState[] newArray(int paramAnonymousInt)
      {
        return new SlidingPaneLayout.SavedState[paramAnonymousInt];
      }
    };
    boolean isOpen;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      if (paramParcel.readInt() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        isOpen = bool;
        return;
      }
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      if (isOpen) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
  
  public static class SimplePanelSlideListener
    implements SlidingPaneLayout.PanelSlideListener
  {
    public void onPanelClosed(View paramView) {}
    
    public void onPanelOpened(View paramView) {}
    
    public void onPanelSlide(View paramView, float paramFloat) {}
  }
  
  static abstract interface SlidingPanelLayoutImpl
  {
    public abstract void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView);
  }
  
  static class SlidingPanelLayoutImplBase
    implements SlidingPaneLayout.SlidingPanelLayoutImpl
  {
    public void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
    {
      ViewCompat.postInvalidateOnAnimation(paramSlidingPaneLayout, paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    }
  }
  
  static class SlidingPanelLayoutImplJB
    extends SlidingPaneLayout.SlidingPanelLayoutImplBase
  {
    private Method mGetDisplayList;
    private Field mRecreateDisplayList;
    
    SlidingPanelLayoutImplJB()
    {
      try
      {
        mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", (Class[])null);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        for (;;)
        {
          try
          {
            mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
            mRecreateDisplayList.setAccessible(true);
            return;
          }
          catch (NoSuchFieldException localNoSuchFieldException)
          {
            Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", localNoSuchFieldException);
          }
          localNoSuchMethodException = localNoSuchMethodException;
          Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", localNoSuchMethodException);
        }
      }
    }
    
    public void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
    {
      if ((mGetDisplayList != null) && (mRecreateDisplayList != null)) {
        try
        {
          mRecreateDisplayList.setBoolean(paramView, true);
          mGetDisplayList.invoke(paramView, (Object[])null);
          super.invalidateChildRegion(paramSlidingPaneLayout, paramView);
          return;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            Log.e("SlidingPaneLayout", "Error refreshing display list state", localException);
          }
        }
      }
      paramView.invalidate();
    }
  }
  
  static class SlidingPanelLayoutImplJBMR1
    extends SlidingPaneLayout.SlidingPanelLayoutImplBase
  {
    public void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
    {
      ViewCompat.setLayerPaint(paramView, getLayoutParamsdimPaint);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */