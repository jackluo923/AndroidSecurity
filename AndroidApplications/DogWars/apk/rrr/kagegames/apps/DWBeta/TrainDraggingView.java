package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import java.text.DecimalFormat;

public class TrainDraggingView
  extends View
{
  private static final int COLOR_CURRENT = -1426063361;
  private static final int COLOR_OTHER = -2013265920;
  private static final int COLOR_OUT_OF_BOUNDS = -1426128896;
  private static final int COLOR_TOO_SHORT = -1426063616;
  private static final int STATE_GET_SET = 2;
  private static final int STATE_GO = 3;
  private static final int STATE_ON_YOUR_MARK = 1;
  private static final int SWIPE_MIN_DISTANCE = 80;
  private static final int SWIPE_RESULT_OUT_OF_BOUNDS = 2;
  private static final int SWIPE_RESULT_SUCCESS = 0;
  private static final int SWIPE_RESULT_TOO_SHORT = 1;
  private static final String TAG = "TrainDraggingView";
  private static final String TIME_PATTERN = "00.00";
  private static float screenUnits = 0.0F;
  private int DOG_END_X_SCREEN;
  private int DOG_START_X_SCREEN;
  private float RACE_LENGTH;
  private long ROUND_LENGTH;
  private boolean bFirstTouch;
  private boolean bLastSwipeBottom;
  private Integer inArow;
  private Integer inArowRecently;
  private Activity mActivity;
  private int mCanvasHalfHeight;
  private int mCanvasHalfWidth;
  private int mCanvasHeight;
  private int mCanvasWidth;
  private float mDistance;
  private int mDogOffsetX;
  private Handler mHandler;
  private Bitmap mImgArrowOff;
  private Bitmap mImgArrowOn;
  private Bitmap mImgBackground;
  private Bitmap mImgDog;
  private Bitmap mImgScoreboard;
  private Bitmap mImgTire;
  private String mMainText;
  private Paint mPaintMainText;
  private Paint mPaintScoreHeader;
  private Paint mPaintScoreText;
  private float mScaleHeight;
  private float mScaleWidth;
  private String mScoreText;
  private SensorManager mSensorManager;
  private long mStartTime;
  private int mState;
  private String mSubText;
  private Rect mSwipe1;
  private Rect mSwipe2;
  private float mSwipeDistance;
  private int mSwipeResult;
  private Long mTimeElapsed;
  private int mTireOffsetX;
  final DecimalFormat myFormatter;
  private final float scale;
  private SoundPool soundPool;
  
  public TrainDraggingView(Context paramContext, Activity paramActivity)
  {
    super(paramContext);
    Object localObject1 = new android/graphics/Rect;
    ((Rect)localObject1).<init>();
    mSwipe1 = ((Rect)localObject1);
    localObject1 = new android/graphics/Rect;
    ((Rect)localObject1).<init>();
    mSwipe2 = ((Rect)localObject1);
    mCanvasWidth = i;
    mCanvasHeight = i;
    mCanvasHalfWidth = i;
    mCanvasHalfHeight = i;
    localObject1 = DWApplication.getAppResources();
    localObject1 = ((Resources)localObject1).getDisplayMetrics();
    float f1 = density;
    scale = f1;
    String str1 = "dummy";
    mMainText = str1;
    str1 = "";
    mSubText = str1;
    str1 = "0";
    mScoreText = str1;
    long l1 = 0L;
    Long localLong = Long.valueOf(l1);
    mTimeElapsed = localLong;
    long l2 = 15000L;
    ROUND_LENGTH = l2;
    DecimalFormat localDecimalFormat = new java/text/DecimalFormat;
    String str2 = "00.00";
    localDecimalFormat.<init>(str2);
    myFormatter = localDecimalFormat;
    float f2 = 100.0F;
    RACE_LENGTH = f2;
    Object localObject2 = "sensor";
    localObject2 = paramContext.getSystemService((String)localObject2);
    localObject2 = (SensorManager)localObject2;
    mSensorManager = ((SensorManager)localObject2);
    localObject2 = new android/os/Handler;
    ((Handler)localObject2).<init>();
    mHandler = ((Handler)localObject2);
    mActivity = paramActivity;
    localObject2 = getResources();
    int j = 2130837532;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, j);
    mImgBackground = ((Bitmap)localObject2);
    localObject2 = getResources();
    j = 2130837528;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, j);
    mImgDog = ((Bitmap)localObject2);
    localObject2 = getResources();
    j = 2130837595;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, j);
    mImgScoreboard = ((Bitmap)localObject2);
    localObject2 = getResources();
    j = 2130837506;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, j);
    mImgArrowOn = ((Bitmap)localObject2);
    localObject2 = getResources();
    j = 2130837505;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, j);
    mImgArrowOff = ((Bitmap)localObject2);
    localObject2 = getResources();
    Object localObject3 = DWApplication.getInstance();
    localObject3 = ((DWApplication)localObject3).getDWGameState();
    localObject3 = ((DWGameState)localObject3).getCurOwner();
    int k = ((DWOwner)localObject3).getDragTireResourceID();
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, k);
    mImgTire = ((Bitmap)localObject2);
    localObject2 = new android/graphics/Paint;
    ((Paint)localObject2).<init>();
    mPaintMainText = ((Paint)localObject2);
    localObject2 = mPaintMainText;
    ((Paint)localObject2).setAntiAlias(n);
    localObject2 = getContext();
    localObject2 = ((Context)localObject2).getAssets();
    String str3 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject2, str3);
    localObject2 = mPaintMainText;
    ((Paint)localObject2).setTypeface(localTypeface);
    localObject2 = mPaintMainText;
    int m = -1;
    ((Paint)localObject2).setColor(m);
    localObject2 = mPaintMainText;
    Paint.Align localAlign = Paint.Align.LEFT;
    ((Paint)localObject2).setTextAlign(localAlign);
    localObject2 = mPaintMainText;
    float f3 = 20.0F;
    float f6 = scale;
    f3 *= f6;
    ((Paint)localObject2).setTextSize(f3);
    localObject2 = new android/graphics/Paint;
    Object localObject4 = mPaintMainText;
    ((Paint)localObject2).<init>((Paint)localObject4);
    mPaintScoreHeader = ((Paint)localObject2);
    localObject2 = mPaintScoreHeader;
    localObject4 = Paint.Align.CENTER;
    ((Paint)localObject2).setTextAlign((Paint.Align)localObject4);
    localObject2 = mPaintScoreHeader;
    float f4 = 24.0F;
    f6 = scale;
    f4 *= f6;
    ((Paint)localObject2).setTextSize(f4);
    localObject2 = new android/graphics/Paint;
    Paint localPaint = mPaintScoreHeader;
    ((Paint)localObject2).<init>(localPaint);
    mPaintScoreText = ((Paint)localObject2);
    localObject2 = mPaintScoreText;
    float f5 = 28.0F;
    f6 = scale;
    f5 *= f6;
    ((Paint)localObject2).setTextSize(f5);
    mState = n;
    ResetGameVars();
    invalidate();
  }
  
  private void GameOver()
  {
    int i = 1;
    mState = i;
    Object localObject = myFormatter;
    Long localLong = mTimeElapsed;
    long l = localLong.longValue();
    float f1 = (float)l;
    float f2 = 1000.0F;
    f1 /= f2;
    double d = f1;
    localObject = ((DecimalFormat)localObject).format(d);
    mScoreText = ((String)localObject);
    localObject = new kagegames/apps/DWBeta/TrainDraggingView$SendScoreTask;
    TrainDraggingView.SendScoreTask localSendScoreTask = null;
    ((TrainDraggingView.SendScoreTask)localObject).<init>(this, localSendScoreTask);
    int j = 0;
    String[] arrayOfString = new String[j];
    ((TrainDraggingView.SendScoreTask)localObject).execute(arrayOfString);
  }
  
  public void OnDoubleTap()
  {
    int i = mState;
    int j = 1;
    if (i == j)
    {
      ResetGameVars();
      i = 2;
      mState = i;
      invalidate();
    }
  }
  
  public void ResetGameVars()
  {
    int i = 0;
    float f = 0.0F;
    mDistance = f;
    Integer localInteger = Integer.valueOf(i);
    inArow = localInteger;
    localInteger = Integer.valueOf(i);
    inArowRecently = localInteger;
    boolean bool = true;
    bFirstTouch = bool;
    bLastSwipeBottom = i;
    long l = 0L;
    Long localLong = Long.valueOf(l);
    mTimeElapsed = localLong;
  }
  
  void ScaleBitmapsToScreen()
  {
    boolean bool = true;
    float f2 = 0;
    Bitmap localBitmap1 = mImgBackground;
    int j = localBitmap1.getWidth();
    localBitmap1 = mImgBackground;
    int k = localBitmap1.getHeight();
    int i = mCanvasHeight;
    float f1 = i;
    float f3 = k;
    float f4 = f1 / f3;
    Matrix localMatrix = new android/graphics/Matrix;
    localMatrix.<init>();
    localMatrix.postScale(f4, f4);
    Bitmap localBitmap2 = mImgBackground;
    f3 = f2;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f2, f3, j, k, localMatrix, bool);
    mImgBackground = localBitmap2;
    localBitmap2 = mImgDog;
    j = localBitmap2.getWidth();
    localBitmap2 = mImgDog;
    k = localBitmap2.getHeight();
    localBitmap2 = mImgDog;
    f3 = f2;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f2, f3, j, k, localMatrix, bool);
    mImgDog = localBitmap2;
    localBitmap2 = mImgTire;
    j = localBitmap2.getWidth();
    localBitmap2 = mImgTire;
    k = localBitmap2.getHeight();
    localBitmap2 = mImgTire;
    f3 = f2;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f2, f3, j, k, localMatrix, bool);
    mImgTire = localBitmap2;
    localBitmap2 = mImgScoreboard;
    j = localBitmap2.getWidth();
    localBitmap2 = mImgScoreboard;
    k = localBitmap2.getHeight();
    localBitmap2 = mImgScoreboard;
    f3 = f2;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f2, f3, j, k, localMatrix, bool);
    mImgScoreboard = localBitmap2;
  }
  
  public void UpdateGameState(boolean paramBoolean)
  {
    int i1 = 3;
    int i2 = 0;
    int i = mState;
    int n = 2;
    if (i == n)
    {
      boolean bool1 = bFirstTouch;
      if (bool1)
      {
        long l1 = System.currentTimeMillis();
        mStartTime = l1;
        mState = i1;
        bFirstTouch = i2;
      }
    }
    int j = mState;
    if (j != i1) {
      return;
    }
    long l2 = System.currentTimeMillis();
    long l3 = mStartTime;
    l2 -= l3;
    Long localLong = Long.valueOf(l2);
    mTimeElapsed = localLong;
    int k = mSwipeResult;
    switch (k)
    {
    }
    for (;;)
    {
      if (paramBoolean)
      {
        f1 = mDistance;
        f2 = 2.0F;
        f1 += f2;
        mDistance = f1;
      }
      float f1 = mDistance;
      float f2 = RACE_LENGTH;
      boolean bool2 = f1 < f2;
      if (!bool2) {
        GameOver();
      }
      invalidate();
      break;
      Integer localInteger1 = inArow;
      int m = localInteger1.intValue();
      m += 1;
      Integer localInteger2 = Integer.valueOf(m);
      inArow = localInteger2;
      swap();
      continue;
      localInteger2 = Integer.valueOf(i2);
      inArow = localInteger2;
      continue;
      localInteger2 = Integer.valueOf(i2);
      inArow = localInteger2;
    }
  }
  
  public void UpdateUI()
  {
    int i = mState;
    int j = 3;
    if (i != j) {
      return;
    }
    boolean bool1 = bFirstTouch;
    if (bool1)
    {
      long l1 = System.currentTimeMillis();
      mStartTime = l1;
      boolean bool2 = false;
      bFirstTouch = bool2;
    }
    for (;;)
    {
      invalidate();
      break;
      long l2 = System.currentTimeMillis();
      long l3 = mStartTime;
      l2 -= l3;
      Long localLong = Long.valueOf(l2);
      mTimeElapsed = localLong;
    }
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    float f28 = 70.0F;
    float f27 = 10.0F;
    float f1 = 0.0F;
    Paint localPaint4 = null;
    Bitmap localBitmap1 = mImgBackground;
    paramCanvas.drawBitmap(localBitmap1, f1, f1, localPaint4);
    boolean bool = bLastSwipeBottom;
    Object localObject;
    if (bool)
    {
      Bitmap localBitmap2 = mImgArrowOn;
      Rect localRect1 = mSwipe1;
      int m = left;
      float f2 = m;
      Rect localRect5 = mSwipe1;
      int i7 = top;
      float f11 = i7;
      paramCanvas.drawBitmap(localBitmap2, f2, f11, localPaint4);
      localBitmap2 = mImgArrowOff;
      Rect localRect2 = mSwipe2;
      int n = left;
      float f3 = n;
      Rect localRect6 = mSwipe2;
      int i8 = top;
      float f12 = i8;
      paramCanvas.drawBitmap(localBitmap2, f3, f12, localPaint4);
      int i = mState;
      int i1 = 1;
      if (i != i1) {
        break label738;
      }
      localObject = "Double Tap screen when ready...";
      mMainText = ((String)localObject);
    }
    for (;;)
    {
      localObject = mImgScoreboard;
      float f4 = scale;
      f4 *= f27;
      int i9 = mCanvasHalfHeight;
      Bitmap localBitmap5 = mImgScoreboard;
      int i18 = localBitmap5.getHeight();
      i18 /= 2;
      i9 -= i18;
      float f13 = i9;
      paramCanvas.drawBitmap((Bitmap)localObject, f4, f13, localPaint4);
      localObject = mMainText;
      f4 = scale;
      f4 *= f27;
      f13 = 20.0F;
      float f22 = scale;
      f13 *= f22;
      Paint localPaint1 = mPaintMainText;
      paramCanvas.drawText((String)localObject, f4, f13, localPaint1);
      localObject = "Time";
      f4 = scale;
      f4 *= f28;
      int i10 = mCanvasHalfHeight;
      float f14 = i10;
      float f23 = 4.0F;
      f27 = scale;
      f23 *= f27;
      f14 -= f23;
      Paint localPaint2 = mPaintScoreHeader;
      paramCanvas.drawText((String)localObject, f4, f14, localPaint2);
      localObject = myFormatter;
      Long localLong = mTimeElapsed;
      long l = localLong.longValue();
      float f5 = (float)l;
      f14 = 1000.0F;
      f5 /= f14;
      double d = f5;
      localObject = ((DecimalFormat)localObject).format(d);
      float f6 = scale;
      f6 *= f28;
      int i11 = mCanvasHalfHeight;
      float f15 = i11;
      float f24 = 24.0F;
      f27 = scale;
      f24 *= f27;
      f15 += f24;
      Paint localPaint3 = mPaintScoreText;
      paramCanvas.drawText((String)localObject, f6, f15, localPaint3);
      localObject = mImgDog;
      int i2 = DOG_START_X_SCREEN;
      float f7 = i2;
      f15 = mDistance;
      float f25 = screenUnits;
      f15 *= f25;
      f7 -= f15;
      int i12 = mCanvasHeight;
      Bitmap localBitmap6 = mImgDog;
      int i19 = localBitmap6.getHeight();
      i12 -= i19;
      float f16 = i12;
      paramCanvas.drawBitmap((Bitmap)localObject, f7, f16, localPaint4);
      localObject = mImgTire;
      int i3 = DOG_START_X_SCREEN;
      float f8 = i3;
      f16 = mDistance;
      float f26 = screenUnits;
      f16 *= f26;
      f8 -= f16;
      Bitmap localBitmap3 = mImgDog;
      int i13 = localBitmap3.getWidth();
      float f17 = i13;
      f8 += f17;
      Bitmap localBitmap4 = mImgTire;
      int i14 = localBitmap4.getWidth();
      float f18 = i14;
      f26 = 0.3F;
      f18 *= f26;
      f8 -= f18;
      int i15 = mCanvasHeight;
      Bitmap localBitmap7 = mImgTire;
      int i20 = localBitmap7.getHeight();
      i15 -= i20;
      float f19 = i15;
      paramCanvas.drawBitmap((Bitmap)localObject, f8, f19, localPaint4);
      super.onDraw(paramCanvas);
      UpdateUI();
      return;
      localObject = mImgArrowOff;
      Rect localRect3 = mSwipe1;
      int i4 = left;
      float f9 = i4;
      Rect localRect7 = mSwipe1;
      int i16 = top;
      float f20 = i16;
      paramCanvas.drawBitmap((Bitmap)localObject, f9, f20, localPaint4);
      localObject = mImgArrowOn;
      Rect localRect4 = mSwipe2;
      int i5 = left;
      float f10 = i5;
      Rect localRect8 = mSwipe2;
      int i17 = top;
      float f21 = i17;
      paramCanvas.drawBitmap((Bitmap)localObject, f10, f21, localPaint4);
      break;
      label738:
      int j = mState;
      int i6 = 2;
      if (j == i6)
      {
        String str1 = "Swipe glowing arrow to Start...";
        mMainText = str1;
      }
      else
      {
        int k = mState;
        i6 = 3;
        if (k == i6)
        {
          String str2 = "DRAG!!!";
          mMainText = str2;
        }
      }
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    mCanvasWidth = paramInt1;
    mCanvasHeight = paramInt2;
    int i = paramInt1 / 2;
    mCanvasHalfWidth = i;
    i = paramInt2 / 2;
    mCanvasHalfHeight = i;
    ScaleBitmapsToScreen();
    i = mCanvasWidth;
    Bitmap localBitmap2 = mImgDog;
    int i1 = localBitmap2.getWidth();
    i -= i1;
    i1 = mDogOffsetX;
    i += i1;
    DOG_START_X_SCREEN = i;
    i = 0;
    DOG_END_X_SCREEN = i;
    i = DOG_START_X_SCREEN;
    i1 = DOG_END_X_SCREEN;
    i -= i1;
    float f1 = i;
    float f2 = RACE_LENGTH;
    f1 /= f2;
    screenUnits = f1;
    int j = mCanvasWidth;
    double d1 = j;
    double d3 = 0.1D;
    d1 *= d3;
    int k = (int)d1;
    mDogOffsetX = k;
    Bitmap localBitmap1 = mImgDog;
    int m = localBitmap1.getWidth();
    double d2 = m;
    d3 = 0.2D;
    d2 *= d3;
    int n = (int)d2;
    mTireOffsetX = n;
    Rect localRect1 = mSwipe1;
    Bitmap localBitmap3 = mImgScoreboard;
    int i2 = localBitmap3.getWidth();
    int i9 = mCanvasWidth;
    Bitmap localBitmap11 = mImgScoreboard;
    int i16 = localBitmap11.getWidth();
    i9 -= i16;
    i9 /= 2;
    i2 += i9;
    Bitmap localBitmap5 = mImgArrowOn;
    int i10 = localBitmap5.getWidth();
    i10 /= 2;
    i2 -= i10;
    left = i2;
    localRect1 = mSwipe1;
    i2 = 5;
    top = i2;
    localRect1 = mSwipe1;
    Rect localRect2 = mSwipe1;
    int i3 = left;
    Bitmap localBitmap6 = mImgArrowOn;
    int i11 = localBitmap6.getWidth();
    i3 += i11;
    right = i3;
    localRect1 = mSwipe1;
    Rect localRect3 = mSwipe1;
    int i4 = bottom;
    Bitmap localBitmap7 = mImgArrowOn;
    int i12 = localBitmap7.getHeight();
    i4 += i12;
    bottom = i4;
    localRect1 = mSwipe2;
    Bitmap localBitmap4 = mImgScoreboard;
    int i5 = localBitmap4.getWidth();
    i12 = mCanvasWidth;
    Bitmap localBitmap12 = mImgScoreboard;
    int i17 = localBitmap12.getWidth();
    i12 -= i17;
    i12 /= 2;
    i5 += i12;
    Bitmap localBitmap8 = mImgArrowOn;
    int i13 = localBitmap8.getWidth();
    i13 /= 2;
    i5 -= i13;
    left = i5;
    localRect1 = mSwipe2;
    Rect localRect4 = mSwipe1;
    int i6 = bottom;
    i6 += 5;
    top = i6;
    localRect1 = mSwipe2;
    Rect localRect5 = mSwipe1;
    int i7 = left;
    Bitmap localBitmap9 = mImgArrowOn;
    int i14 = localBitmap9.getWidth();
    i7 += i14;
    right = i7;
    localRect1 = mSwipe2;
    Rect localRect6 = mSwipe1;
    int i8 = bottom;
    Bitmap localBitmap10 = mImgArrowOn;
    int i15 = localBitmap10.getHeight();
    i8 += i15;
    bottom = i8;
  }
  
  public void playLoudGrowl()
  {
    int m = 1;
    int i1 = 0;
    Context localContext = getContext();
    String str2 = "audio";
    Object localObject2 = localContext.getSystemService(str2);
    localObject2 = (AudioManager)localObject2;
    int i = 3;
    int i2 = ((AudioManager)localObject2).getStreamVolume(i);
    SoundPool localSoundPool = soundPool;
    float f1 = i2;
    float f2 = i2;
    float f3 = 1.0F;
    int n = m;
    int j = localSoundPool.play(m, f1, f2, n, i1, f3);
    if (j == 0)
    {
      Object localObject1 = "TrainDraggingView";
      String str1 = "SoundPool.play() failed to play in PlaySound()";
      Log.d((String)localObject1, str1);
      localObject1 = getContext();
      str1 = "could not play sound";
      Toast localToast = Toast.makeText((Context)localObject1, str1, i1);
      int k = 17;
      localToast.setGravity(k, i1, i1);
      localToast.show();
    }
  }
  
  public void registerListener()
  {
    int m = 1;
    SoundPool localSoundPool = soundPool;
    if (localSoundPool != null)
    {
      localSoundPool = soundPool;
      localSoundPool.release();
      localSoundPool = null;
      soundPool = localSoundPool;
    }
    localSoundPool = new android/media/SoundPool;
    int i = 2;
    int j = 3;
    int k = 0;
    localSoundPool.<init>(i, j, k);
    soundPool = localSoundPool;
    localSoundPool = soundPool;
    Context localContext = getContext();
    j = 2131034112;
    localSoundPool.load(localContext, j, m);
    localSoundPool = soundPool;
    localContext = getContext();
    j = 2131034113;
    localSoundPool.load(localContext, j, m);
  }
  
  private void swap()
  {
    boolean bool = bLastSwipeBottom;
    if (bool) {
      bool = false;
    }
    for (bLastSwipeBottom = bool;; bLastSwipeBottom = bool)
    {
      return;
      bool = true;
    }
  }
  
  public void unregisterListener()
  {
    SoundPool localSoundPool = soundPool;
    localSoundPool.release();
    localSoundPool = null;
    soundPool = localSoundPool;
  }
  
  boolean validateSwipe(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2)
  {
    i3 = 2;
    float f11 = 80.0F;
    bool4 = true;
    i2 = 0;
    String str1 = "GestureDetector";
    Object localObject = new java/lang/StringBuilder;
    String str2 = "e1.x=";
    ((StringBuilder)localObject).<init>(str2);
    float f5 = paramMotionEvent1.getX();
    String str3 = Float.toString(f5);
    localObject = ((StringBuilder)localObject).append(str3);
    str3 = "e1.y=";
    localObject = ((StringBuilder)localObject).append(str3);
    float f6 = paramMotionEvent1.getY();
    String str4 = Float.toString(f6);
    localObject = ((StringBuilder)localObject).append(str4);
    str4 = "e2.x=";
    localObject = ((StringBuilder)localObject).append(str4);
    float f7 = paramMotionEvent2.getX();
    String str5 = Float.toString(f7);
    localObject = ((StringBuilder)localObject).append(str5);
    str5 = "e2.y=";
    localObject = ((StringBuilder)localObject).append(str5);
    float f8 = paramMotionEvent2.getY();
    String str6 = Float.toString(f8);
    localObject = ((StringBuilder)localObject).append(str6);
    localObject = ((StringBuilder)localObject).toString();
    Log.d(str1, (String)localObject);
    for (;;)
    {
      try
      {
        float f1 = paramMotionEvent1.getX();
        f3 = paramMotionEvent2.getX();
        f1 -= f3;
        i = f1 < f11;
        if (i <= 0) {
          continue;
        }
        i = 1;
        mSwipeResult = i;
        i = i2;
      }
      catch (Exception localException)
      {
        int i;
        float f2;
        int j;
        boolean bool1 = bLastSwipeBottom;
        if (!bool1) {
          continue;
        }
        Rect localRect1 = mSwipe1;
        float f3 = paramMotionEvent1.getX();
        int k = (int)f3;
        float f9 = paramMotionEvent1.getY();
        int n = (int)f9;
        boolean bool2 = localRect1.contains(k, n);
        if (!bool2) {
          continue;
        }
        mSwipeResult = i2;
        bool2 = bool4;
        continue;
        mSwipeResult = i3;
        bool2 = i2;
        continue;
        Rect localRect2 = mSwipe2;
        float f4 = paramMotionEvent1.getX();
        int m = (int)f4;
        float f10 = paramMotionEvent1.getY();
        int i1 = (int)f10;
        boolean bool3 = localRect2.contains(m, i1);
        if (!bool3) {
          continue;
        }
        mSwipeResult = i2;
        bool3 = bool4;
        continue;
        mSwipeResult = i3;
        bool3 = i2;
        continue;
      }
      return i;
      f2 = paramMotionEvent2.getX();
      f3 = paramMotionEvent1.getX();
      f2 -= f3;
      j = f2 < f11;
      if (j >= 0) {
        continue;
      }
      j = 1;
      mSwipeResult = j;
      j = i2;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainDraggingView
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */