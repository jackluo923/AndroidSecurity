package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug.ExportedProperty;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.widget.RemoteViews.RemoteView;

@RemoteViews.RemoteView
public class IcsProgressBar
  extends View
{
  private static final int ANIMATION_RESOLUTION = 200;
  private static final boolean IS_HONEYCOMB;
  private static final int MAX_LEVEL = 10000;
  private static final int[] ProgressBar;
  private static final int ProgressBar_animationResolution = 14;
  private static final int ProgressBar_indeterminate = 5;
  private static final int ProgressBar_indeterminateBehavior = 10;
  private static final int ProgressBar_indeterminateDrawable = 7;
  private static final int ProgressBar_indeterminateDuration = 9;
  private static final int ProgressBar_indeterminateOnly = 6;
  private static final int ProgressBar_interpolator = 13;
  private static final int ProgressBar_max = 2;
  private static final int ProgressBar_maxHeight = 1;
  private static final int ProgressBar_maxWidth = 0;
  private static final int ProgressBar_minHeight = 12;
  private static final int ProgressBar_minWidth = 11;
  private static final int ProgressBar_progress = 3;
  private static final int ProgressBar_progressDrawable = 8;
  private static final int ProgressBar_secondaryProgress = 4;
  private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
  private IcsProgressBar.AccessibilityEventSender mAccessibilityEventSender;
  private AccessibilityManager mAccessibilityManager;
  private AlphaAnimation mAnimation;
  private int mAnimationResolution;
  private int mBehavior;
  private Drawable mCurrentDrawable;
  private int mDuration;
  private boolean mInDrawing;
  private boolean mIndeterminate;
  private Drawable mIndeterminateDrawable;
  private int mIndeterminateRealLeft;
  private int mIndeterminateRealTop;
  private Interpolator mInterpolator;
  private long mLastDrawTime;
  private int mMax;
  int mMaxHeight;
  int mMaxWidth;
  int mMinHeight;
  int mMinWidth;
  private boolean mNoInvalidate;
  private boolean mOnlyIndeterminate;
  private int mProgress;
  private Drawable mProgressDrawable;
  private IcsProgressBar.RefreshProgressRunnable mRefreshProgressRunnable;
  Bitmap mSampleTile;
  private int mSecondaryProgress;
  private boolean mShouldStartAnimationDrawable;
  private Transformation mTransformation;
  private long mUiThreadId = Thread.currentThread().getId();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      IS_HONEYCOMB = bool;
      ProgressBar = new int[] { 16843039, 16843040, 16843062, 16843063, 16843064, 16843065, 16843066, 16843067, 16843068, 16843069, 16843070, 16843071, 16843072, 16843073, 16843546 };
      return;
    }
  }
  
  public IcsProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public IcsProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842871);
  }
  
  public IcsProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public IcsProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1);
    initProgressBar();
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, ProgressBar, paramInt1, paramInt2);
    mNoInvalidate = true;
    Drawable localDrawable = paramAttributeSet.getDrawable(8);
    if (localDrawable != null) {
      setProgressDrawable(tileify(localDrawable, false));
    }
    mDuration = paramAttributeSet.getInt(9, mDuration);
    mMinWidth = paramAttributeSet.getDimensionPixelSize(11, mMinWidth);
    mMaxWidth = paramAttributeSet.getDimensionPixelSize(0, mMaxWidth);
    mMinHeight = paramAttributeSet.getDimensionPixelSize(12, mMinHeight);
    mMaxHeight = paramAttributeSet.getDimensionPixelSize(1, mMaxHeight);
    mBehavior = paramAttributeSet.getInt(10, mBehavior);
    paramInt1 = paramAttributeSet.getResourceId(13, 17432587);
    if (paramInt1 > 0) {
      setInterpolator(paramContext, paramInt1);
    }
    setMax(paramAttributeSet.getInt(2, mMax));
    setProgress(paramAttributeSet.getInt(3, mProgress));
    setSecondaryProgress(paramAttributeSet.getInt(4, mSecondaryProgress));
    localDrawable = paramAttributeSet.getDrawable(7);
    if (localDrawable != null) {
      setIndeterminateDrawable(tileifyIndeterminate(localDrawable));
    }
    mOnlyIndeterminate = paramAttributeSet.getBoolean(6, mOnlyIndeterminate);
    mNoInvalidate = false;
    if ((mOnlyIndeterminate) || (paramAttributeSet.getBoolean(5, mIndeterminate))) {
      bool = true;
    }
    setIndeterminate(bool);
    mAnimationResolution = paramAttributeSet.getInteger(14, 200);
    paramAttributeSet.recycle();
    mAccessibilityManager = ((AccessibilityManager)paramContext.getSystemService("accessibility"));
  }
  
  private void doRefreshProgress(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      Object localObject2;
      try
      {
        float f;
        if (mMax > 0)
        {
          f = paramInt2 / mMax;
          localObject2 = mCurrentDrawable;
          if (localObject2 != null)
          {
            Drawable localDrawable = null;
            if (!(localObject2 instanceof LayerDrawable)) {
              break label104;
            }
            localDrawable = ((LayerDrawable)localObject2).findDrawableByLayerId(paramInt1);
            break label104;
            ((Drawable)localObject2).setLevel(paramInt2);
            if ((paramBoolean2) && (paramInt1 == 16908301)) {
              onProgressRefresh(f, paramBoolean1);
            }
          }
        }
        else
        {
          f = 0.0F;
          continue;
        }
        invalidate();
        continue;
        paramInt2 = (int)(10000.0F * f);
      }
      finally {}
      label104:
      if (localObject1 != null) {
        localObject2 = localObject1;
      }
    }
  }
  
  private void initProgressBar()
  {
    mMax = 100;
    mProgress = 0;
    mSecondaryProgress = 0;
    mIndeterminate = false;
    mOnlyIndeterminate = false;
    mDuration = 4000;
    mBehavior = 1;
    mMinWidth = 24;
    mMaxWidth = 48;
    mMinHeight = 24;
    mMaxHeight = 48;
  }
  
  private void refreshProgress(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (mUiThreadId == Thread.currentThread().getId())
        {
          doRefreshProgress(paramInt1, paramInt2, paramBoolean, true);
          return;
        }
        if (mRefreshProgressRunnable != null)
        {
          IcsProgressBar.RefreshProgressRunnable localRefreshProgressRunnable1 = mRefreshProgressRunnable;
          mRefreshProgressRunnable = null;
          localRefreshProgressRunnable1.setup(paramInt1, paramInt2, paramBoolean);
          post(localRefreshProgressRunnable1);
        }
        else
        {
          IcsProgressBar.RefreshProgressRunnable localRefreshProgressRunnable2 = new IcsProgressBar.RefreshProgressRunnable(this, paramInt1, paramInt2, paramBoolean);
        }
      }
      finally {}
    }
  }
  
  private void scheduleAccessibilityEventSender()
  {
    if (mAccessibilityEventSender == null) {
      mAccessibilityEventSender = new IcsProgressBar.AccessibilityEventSender(this, null);
    }
    for (;;)
    {
      postDelayed(mAccessibilityEventSender, 200L);
      return;
      removeCallbacks(mAccessibilityEventSender);
    }
  }
  
  private Drawable tileify(Drawable paramDrawable, boolean paramBoolean)
  {
    int j = 0;
    if ((paramDrawable instanceof LayerDrawable))
    {
      paramDrawable = (LayerDrawable)paramDrawable;
      int k = paramDrawable.getNumberOfLayers();
      localObject = new Drawable[k];
      int i = 0;
      if (i < k)
      {
        int m = paramDrawable.getId(i);
        Drawable localDrawable = paramDrawable.getDrawable(i);
        if ((m == 16908301) || (m == 16908303)) {}
        for (paramBoolean = true;; paramBoolean = false)
        {
          localObject[i] = tileify(localDrawable, paramBoolean);
          i += 1;
          break;
        }
      }
      localObject = new LayerDrawable((Drawable[])localObject);
      i = j;
      while (i < k)
      {
        ((LayerDrawable)localObject).setId(i, paramDrawable.getId(i));
        i += 1;
      }
    }
    do
    {
      return (Drawable)localObject;
      localObject = paramDrawable;
    } while (!(paramDrawable instanceof BitmapDrawable));
    Object localObject = ((BitmapDrawable)paramDrawable).getBitmap();
    if (mSampleTile == null) {
      mSampleTile = ((Bitmap)localObject);
    }
    paramDrawable = new ShapeDrawable(getDrawableShape());
    localObject = new BitmapShader((Bitmap)localObject, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
    paramDrawable.getPaint().setShader((Shader)localObject);
    if (paramBoolean) {
      return new ClipDrawable(paramDrawable, 3, 1);
    }
    return paramDrawable;
  }
  
  private Drawable tileifyIndeterminate(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if ((paramDrawable instanceof AnimationDrawable))
    {
      paramDrawable = (AnimationDrawable)paramDrawable;
      int j = paramDrawable.getNumberOfFrames();
      localObject = new AnimationDrawable();
      ((AnimationDrawable)localObject).setOneShot(paramDrawable.isOneShot());
      int i = 0;
      while (i < j)
      {
        Drawable localDrawable = tileify(paramDrawable.getFrame(i), true);
        localDrawable.setLevel(10000);
        ((AnimationDrawable)localObject).addFrame(localDrawable, paramDrawable.getDuration(i));
        i += 1;
      }
      ((AnimationDrawable)localObject).setLevel(10000);
    }
    return (Drawable)localObject;
  }
  
  private void updateDrawableBounds(int paramInt1, int paramInt2)
  {
    int j = paramInt1 - getPaddingRight() - getPaddingLeft();
    int i = paramInt2 - getPaddingBottom() - getPaddingTop();
    int k;
    float f1;
    float f2;
    if (mIndeterminateDrawable != null) {
      if ((mOnlyIndeterminate) && (!(mIndeterminateDrawable instanceof AnimationDrawable)))
      {
        k = mIndeterminateDrawable.getIntrinsicWidth();
        int m = mIndeterminateDrawable.getIntrinsicHeight();
        f1 = k / m;
        f2 = paramInt1 / paramInt2;
        if (f1 != f2) {
          if (f2 > f1)
          {
            paramInt2 = (int)(f1 * paramInt2);
            k = (paramInt1 - paramInt2) / 2;
            paramInt2 += k;
            paramInt1 = i;
            j = 0;
            i = k;
            mIndeterminateDrawable.setBounds(0, 0, paramInt2 - i, paramInt1 - j);
            mIndeterminateRealLeft = i;
            mIndeterminateRealTop = j;
          }
        }
      }
    }
    for (;;)
    {
      if (mProgressDrawable != null) {
        mProgressDrawable.setBounds(0, 0, paramInt2, paramInt1);
      }
      return;
      f2 = paramInt1;
      paramInt1 = (int)(1.0F / f1 * f2);
      i = (paramInt2 - paramInt1) / 2;
      paramInt2 = j;
      paramInt1 += i;
      j = i;
      i = 0;
      break;
      k = 0;
      paramInt2 = j;
      paramInt1 = i;
      j = 0;
      i = k;
      break;
      paramInt1 = i;
      paramInt2 = j;
    }
  }
  
  private void updateDrawableState()
  {
    int[] arrayOfInt = getDrawableState();
    if ((mProgressDrawable != null) && (mProgressDrawable.isStateful())) {
      mProgressDrawable.setState(arrayOfInt);
    }
    if ((mIndeterminateDrawable != null) && (mIndeterminateDrawable.isStateful())) {
      mIndeterminateDrawable.setState(arrayOfInt);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    updateDrawableState();
  }
  
  Drawable getCurrentDrawable()
  {
    return mCurrentDrawable;
  }
  
  Shape getDrawableShape()
  {
    return new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null);
  }
  
  public Drawable getIndeterminateDrawable()
  {
    return mIndeterminateDrawable;
  }
  
  public Interpolator getInterpolator()
  {
    return mInterpolator;
  }
  
  @ViewDebug.ExportedProperty(category="progress")
  public int getMax()
  {
    try
    {
      int i = mMax;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  @ViewDebug.ExportedProperty(category="progress")
  public int getProgress()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 218	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 195	com/actionbarsherlock/internal/widget/IcsProgressBar:mProgress	I
    //   21: istore_2
    //   22: goto -9 -> 13
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	IcsProgressBar
    //   25	4	1	localObject	Object
    //   12	10	2	i	int
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   17	22	25	finally
  }
  
  public Drawable getProgressDrawable()
  {
    return mProgressDrawable;
  }
  
  /* Error */
  @ViewDebug.ExportedProperty(category="progress")
  public int getSecondaryProgress()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 218	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 200	com/actionbarsherlock/internal/widget/IcsProgressBar:mSecondaryProgress	I
    //   21: istore_2
    //   22: goto -9 -> 13
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	IcsProgressBar
    //   25	4	1	localObject	Object
    //   12	10	2	i	int
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   17	22	25	finally
  }
  
  public final void incrementProgressBy(int paramInt)
  {
    try
    {
      setProgress(mProgress + paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void incrementSecondaryProgressBy(int paramInt)
  {
    try
    {
      setSecondaryProgress(mSecondaryProgress + paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    if (!mInDrawing)
    {
      if (verifyDrawable(paramDrawable))
      {
        paramDrawable = paramDrawable.getBounds();
        int i = getScrollX() + getPaddingLeft();
        int j = getScrollY() + getPaddingTop();
        invalidate(left + i, top + j, i + right, bottom + j);
      }
    }
    else {
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }
  
  @ViewDebug.ExportedProperty(category="progress")
  public boolean isIndeterminate()
  {
    try
    {
      boolean bool = mIndeterminate;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    if (mProgressDrawable != null) {
      mProgressDrawable.jumpToCurrentState();
    }
    if (mIndeterminateDrawable != null) {
      mIndeterminateDrawable.jumpToCurrentState();
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (mIndeterminate) {
      startAnimation();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    if (mIndeterminate) {
      stopAnimation();
    }
    if (mRefreshProgressRunnable != null) {
      removeCallbacks(mRefreshProgressRunnable);
    }
    if (mAccessibilityEventSender != null) {
      removeCallbacks(mAccessibilityEventSender);
    }
    super.onDetachedFromWindow();
  }
  
  /* Error */
  protected void onDraw(android.graphics.Canvas paramCanvas)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 519	android/view/View:onDraw	(Landroid/graphics/Canvas;)V
    //   7: aload_0
    //   8: getfield 252	com/actionbarsherlock/internal/widget/IcsProgressBar:mCurrentDrawable	Landroid/graphics/drawable/Drawable;
    //   11: astore_3
    //   12: aload_3
    //   13: ifnull +158 -> 171
    //   16: aload_1
    //   17: invokevirtual 524	android/graphics/Canvas:save	()I
    //   20: pop
    //   21: aload_1
    //   22: aload_0
    //   23: invokevirtual 397	com/actionbarsherlock/internal/widget/IcsProgressBar:getPaddingLeft	()I
    //   26: aload_0
    //   27: getfield 417	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminateRealLeft	I
    //   30: iadd
    //   31: i2f
    //   32: aload_0
    //   33: invokevirtual 403	com/actionbarsherlock/internal/widget/IcsProgressBar:getPaddingTop	()I
    //   36: aload_0
    //   37: getfield 419	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminateRealTop	I
    //   40: iadd
    //   41: i2f
    //   42: invokevirtual 528	android/graphics/Canvas:translate	(FF)V
    //   45: aload_0
    //   46: invokevirtual 531	com/actionbarsherlock/internal/widget/IcsProgressBar:getDrawingTime	()J
    //   49: lstore 4
    //   51: aload_0
    //   52: getfield 533	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimation	Landroid/view/animation/AlphaAnimation;
    //   55: ifnull +79 -> 134
    //   58: aload_0
    //   59: getfield 533	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimation	Landroid/view/animation/AlphaAnimation;
    //   62: lload 4
    //   64: aload_0
    //   65: getfield 535	com/actionbarsherlock/internal/widget/IcsProgressBar:mTransformation	Landroid/view/animation/Transformation;
    //   68: invokevirtual 541	android/view/animation/AlphaAnimation:getTransformation	(JLandroid/view/animation/Transformation;)Z
    //   71: pop
    //   72: aload_0
    //   73: getfield 535	com/actionbarsherlock/internal/widget/IcsProgressBar:mTransformation	Landroid/view/animation/Transformation;
    //   76: invokevirtual 547	android/view/animation/Transformation:getAlpha	()F
    //   79: fstore_2
    //   80: aload_0
    //   81: iconst_1
    //   82: putfield 464	com/actionbarsherlock/internal/widget/IcsProgressBar:mInDrawing	Z
    //   85: aload_3
    //   86: fload_2
    //   87: ldc_w 272
    //   90: fmul
    //   91: f2i
    //   92: invokevirtual 263	android/graphics/drawable/Drawable:setLevel	(I)Z
    //   95: pop
    //   96: aload_0
    //   97: iconst_0
    //   98: putfield 464	com/actionbarsherlock/internal/widget/IcsProgressBar:mInDrawing	Z
    //   101: invokestatic 552	android/os/SystemClock:uptimeMillis	()J
    //   104: aload_0
    //   105: getfield 554	com/actionbarsherlock/internal/widget/IcsProgressBar:mLastDrawTime	J
    //   108: lsub
    //   109: aload_0
    //   110: getfield 227	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimationResolution	I
    //   113: i2l
    //   114: lcmp
    //   115: iflt +19 -> 134
    //   118: aload_0
    //   119: invokestatic 552	android/os/SystemClock:uptimeMillis	()J
    //   122: putfield 554	com/actionbarsherlock/internal/widget/IcsProgressBar:mLastDrawTime	J
    //   125: aload_0
    //   126: aload_0
    //   127: getfield 227	com/actionbarsherlock/internal/widget/IcsProgressBar:mAnimationResolution	I
    //   130: i2l
    //   131: invokevirtual 558	com/actionbarsherlock/internal/widget/IcsProgressBar:postInvalidateDelayed	(J)V
    //   134: aload_3
    //   135: aload_1
    //   136: invokevirtual 561	android/graphics/drawable/Drawable:draw	(Landroid/graphics/Canvas;)V
    //   139: aload_1
    //   140: invokevirtual 564	android/graphics/Canvas:restore	()V
    //   143: aload_0
    //   144: getfield 566	com/actionbarsherlock/internal/widget/IcsProgressBar:mShouldStartAnimationDrawable	Z
    //   147: ifeq +24 -> 171
    //   150: aload_3
    //   151: instanceof 568
    //   154: ifeq +17 -> 171
    //   157: aload_3
    //   158: checkcast 568	android/graphics/drawable/Animatable
    //   161: invokeinterface 571 1 0
    //   166: aload_0
    //   167: iconst_0
    //   168: putfield 566	com/actionbarsherlock/internal/widget/IcsProgressBar:mShouldStartAnimationDrawable	Z
    //   171: aload_0
    //   172: monitorexit
    //   173: return
    //   174: astore_1
    //   175: aload_0
    //   176: iconst_0
    //   177: putfield 464	com/actionbarsherlock/internal/widget/IcsProgressBar:mInDrawing	Z
    //   180: aload_1
    //   181: athrow
    //   182: astore_1
    //   183: aload_0
    //   184: monitorexit
    //   185: aload_1
    //   186: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	this	IcsProgressBar
    //   0	187	1	paramCanvas	android.graphics.Canvas
    //   79	8	2	f	float
    //   11	147	3	localDrawable	Drawable
    //   49	14	4	l	long
    // Exception table:
    //   from	to	target	type
    //   80	96	174	finally
    //   2	12	182	finally
    //   16	80	182	finally
    //   96	134	182	finally
    //   134	171	182	finally
    //   175	182	182	finally
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setItemCount(mMax);
    paramAccessibilityEvent.setCurrentItemIndex(mProgress);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        Drawable localDrawable = mCurrentDrawable;
        if (localDrawable != null)
        {
          j = Math.max(mMinWidth, Math.min(mMaxWidth, localDrawable.getIntrinsicWidth()));
          i = Math.max(mMinHeight, Math.min(mMaxHeight, localDrawable.getIntrinsicHeight()));
          updateDrawableState();
          j += getPaddingLeft() + getPaddingRight();
          i += getPaddingTop() + getPaddingBottom();
          if (IS_HONEYCOMB)
          {
            setMeasuredDimension(View.resolveSizeAndState(j, paramInt1, 0), View.resolveSizeAndState(i, paramInt2, 0));
            return;
          }
          setMeasuredDimension(View.resolveSize(j, paramInt1), View.resolveSize(i, paramInt2));
          continue;
        }
        int j = 0;
      }
      finally {}
    }
  }
  
  void onProgressRefresh(float paramFloat, boolean paramBoolean)
  {
    if (mAccessibilityManager.isEnabled()) {
      scheduleAccessibilityEventSender();
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (IcsProgressBar.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setProgress(progress);
    setSecondaryProgress(secondaryProgress);
  }
  
  public Parcelable onSaveInstanceState()
  {
    IcsProgressBar.SavedState localSavedState = new IcsProgressBar.SavedState(super.onSaveInstanceState());
    progress = mProgress;
    secondaryProgress = mSecondaryProgress;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    updateDrawableBounds(paramInt1, paramInt2);
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (mIndeterminate)
    {
      if ((paramInt == 8) || (paramInt == 4)) {
        stopAnimation();
      }
    }
    else {
      return;
    }
    startAnimation();
  }
  
  public void postInvalidate()
  {
    if (!mNoInvalidate) {
      super.postInvalidate();
    }
  }
  
  /* Error */
  public void setIndeterminate(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 212	com/actionbarsherlock/internal/widget/IcsProgressBar:mOnlyIndeterminate	Z
    //   6: ifeq +10 -> 16
    //   9: aload_0
    //   10: getfield 218	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   13: ifne +32 -> 45
    //   16: iload_1
    //   17: aload_0
    //   18: getfield 218	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   21: if_icmpeq +24 -> 45
    //   24: aload_0
    //   25: iload_1
    //   26: putfield 218	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminate	Z
    //   29: iload_1
    //   30: ifeq +18 -> 48
    //   33: aload_0
    //   34: aload_0
    //   35: getfield 405	com/actionbarsherlock/internal/widget/IcsProgressBar:mIndeterminateDrawable	Landroid/graphics/drawable/Drawable;
    //   38: putfield 252	com/actionbarsherlock/internal/widget/IcsProgressBar:mCurrentDrawable	Landroid/graphics/drawable/Drawable;
    //   41: aload_0
    //   42: invokevirtual 509	com/actionbarsherlock/internal/widget/IcsProgressBar:startAnimation	()V
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: aload_0
    //   49: aload_0
    //   50: getfield 421	com/actionbarsherlock/internal/widget/IcsProgressBar:mProgressDrawable	Landroid/graphics/drawable/Drawable;
    //   53: putfield 252	com/actionbarsherlock/internal/widget/IcsProgressBar:mCurrentDrawable	Landroid/graphics/drawable/Drawable;
    //   56: aload_0
    //   57: invokevirtual 513	com/actionbarsherlock/internal/widget/IcsProgressBar:stopAnimation	()V
    //   60: goto -15 -> 45
    //   63: astore_2
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_2
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	IcsProgressBar
    //   0	68	1	paramBoolean	boolean
    //   63	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	63	finally
    //   16	29	63	finally
    //   33	45	63	finally
    //   48	60	63	finally
  }
  
  public void setIndeterminateDrawable(Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    mIndeterminateDrawable = paramDrawable;
    if (mIndeterminate)
    {
      mCurrentDrawable = paramDrawable;
      postInvalidate();
    }
  }
  
  public void setInterpolator(Context paramContext, int paramInt)
  {
    setInterpolator(AnimationUtils.loadInterpolator(paramContext, paramInt));
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    mInterpolator = paramInterpolator;
  }
  
  public void setMax(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = 0;
    }
    try
    {
      if (i != mMax)
      {
        mMax = i;
        postInvalidate();
        if (mProgress > i) {
          mProgress = i;
        }
        refreshProgress(16908301, mProgress, false);
      }
      return;
    }
    finally {}
  }
  
  public void setProgress(int paramInt)
  {
    try
    {
      setProgress(paramInt, false);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void setProgress(int paramInt, boolean paramBoolean)
  {
    try
    {
      boolean bool = mIndeterminate;
      if (bool) {
        return;
      }
      if (paramInt < 0) {
        paramInt = 0;
      }
      for (;;)
      {
        int i = paramInt;
        if (paramInt > mMax) {
          i = mMax;
        }
        if (i == mProgress) {
          break;
        }
        mProgress = i;
        refreshProgress(16908301, mProgress, paramBoolean);
        break;
      }
    }
    finally {}
  }
  
  public void setProgressDrawable(Drawable paramDrawable)
  {
    if ((mProgressDrawable != null) && (paramDrawable != mProgressDrawable)) {
      mProgressDrawable.setCallback(null);
    }
    for (int i = 1;; i = 0)
    {
      if (paramDrawable != null)
      {
        paramDrawable.setCallback(this);
        int j = paramDrawable.getMinimumHeight();
        if (mMaxHeight < j)
        {
          mMaxHeight = j;
          requestLayout();
        }
      }
      mProgressDrawable = paramDrawable;
      if (!mIndeterminate)
      {
        mCurrentDrawable = paramDrawable;
        postInvalidate();
      }
      if (i != 0)
      {
        updateDrawableBounds(getWidth(), getHeight());
        updateDrawableState();
        doRefreshProgress(16908301, mProgress, false, false);
        doRefreshProgress(16908303, mSecondaryProgress, false, false);
      }
      return;
    }
  }
  
  public void setSecondaryProgress(int paramInt)
  {
    int i = 0;
    try
    {
      boolean bool = mIndeterminate;
      if (bool) {
        return;
      }
      if (paramInt < 0) {
        paramInt = i;
      }
      for (;;)
      {
        i = paramInt;
        if (paramInt > mMax) {
          i = mMax;
        }
        if (i == mSecondaryProgress) {
          break;
        }
        mSecondaryProgress = i;
        refreshProgress(16908303, mSecondaryProgress, false);
        break;
      }
    }
    finally {}
  }
  
  public void setVisibility(int paramInt)
  {
    if (getVisibility() != paramInt)
    {
      super.setVisibility(paramInt);
      if (mIndeterminate)
      {
        if ((paramInt != 8) && (paramInt != 4)) {
          break label36;
        }
        stopAnimation();
      }
    }
    return;
    label36:
    startAnimation();
  }
  
  void startAnimation()
  {
    if (getVisibility() != 0) {
      return;
    }
    if ((mIndeterminateDrawable instanceof Animatable))
    {
      mShouldStartAnimationDrawable = true;
      mAnimation = null;
    }
    for (;;)
    {
      postInvalidate();
      return;
      if (mInterpolator == null) {
        mInterpolator = new LinearInterpolator();
      }
      mTransformation = new Transformation();
      mAnimation = new AlphaAnimation(0.0F, 1.0F);
      mAnimation.setRepeatMode(mBehavior);
      mAnimation.setRepeatCount(-1);
      mAnimation.setDuration(mDuration);
      mAnimation.setInterpolator(mInterpolator);
      mAnimation.setStartTime(-1L);
    }
  }
  
  void stopAnimation()
  {
    mAnimation = null;
    mTransformation = null;
    if ((mIndeterminateDrawable instanceof Animatable))
    {
      ((Animatable)mIndeterminateDrawable).stop();
      mShouldStartAnimationDrawable = false;
    }
    postInvalidate();
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (paramDrawable == mProgressDrawable) || (paramDrawable == mIndeterminateDrawable) || (super.verifyDrawable(paramDrawable));
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsProgressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */