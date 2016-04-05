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
import android.graphics.Paint.Style;
import android.graphics.Typeface;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import java.util.Random;

public class TrainBitingView
  extends View
{
  private static final float AIM_ACCELEROMETER_THRESHOLD = 0.5F;
  private static final int ANIMATION_SPEED = 500;
  private static float[] NORM_ACCEL;
  private static final float PULL_ACCELEROMETER_THRESHOLD = 2.0F;
  private static final int SHAKE_MAG_MAX = 15;
  private static final int STATE_BALANCING = 2;
  private static final int STATE_INIT = 1;
  private static final int STATE_PULLING = 3;
  private static final int STATE_ROPE_BROKE = 5;
  private static final int STATE_ROUND_OVER = 4;
  private static int TARGET_RADIUS = 0;
  private static long mLastDrawTime = 0L;
  private long ROUND_LENGTH;
  private boolean bFirstMeasure;
  private boolean bFirstPullSensed;
  private boolean bInTarget;
  int counter;
  private Float[] mAccelDelta;
  private Activity mActivity;
  private int mCanvasHalfHeight;
  private int mCanvasHalfWidth;
  private int mCanvasHeight;
  private int mCanvasWidth;
  private Float[] mCurAccel;
  private int mCurOffsetX;
  private int mCurOffsetY;
  private int mDogFrameIndex;
  private int mDogStartLeft;
  private int mDogStartTop;
  private int mDogTargetOffsetX;
  private int mDogTargetOffsetY;
  private Handler mHandler;
  private Bitmap mImgDog1;
  private Bitmap mImgDog2;
  private Bitmap mImgDog3;
  private Bitmap mImgDog4;
  private Bitmap mImgDog5;
  private Bitmap mImgPanBackground;
  private Bitmap mImgRope;
  private Bitmap mImgRopeOrig;
  private float mLastPullMag;
  private String mMainText;
  private Paint mPaintBlackStroke;
  private Paint mPaintMainText;
  private Paint mPaintRed;
  private Paint mPaintRedStroke;
  private Paint mPaintScoreHeader;
  private Paint mPaintScoreText;
  private Float[] mPrevAccel;
  private int mPullLagOffsetX;
  private int mPullLagOffsetY;
  private Float mPullMagDelta;
  private float mScaleHeight;
  private float mScaleWidth;
  private Integer mScore;
  private String mScoreText;
  private final SensorListener mSensorAccelerometer;
  private SensorManager mSensorManager;
  private int mShakeX;
  private int mShakeY;
  private long mStartTime;
  private int mState;
  private String mSubText;
  private Float[] mTargetAccel;
  private int mTargetOffsetX;
  private int mTargetOffsetY;
  private int mTargetZeroX;
  private int mTargetZeroY;
  private Long mTimeElapsed;
  private SoundPool soundPool;
  
  static
  {
    int i = 3;
    float[] arrayOfFloat = new float[i];
    arrayOfFloat[0] = 0.0F;
    arrayOfFloat[1] = -5.5F;
    arrayOfFloat[2] = -6.5F;
    NORM_ACCEL = arrayOfFloat;
    int j = 25;
    TARGET_RADIUS = j;
    long l = 0L;
    mLastDrawTime = l;
  }
  
  public TrainBitingView(Context paramContext, Activity paramActivity)
  {
    super(paramContext);
    Object localObject1 = "dummy";
    mMainText = ((String)localObject1);
    localObject1 = "";
    mSubText = ((String)localObject1);
    localObject1 = "0";
    mScoreText = ((String)localObject1);
    localObject1 = new Float[i2];
    Float localFloat = Float.valueOf(f5);
    localObject1[m] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[n] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[i1] = localFloat;
    mTargetAccel = ((Float[])localObject1);
    localObject1 = new Float[i2];
    localFloat = Float.valueOf(f5);
    localObject1[m] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[n] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[i1] = localFloat;
    mCurAccel = ((Float[])localObject1);
    localObject1 = new Float[i2];
    localFloat = Float.valueOf(f5);
    localObject1[m] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[n] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[i1] = localFloat;
    mPrevAccel = ((Float[])localObject1);
    localObject1 = new Float[i2];
    localFloat = Float.valueOf(f5);
    localObject1[m] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[n] = localFloat;
    localFloat = Float.valueOf(f5);
    localObject1[i1] = localFloat;
    mAccelDelta = ((Float[])localObject1);
    localObject1 = Float.valueOf(f5);
    mPullMagDelta = ((Float)localObject1);
    localObject1 = Integer.valueOf(m);
    mScore = ((Integer)localObject1);
    long l = 15000L;
    ROUND_LENGTH = l;
    mCanvasWidth = m;
    mCanvasHeight = m;
    mCanvasHalfWidth = m;
    mCanvasHalfHeight = m;
    mTargetZeroX = m;
    mTargetZeroY = m;
    mDogTargetOffsetX = m;
    mDogTargetOffsetY = m;
    mDogStartLeft = m;
    mDogStartTop = m;
    mTargetOffsetX = m;
    mTargetOffsetY = m;
    mCurOffsetX = m;
    mCurOffsetY = m;
    mPullLagOffsetX = m;
    mPullLagOffsetY = m;
    mDogFrameIndex = m;
    counter = m;
    Object localObject2 = new kagegames/apps/DWBeta/TrainBitingView$1;
    ((TrainBitingView.1)localObject2).<init>(this);
    mSensorAccelerometer = ((SensorListener)localObject2);
    localObject2 = "sensor";
    localObject2 = paramContext.getSystemService((String)localObject2);
    localObject2 = (SensorManager)localObject2;
    mSensorManager = ((SensorManager)localObject2);
    localObject2 = new android/os/Handler;
    ((Handler)localObject2).<init>();
    mHandler = ((Handler)localObject2);
    mActivity = paramActivity;
    localObject2 = getResources();
    int i = 2130837610;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgPanBackground = ((Bitmap)localObject2);
    localObject2 = getResources();
    i = 2130837605;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgDog1 = ((Bitmap)localObject2);
    localObject2 = getResources();
    i = 2130837606;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgDog2 = ((Bitmap)localObject2);
    localObject2 = getResources();
    i = 2130837607;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgDog3 = ((Bitmap)localObject2);
    localObject2 = getResources();
    i = 2130837608;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgDog4 = ((Bitmap)localObject2);
    localObject2 = getResources();
    i = 2130837609;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgDog5 = ((Bitmap)localObject2);
    localObject2 = getResources();
    i = 2130837611;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgRopeOrig = ((Bitmap)localObject2);
    localObject2 = getResources();
    i = 2130837611;
    localObject2 = BitmapFactory.decodeResource((Resources)localObject2, i);
    mImgRope = ((Bitmap)localObject2);
    localObject2 = new android/graphics/Paint;
    ((Paint)localObject2).<init>();
    mPaintMainText = ((Paint)localObject2);
    localObject2 = mPaintMainText;
    ((Paint)localObject2).setAntiAlias(n);
    localObject2 = mPaintMainText;
    i = -1;
    ((Paint)localObject2).setColor(i);
    localObject2 = mPaintMainText;
    Paint.Align localAlign = Paint.Align.LEFT;
    ((Paint)localObject2).setTextAlign(localAlign);
    localObject2 = mPaintMainText;
    float f1 = 35.0F;
    ((Paint)localObject2).setTextSize(f1);
    localObject2 = getContext();
    localObject2 = ((Context)localObject2).getAssets();
    Object localObject3 = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject2, (String)localObject3);
    localObject2 = mPaintMainText;
    ((Paint)localObject2).setTypeface(localTypeface);
    localObject2 = new android/graphics/Paint;
    localObject3 = mPaintMainText;
    ((Paint)localObject2).<init>((Paint)localObject3);
    mPaintScoreText = ((Paint)localObject2);
    localObject2 = mPaintScoreText;
    localObject3 = Paint.Align.CENTER;
    ((Paint)localObject2).setTextAlign((Paint.Align)localObject3);
    localObject2 = mPaintScoreText;
    float f2 = 45.0F;
    ((Paint)localObject2).setTextSize(f2);
    localObject2 = new android/graphics/Paint;
    Paint localPaint1 = mPaintScoreText;
    ((Paint)localObject2).<init>(localPaint1);
    mPaintScoreHeader = ((Paint)localObject2);
    localObject2 = mPaintScoreHeader;
    float f3 = 28.0F;
    ((Paint)localObject2).setTextSize(f3);
    localObject2 = new android/graphics/Paint;
    ((Paint)localObject2).<init>();
    mPaintRed = ((Paint)localObject2);
    localObject2 = mPaintRed;
    ((Paint)localObject2).setAntiAlias(n);
    localObject2 = mPaintRed;
    int j = -65536;
    ((Paint)localObject2).setColor(j);
    localObject2 = new android/graphics/Paint;
    Object localObject4 = mPaintRed;
    ((Paint)localObject2).<init>((Paint)localObject4);
    mPaintRedStroke = ((Paint)localObject2);
    localObject2 = mPaintRedStroke;
    localObject4 = Paint.Style.STROKE;
    ((Paint)localObject2).setStyle((Paint.Style)localObject4);
    localObject2 = mPaintRedStroke;
    float f4 = 3.0F;
    ((Paint)localObject2).setStrokeWidth(f4);
    localObject2 = new android/graphics/Paint;
    Paint localPaint2 = mPaintRedStroke;
    ((Paint)localObject2).<init>(localPaint2);
    mPaintBlackStroke = ((Paint)localObject2);
    localObject2 = mPaintBlackStroke;
    int k = -16777216;
    ((Paint)localObject2).setColor(k);
    mState = n;
  }
  
  private void ResetRound()
  {
    stopSteadyGrowl();
    boolean bool2 = true;
    boolean bool1 = bool2;
    TrainBitingView localTrainBitingView2 = this;
    bFirstPullSensed = bool1;
    bool2 = false;
    bool1 = bool2;
    localTrainBitingView2 = this;
    bInTarget = bool1;
    long l2 = System.currentTimeMillis();
    Random localRandom = new java/util/Random;
    Object localObject1 = localRandom;
    long l1 = l2;
    ((Random)localObject1).<init>(l1);
    float f2 = -2.5F;
    float f6 = localRandom.nextFloat();
    float f10 = 5.0F;
    f6 *= f10;
    float f16 = f2 + f6;
    f2 = -3.0F;
    f6 = localRandom.nextFloat();
    f10 = 5.0F;
    f6 *= f10;
    float f17 = f2 - f6;
    localObject1 = this;
    localObject1 = mTargetAccel;
    Object localObject4 = localObject1;
    int n = 0;
    float[] arrayOfFloat = NORM_ACCEL;
    int i5 = 0;
    float f11 = arrayOfFloat[i5];
    f11 = f16 - f11;
    Object localObject8 = Float.valueOf(f11);
    localObject4[n] = localObject8;
    localObject1 = this;
    localObject1 = mTargetAccel;
    localObject4 = localObject1;
    n = 1;
    localObject8 = NORM_ACCEL;
    i5 = 1;
    float f12 = localObject8[i5];
    f12 = f17 - f12;
    Object localObject9 = Float.valueOf(f12);
    localObject4[n] = localObject9;
    localObject1 = this;
    localObject1 = mTargetAccel;
    localObject4 = localObject1;
    n = 2;
    localObject9 = NORM_ACCEL;
    i5 = 2;
    float f13 = localObject9[i5];
    Float localFloat = Float.valueOf(f13);
    localObject4[n] = localFloat;
    localObject1 = this;
    localObject1 = mTargetAccel;
    localObject4 = localObject1;
    n = 0;
    localObject4 = localObject4[n];
    float f3 = ((Float)localObject4).floatValue();
    float f7 = 80.0F;
    f3 *= f7;
    int k = (int)f3;
    localObject1 = k;
    TrainBitingView localTrainBitingView3 = this;
    mTargetOffsetX = localObject1;
    localObject1 = this;
    localObject1 = mTargetAccel;
    Object localObject5 = localObject1;
    int i1 = 1;
    localObject5 = localObject5[i1];
    float f4 = ((Float)localObject5).floatValue();
    float f8 = 15.0F;
    f4 *= f8;
    int m = (int)f4;
    localObject1 = m;
    localTrainBitingView3 = this;
    mTargetOffsetY = localObject1;
    localObject1 = this;
    int i = mTargetOffsetX;
    m = i;
    double d2;
    if (m != 0)
    {
      TrainBitingView localTrainBitingView1 = this;
      int j = mTargetOffsetX;
      m = j;
      float f5 = m;
      Object localObject2 = this;
      localObject2 = mImgRopeOrig;
      Object localObject7 = localObject2;
      int i2 = ((Bitmap)localObject7).getHeight();
      float f9 = i2;
      float f14 = 2.0F;
      f9 /= f14;
      float f18 = f5 / f9;
      float f1 = f18;
      double d1 = f1;
      d2 = d1;
    }
    for (double d4 = Math.atan(d2);; d4 = 0.0D)
    {
      d2 = 180.0D;
      d2 *= d4;
      double d3 = 3.14159D;
      d2 /= d3;
      float f15 = (float)d2;
      Matrix localMatrix = new android/graphics/Matrix;
      localMatrix.<init>();
      localMatrix.postRotate(f15);
      Object localObject3 = this;
      localObject3 = mImgRopeOrig;
      Object localObject6 = localObject3;
      int i3 = 0;
      int i4 = 0;
      localObject3 = this;
      localObject3 = mImgRopeOrig;
      Object localObject10 = localObject3;
      int i6 = ((Bitmap)localObject10).getWidth();
      localObject3 = this;
      localObject3 = mImgRopeOrig;
      Object localObject11 = localObject3;
      int i7 = ((Bitmap)localObject11).getHeight();
      boolean bool3 = true;
      localObject6 = Bitmap.createBitmap((Bitmap)localObject6, i3, i4, i6, i7, localMatrix, bool3);
      localObject3 = localObject6;
      localTrainBitingView3 = this;
      mImgRope = ((Bitmap)localObject3);
      return;
    }
  }
  
  void ScaleBitmapsToScreen()
  {
    boolean bool = true;
    float f3 = 0;
    Bitmap localBitmap1 = mImgPanBackground;
    int i4 = localBitmap1.getWidth();
    localBitmap1 = mImgPanBackground;
    int i5 = localBitmap1.getHeight();
    int i = mCanvasWidth;
    float f1 = i;
    float f4 = i4;
    float f6 = f1 / f4;
    int j = mCanvasHeight;
    float f2 = j;
    f4 = i5;
    float f5 = f2 / f4;
    Matrix localMatrix = new android/graphics/Matrix;
    localMatrix.<init>();
    localMatrix.postScale(f6, f5);
    Bitmap localBitmap2 = mImgPanBackground;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgPanBackground = localBitmap2;
    localBitmap2 = mImgDog1;
    i4 = localBitmap2.getWidth();
    localBitmap2 = mImgDog1;
    i5 = localBitmap2.getHeight();
    localBitmap2 = mImgDog1;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgDog1 = localBitmap2;
    localBitmap2 = mImgDog2;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgDog2 = localBitmap2;
    localBitmap2 = mImgDog3;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgDog3 = localBitmap2;
    localBitmap2 = mImgDog4;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgDog4 = localBitmap2;
    localBitmap2 = mImgDog5;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgDog5 = localBitmap2;
    localBitmap2 = mImgRopeOrig;
    i4 = localBitmap2.getWidth();
    localBitmap2 = mImgRopeOrig;
    i5 = localBitmap2.getHeight();
    localBitmap2 = mImgRopeOrig;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgRopeOrig = localBitmap2;
    localBitmap2 = mImgRope;
    i4 = localBitmap2.getWidth();
    localBitmap2 = mImgRope;
    i5 = localBitmap2.getHeight();
    localBitmap2 = mImgRope;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, i4, i5, localMatrix, bool);
    mImgRope = localBitmap2;
    localBitmap2 = mImgDog1;
    int k = localBitmap2.getWidth();
    double d1 = k;
    double d3 = 0.48D;
    d1 *= d3;
    int m = (int)d1;
    mDogTargetOffsetX = m;
    Bitmap localBitmap3 = mImgDog1;
    int n = localBitmap3.getHeight();
    double d2 = n;
    d3 = 0.43D;
    d2 *= d3;
    int i1 = (int)d2;
    mDogTargetOffsetY = i1;
    i1 = mCanvasHalfWidth;
    Bitmap localBitmap4 = mImgDog1;
    int i2 = localBitmap4.getWidth();
    i2 /= 2;
    i1 -= i2;
    mDogStartLeft = i1;
    i1 = mCanvasHeight;
    Bitmap localBitmap5 = mImgDog1;
    int i3 = localBitmap5.getHeight();
    i1 -= i3;
    i1 += 30;
    mDogStartTop = i1;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    int i22 = 15;
    float f23 = 170.0F;
    float f3 = 0.0F;
    Paint localPaint5 = null;
    Bitmap localBitmap1 = mImgPanBackground;
    paramCanvas.drawBitmap(localBitmap1, f3, f3, localPaint5);
    long l3 = System.currentTimeMillis();
    Random localRandom = new java/util/Random;
    localRandom.<init>(l3);
    long l1 = mLastDrawTime;
    long l2 = 500L;
    l1 += l2;
    boolean bool1 = l3 < l1;
    if (bool1)
    {
      i = 5;
      i = localRandom.nextInt(i);
      mDogFrameIndex = i;
      mLastDrawTime = l3;
      i = localRandom.nextInt(i22);
      mShakeX = i;
      i = localRandom.nextInt(i22);
      mShakeY = i;
    }
    int i = mDogFrameIndex;
    int i25;
    int i26;
    int i23;
    int i24;
    int i4;
    Object localObject;
    switch (i)
    {
    default: 
      i = mDogStartLeft;
      int i2 = mDogTargetOffsetX;
      i += i2;
      i2 = mTargetOffsetX;
      i25 = i + i2;
      i = mDogStartTop;
      i2 = mDogTargetOffsetY;
      i += i2;
      i2 = mTargetOffsetY;
      i26 = i + i2;
      i = mDogStartLeft;
      i2 = mDogTargetOffsetX;
      i += i2;
      i2 = mCurOffsetX;
      i += i2;
      i2 = mShakeX;
      i23 = i + i2;
      i = mDogStartTop;
      i2 = mDogTargetOffsetY;
      i += i2;
      i2 = mCurOffsetY;
      i += i2;
      i2 = mShakeY;
      i24 = i + i2;
      Bitmap localBitmap2 = mImgRope;
      Bitmap localBitmap3 = mImgRope;
      int i3 = localBitmap3.getWidth();
      i3 /= 2;
      i3 = i25 - i3;
      float f4 = i3;
      Bitmap localBitmap4 = mImgRope;
      int i12 = localBitmap4.getHeight();
      i12 /= 2;
      i12 = i26 - i12;
      float f12 = i12;
      paramCanvas.drawBitmap(localBitmap2, f4, f12, localPaint5);
      int j = mState;
      i4 = 1;
      if (j == i4)
      {
        localObject = "Tap Screen to Begin.";
        mMainText = ((String)localObject);
      }
      break;
    }
    for (;;)
    {
      localObject = mMainText;
      i4 = mCanvasHalfWidth;
      int i13 = 95;
      i4 -= i13;
      float f5 = i4;
      float f13 = 90.0F;
      Paint localPaint2 = mPaintMainText;
      paramCanvas.drawText((String)localObject, f5, f13, localPaint2);
      localObject = "Score";
      f5 = 50.0F;
      Paint localPaint1 = mPaintScoreHeader;
      paramCanvas.drawText((String)localObject, f23, f5, localPaint1);
      localObject = mScore;
      localObject = ((Integer)localObject).toString();
      f5 = 100.0F;
      localPaint1 = mPaintScoreText;
      paramCanvas.drawText((String)localObject, f23, f5, localPaint1);
      super.onDraw(paramCanvas);
      return;
      localObject = mImgDog1;
      int i5 = mDogStartLeft;
      int i14 = mTargetOffsetX;
      i5 += i14;
      float f6 = i5;
      i14 = mDogStartTop;
      int i21 = mTargetOffsetY;
      i14 += i21;
      float f14 = i14;
      paramCanvas.drawBitmap((Bitmap)localObject, f6, f14, localPaint5);
      break;
      localObject = mImgDog2;
      int i6 = mDogStartLeft;
      int i15 = mTargetOffsetX;
      i6 += i15;
      float f7 = i6;
      i15 = mDogStartTop;
      i21 = mTargetOffsetY;
      i15 += i21;
      float f15 = i15;
      paramCanvas.drawBitmap((Bitmap)localObject, f7, f15, localPaint5);
      break;
      localObject = mImgDog3;
      int i7 = mDogStartLeft;
      int i16 = mTargetOffsetX;
      i7 += i16;
      float f8 = i7;
      i16 = mDogStartTop;
      i21 = mTargetOffsetY;
      i16 += i21;
      float f16 = i16;
      paramCanvas.drawBitmap((Bitmap)localObject, f8, f16, localPaint5);
      break;
      localObject = mImgDog4;
      int i8 = mDogStartLeft;
      int i17 = mTargetOffsetX;
      i8 += i17;
      float f9 = i8;
      i17 = mDogStartTop;
      i21 = mTargetOffsetY;
      i17 += i21;
      float f17 = i17;
      paramCanvas.drawBitmap((Bitmap)localObject, f9, f17, localPaint5);
      break;
      localObject = mImgDog5;
      int i9 = mDogStartLeft;
      int i18 = mTargetOffsetX;
      i9 += i18;
      float f10 = i9;
      i18 = mDogStartTop;
      i21 = mTargetOffsetY;
      i18 += i21;
      float f18 = i18;
      paramCanvas.drawBitmap((Bitmap)localObject, f10, f18, localPaint5);
      break;
      int k = mState;
      int i10 = 2;
      if (k == i10)
      {
        String str1 = "Aim at the Rope...";
        mMainText = str1;
        boolean bool2 = bInTarget;
        float f11;
        float f19;
        if (bool2)
        {
          String str2 = "Yank your Phone!";
          mMainText = str2;
          float f1 = i23;
          f11 = i24;
          int i19 = TARGET_RADIUS;
          f19 = i19;
          Paint localPaint3 = mPaintRedStroke;
          paramCanvas.drawCircle(f1, f11, f19, localPaint3);
        }
        for (;;)
        {
          int m = TARGET_RADIUS;
          m *= 2;
          m = i23 - m;
          f11 = m;
          f19 = i24;
          m = TARGET_RADIUS;
          m *= 2;
          m += i23;
          float f21 = m;
          float f22 = i24;
          Paint localPaint6 = mPaintRedStroke;
          Canvas localCanvas1 = paramCanvas;
          localCanvas1.drawLine(f11, f19, f21, f22, localPaint6);
          f11 = i23;
          int n = TARGET_RADIUS;
          n *= 2;
          n = i24 - n;
          f19 = n;
          f21 = i23;
          n = TARGET_RADIUS;
          n *= 2;
          n += i24;
          f22 = n;
          localPaint6 = mPaintRedStroke;
          Canvas localCanvas2 = paramCanvas;
          localCanvas2.drawLine(f11, f19, f21, f22, localPaint6);
          float f2 = i25;
          f11 = i26;
          f19 = 10.0F;
          Paint localPaint4 = mPaintRed;
          paramCanvas.drawCircle(f2, f11, f19, localPaint4);
          break;
          f2 = i23;
          f11 = i24;
          int i20 = TARGET_RADIUS;
          float f20 = i20;
          localPaint4 = mPaintBlackStroke;
          paramCanvas.drawCircle(f2, f11, f20, localPaint4);
        }
      }
      int i1 = mState;
      int i11 = 4;
      if (i1 == i11)
      {
        String str3 = "Tap Screen to Play Again";
        mMainText = str3;
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
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 1;
    int n = 0;
    int i = paramMotionEvent.getAction();
    if (i == 0)
    {
      i = mState;
      if (i != i1)
      {
        int j = mState;
        int m = 4;
        if (j != m)
        {
          j = mState;
          m = 5;
          if (j != m) {
            break label98;
          }
        }
      }
      ResetRound();
      long l = System.currentTimeMillis();
      mStartTime = l;
      mShakeX = n;
      mShakeY = n;
      Integer localInteger = Integer.valueOf(n);
      mScore = localInteger;
      int k = 2;
      mState = k;
      invalidate();
    }
    label98:
    return i1;
  }
  
  public void playLoudGrowl()
  {
    int m = 1;
    int i1 = 0;
    Context localContext = getContext();
    String str1 = "audio";
    Object localObject2 = localContext.getSystemService(str1);
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
      Object localObject1 = "DWSound";
      String str2 = "SoundPool.play() failed to play in PlaySound()";
      Log.d((String)localObject1, str2);
      localObject1 = getContext();
      str2 = "your phone's audio player is experiencing difficulties.\nTo resolve this issue, Press the 'Home' key, and then reload the game.";
      Toast localToast = Toast.makeText((Context)localObject1, str2, m);
      int k = 17;
      localToast.setGravity(k, i1, i1);
      localToast.show();
    }
  }
  
  public void playSteadyGrowl() {}
  
  public void registerListener()
  {
    int m = 2;
    int k = 1;
    Object localObject = mSensorManager;
    SensorListener localSensorListener = mSensorAccelerometer;
    ((SensorManager)localObject).registerListener(localSensorListener, m, k);
    localObject = soundPool;
    if (localObject != null)
    {
      localObject = soundPool;
      ((SoundPool)localObject).release();
      localObject = null;
      soundPool = ((SoundPool)localObject);
    }
    localObject = new android/media/SoundPool;
    int i = 3;
    int j = 0;
    ((SoundPool)localObject).<init>(m, i, j);
    soundPool = ((SoundPool)localObject);
    localObject = soundPool;
    Context localContext = getContext();
    j = 2131034112;
    ((SoundPool)localObject).load(localContext, j, k);
    localObject = soundPool;
    localContext = getContext();
    j = 2131034113;
    ((SoundPool)localObject).load(localContext, j, k);
  }
  
  public void stopSteadyGrowl()
  {
    SoundPool localSoundPool = soundPool;
    int i = 2;
    localSoundPool.stop(i);
  }
  
  public void unregisterListener()
  {
    Object localObject = mSensorManager;
    SensorListener localSensorListener = mSensorAccelerometer;
    ((SensorManager)localObject).unregisterListener(localSensorListener);
    localObject = soundPool;
    ((SoundPool)localObject).release();
    localObject = null;
    soundPool = ((SoundPool)localObject);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TrainBitingView
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */