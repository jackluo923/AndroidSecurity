package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Typeface;
import android.hardware.SensorListener;
import android.hardware.SensorManager;
import android.os.Vibrator;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

public class AmazedView
  extends View
{
  private static final int GAME_COMPLETE = 3;
  private static final int GAME_INIT = 0;
  private static final int GAME_LANDSCAPE = 4;
  private static final int GAME_OVER = 2;
  private static final int GAME_RUNNING = 1;
  private static final int NULL_STATE = -1;
  private static final int TXT_GAME_COMPLETE = 4;
  private static final int TXT_GAME_OVER = 5;
  private static final int TXT_GAME_OVER_MSG_A = 7;
  private static final int TXT_GAME_OVER_MSG_B = 8;
  private static final int TXT_LANDSCAPE_MODE = 10;
  private static final int TXT_LEVEL = 1;
  private static final int TXT_LIVES = 0;
  private static final int TXT_RESTART = 9;
  private static final int TXT_TAP_SCREEN = 3;
  private static final int TXT_TIME = 2;
  private static final int TXT_TOTAL_TIME = 6;
  private static int mCurState = 0;
  private static String[] mStrings;
  private float mAccelX;
  private float mAccelY;
  private float mAccelZ;
  private Activity mActivity;
  private Bitmap mBackgroundImage;
  private Canvas mCanvas;
  private int mCanvasHalfHeight;
  private int mCanvasHalfWidth;
  private int mCanvasHeight;
  private int mCanvasWidth;
  private long mEndTime;
  private Typeface mFont;
  private int mHudTextY;
  private Marble mMarble;
  private Maze mMaze;
  private Paint mPaint;
  private boolean mPortrait;
  private final SensorListener mSensorAccelerometer;
  private float mSensorBuffer;
  private SensorManager mSensorManager;
  private long mStartTime;
  private int mTextPadding;
  private long mTotalTime;
  private boolean mWarning;
  private int mlevel;
  
  static
  {
    int i = -1;
    mCurState = i;
  }
  
  public AmazedView(Context paramContext, Activity paramActivity)
  {
    super(paramContext);
    Typeface localTypeface = Typeface.SANS_SERIF;
    localTypeface = Typeface.create(localTypeface, i1);
    mFont = localTypeface;
    int i = 10;
    mTextPadding = i;
    i = 440;
    mHudTextY = i;
    mWarning = n;
    mCanvasWidth = n;
    mCanvasHeight = n;
    mCanvasHalfWidth = n;
    mCanvasHalfHeight = n;
    mlevel = i1;
    mTotalTime = l;
    mStartTime = l;
    mEndTime = l;
    mAccelX = f1;
    mAccelY = f1;
    mAccelZ = f1;
    mSensorBuffer = f1;
    Object localObject1 = new kagegames/apps/DWBeta/AmazedView$1;
    ((AmazedView.1)localObject1).<init>(this);
    mSensorAccelerometer = ((SensorListener)localObject1);
    mActivity = paramActivity;
    localObject1 = getResources();
    int j = 2130837614;
    localObject1 = BitmapFactory.decodeResource((Resources)localObject1, j);
    mBackgroundImage = ((Bitmap)localObject1);
    localObject1 = new android/graphics/Paint;
    ((Paint)localObject1).<init>();
    mPaint = ((Paint)localObject1);
    localObject1 = mPaint;
    float f2 = 14.0F;
    ((Paint)localObject1).setTextSize(f2);
    localObject1 = mPaint;
    Object localObject2 = mFont;
    ((Paint)localObject1).setTypeface((Typeface)localObject2);
    localObject1 = mPaint;
    ((Paint)localObject1).setAntiAlias(i1);
    localObject1 = "sensor";
    localObject1 = paramActivity.getSystemService((String)localObject1);
    localObject1 = (SensorManager)localObject1;
    mSensorManager = ((SensorManager)localObject1);
    localObject1 = mSensorManager;
    localObject2 = mSensorAccelerometer;
    int m = 2;
    ((SensorManager)localObject1).registerListener((SensorListener)localObject2, m, i1);
    localObject1 = new kagegames/apps/DWBeta/Maze;
    localObject2 = mActivity;
    ((Maze)localObject1).<init>((Activity)localObject2);
    mMaze = ((Maze)localObject1);
    localObject1 = new kagegames/apps/DWBeta/Marble;
    localObject2 = mActivity;
    ((Marble)localObject1).<init>(this, (Activity)localObject2);
    mMarble = ((Marble)localObject1);
    localObject1 = getResources();
    int k = 2131296259;
    localObject1 = ((Resources)localObject1).getStringArray(k);
    mStrings = (String[])localObject1;
    switchGameState(n);
  }
  
  public void cleanUp()
  {
    Activity localActivity = null;
    mMarble = localActivity;
    mMaze = localActivity;
    mStrings = localActivity;
    unregisterListener();
    localActivity = mActivity;
    localActivity.finish();
  }
  
  public void drawGameComplete()
  {
    Object localObject1 = mPaint;
    int i = -16777216;
    ((Paint)localObject1).setColor(i);
    localObject1 = mPaint;
    Object localObject2 = Paint.Align.CENTER;
    ((Paint)localObject1).setTextAlign((Paint.Align)localObject2);
    localObject1 = mCanvas;
    localObject2 = mStrings;
    int j = 3;
    localObject2 = localObject2[j];
    j = mCanvasHalfWidth;
    float f1 = j;
    int n = mCanvasHalfHeight;
    float f4 = n;
    Paint localPaint1 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f1, f4, localPaint1);
    localObject1 = mCanvas;
    localObject2 = new java/lang/StringBuilder;
    Object localObject3 = mStrings;
    int i1 = 6;
    localObject3 = localObject3[i1];
    localObject3 = String.valueOf(localObject3);
    ((StringBuilder)localObject2).<init>((String)localObject3);
    localObject3 = ": ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    long l1 = mTotalTime;
    long l2 = 1000L;
    l1 /= l2;
    localObject2 = ((StringBuilder)localObject2).append(l1);
    String str = "s";
    localObject2 = ((StringBuilder)localObject2).append(str);
    localObject2 = ((StringBuilder)localObject2).toString();
    int k = mCanvasHalfWidth;
    float f2 = k;
    i1 = mCanvasHalfHeight;
    float f5 = i1;
    Paint localPaint2 = mPaint;
    float f7 = localPaint2.getFontSpacing();
    f5 += f7;
    Paint localPaint3 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f2, f5, localPaint3);
    localObject1 = mCanvas;
    localObject2 = mStrings;
    int m = 9;
    localObject2 = localObject2[m];
    m = mCanvasHalfWidth;
    float f3 = m;
    int i2 = mCanvasHeight;
    float f6 = i2;
    localPaint3 = mPaint;
    float f8 = localPaint3.getFontSpacing();
    float f9 = 3.0F;
    f8 *= f9;
    f6 -= f8;
    Paint localPaint4 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f3, f6, localPaint4);
  }
  
  public void drawGameOver()
  {
    Object localObject1 = mPaint;
    int i = -16777216;
    ((Paint)localObject1).setColor(i);
    localObject1 = mPaint;
    Object localObject2 = Paint.Align.CENTER;
    ((Paint)localObject1).setTextAlign((Paint.Align)localObject2);
    localObject1 = mCanvas;
    localObject2 = mStrings;
    int j = 5;
    localObject2 = localObject2[j];
    j = mCanvasHalfWidth;
    float f1 = j;
    int i2 = mCanvasHalfHeight;
    float f5 = i2;
    Paint localPaint1 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f1, f5, localPaint1);
    localObject1 = mCanvas;
    localObject2 = new java/lang/StringBuilder;
    Object localObject3 = mStrings;
    int i3 = 6;
    localObject3 = localObject3[i3];
    localObject3 = String.valueOf(localObject3);
    ((StringBuilder)localObject2).<init>((String)localObject3);
    localObject3 = ": ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    long l1 = mTotalTime;
    long l2 = 1000L;
    l1 /= l2;
    localObject2 = ((StringBuilder)localObject2).append(l1);
    String str = "s";
    localObject2 = ((StringBuilder)localObject2).append(str);
    localObject2 = ((StringBuilder)localObject2).toString();
    int k = mCanvasHalfWidth;
    float f2 = k;
    i3 = mCanvasHalfHeight;
    float f6 = i3;
    Paint localPaint2 = mPaint;
    float f9 = localPaint2.getFontSpacing();
    f6 += f9;
    Paint localPaint3 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f2, f6, localPaint3);
    localObject1 = mCanvas;
    localObject2 = new java/lang/StringBuilder;
    Object localObject4 = mStrings;
    int i4 = 7;
    localObject4 = localObject4[i4];
    localObject4 = String.valueOf(localObject4);
    ((StringBuilder)localObject2).<init>((String)localObject4);
    localObject4 = " ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject4);
    int m = mlevel;
    i4 = 1;
    m -= i4;
    localObject2 = ((StringBuilder)localObject2).append(m);
    Object localObject5 = " ";
    localObject2 = ((StringBuilder)localObject2).append((String)localObject5);
    localObject5 = mStrings;
    i4 = 8;
    localObject5 = localObject5[i4];
    localObject2 = ((StringBuilder)localObject2).append((String)localObject5);
    localObject2 = ((StringBuilder)localObject2).toString();
    int n = mCanvasHalfWidth;
    float f3 = n;
    i4 = mCanvasHalfHeight;
    float f7 = i4;
    localPaint3 = mPaint;
    float f10 = localPaint3.getFontSpacing();
    float f12 = 2.0F;
    f10 *= f12;
    f7 += f10;
    Paint localPaint4 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f3, f7, localPaint4);
    localObject1 = mCanvas;
    localObject2 = mStrings;
    int i1 = 9;
    localObject2 = localObject2[i1];
    i1 = mCanvasHalfWidth;
    float f4 = i1;
    int i5 = mCanvasHeight;
    float f8 = i5;
    localPaint4 = mPaint;
    float f11 = localPaint4.getFontSpacing();
    f12 = 3.0F;
    f11 *= f12;
    f8 -= f11;
    Paint localPaint5 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f4, f8, localPaint5);
  }
  
  public void drawHUD()
  {
    int i8 = -1;
    Object localObject1 = mPaint;
    ((Paint)localObject1).setColor(i8);
    localObject1 = mPaint;
    Object localObject3 = Paint.Align.LEFT;
    ((Paint)localObject1).setTextAlign((Paint.Align)localObject3);
    localObject1 = mCanvas;
    localObject3 = new java/lang/StringBuilder;
    Object localObject5 = mStrings;
    int i2 = 2;
    localObject5 = localObject5[i2];
    localObject5 = String.valueOf(localObject5);
    ((StringBuilder)localObject3).<init>((String)localObject5);
    localObject5 = ": ";
    localObject3 = ((StringBuilder)localObject3).append((String)localObject5);
    long l1 = mTotalTime;
    long l2 = 1000L;
    l1 /= l2;
    localObject3 = ((StringBuilder)localObject3).append(l1);
    localObject3 = ((StringBuilder)localObject3).toString();
    int j = mTextPadding;
    float f2 = j;
    i2 = mHudTextY;
    float f7 = i2;
    Paint localPaint1 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject3, f2, f7, localPaint1);
    localObject1 = mPaint;
    localObject3 = Paint.Align.CENTER;
    ((Paint)localObject1).setTextAlign((Paint.Align)localObject3);
    localObject1 = mCanvas;
    localObject3 = new java/lang/StringBuilder;
    Object localObject6 = mStrings;
    int i3 = 1;
    localObject6 = localObject6[i3];
    localObject6 = String.valueOf(localObject6);
    ((StringBuilder)localObject3).<init>((String)localObject6);
    localObject6 = ": ";
    localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
    int k = mlevel;
    localObject3 = ((StringBuilder)localObject3).append(k);
    localObject3 = ((StringBuilder)localObject3).toString();
    k = mCanvasHalfWidth;
    float f3 = k;
    i3 = mHudTextY;
    float f8 = i3;
    localPaint1 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject3, f3, f8, localPaint1);
    localObject1 = mPaint;
    localObject3 = Paint.Align.RIGHT;
    ((Paint)localObject1).setTextAlign((Paint.Align)localObject3);
    localObject1 = mCanvas;
    localObject3 = new java/lang/StringBuilder;
    Object localObject7 = mStrings;
    int i4 = 0;
    localObject7 = localObject7[i4];
    localObject7 = String.valueOf(localObject7);
    ((StringBuilder)localObject3).<init>((String)localObject7);
    localObject7 = ": ";
    localObject3 = ((StringBuilder)localObject3).append((String)localObject7);
    localObject7 = mMarble;
    int m = ((Marble)localObject7).getLives();
    localObject3 = ((StringBuilder)localObject3).append(m);
    localObject3 = ((StringBuilder)localObject3).toString();
    m = mCanvasWidth;
    i4 = mTextPadding;
    m -= i4;
    float f4 = m;
    i4 = mHudTextY;
    float f9 = i4;
    localPaint1 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject3, f4, f9, localPaint1);
    boolean bool = mWarning;
    if (bool)
    {
      Object localObject2 = mPaint;
      int i = -16776961;
      ((Paint)localObject2).setColor(i);
      localObject2 = mCanvas;
      float f1 = 0.0F;
      int n = mCanvasHalfHeight;
      int i5 = 15;
      n -= i5;
      float f5 = n;
      i5 = mCanvasWidth;
      float f10 = i5;
      int i7 = mCanvasHalfHeight;
      i7 += 5;
      float f12 = i7;
      Paint localPaint3 = mPaint;
      ((Canvas)localObject2).drawRect(f1, f5, f10, f12, localPaint3);
      localObject2 = mPaint;
      ((Paint)localObject2).setColor(i8);
      localObject2 = mPaint;
      Object localObject4 = Paint.Align.CENTER;
      ((Paint)localObject2).setTextAlign((Paint.Align)localObject4);
      localObject2 = mCanvas;
      localObject4 = mStrings;
      int i1 = 3;
      localObject4 = localObject4[i1];
      i1 = mCanvasHalfWidth;
      float f6 = i1;
      int i6 = mCanvasHalfHeight;
      float f11 = i6;
      Paint localPaint2 = mPaint;
      ((Canvas)localObject2).drawText((String)localObject4, f6, f11, localPaint2);
    }
  }
  
  public void drawLandscapeMode()
  {
    float f1 = 0.0F;
    Object localObject1 = mPaint;
    int j = -1;
    ((Paint)localObject1).setColor(j);
    localObject1 = mPaint;
    Paint.Align localAlign = Paint.Align.CENTER;
    ((Paint)localObject1).setTextAlign(localAlign);
    localObject1 = mCanvas;
    int k = mCanvasWidth;
    float f4 = k;
    k = mCanvasHeight;
    float f6 = k;
    Paint localPaint2 = mPaint;
    float f2 = f1;
    ((Canvas)localObject1).drawRect(f1, f2, f4, f6, localPaint2);
    localObject1 = mPaint;
    int i = -16777216;
    ((Paint)localObject1).setColor(i);
    localObject1 = mCanvas;
    Object localObject2 = mStrings;
    int m = 10;
    localObject2 = localObject2[m];
    m = mCanvasHalfWidth;
    float f3 = m;
    int n = mCanvasHalfHeight;
    float f5 = n;
    Paint localPaint1 = mPaint;
    ((Canvas)localObject1).drawText((String)localObject2, f3, f5, localPaint1);
  }
  
  public void gameTick()
  {
    int i = mCurState;
    switch (i)
    {
    }
    for (;;)
    {
      invalidate();
      return;
      initNewGame();
      i = 1;
      switchGameState(i);
      boolean bool = mWarning;
      if (!bool) {
        updateMarble();
      }
    }
  }
  
  public void initLevel()
  {
    int i = mlevel;
    int k = 10;
    if (i < k)
    {
      i = 1;
      mWarning = i;
      Object localObject = mMaze;
      Activity localActivity = mActivity;
      int m = mlevel;
      ((Maze)localObject).load(localActivity, m);
      localObject = mMarble;
      ((Marble)localObject).init();
    }
    for (;;)
    {
      return;
      int j = 3;
      switchGameState(j);
    }
  }
  
  public void initNewGame()
  {
    Marble localMarble = mMarble;
    int j = 5;
    localMarble.setLives(j);
    long l = 0L;
    mTotalTime = l;
    int i = 1;
    mlevel = i;
    initLevel();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    float f = 0.0F;
    mCanvas = paramCanvas;
    Object localObject1 = mPaint;
    int j = -1;
    ((Paint)localObject1).setColor(j);
    localObject1 = mBackgroundImage;
    Object localObject2 = null;
    paramCanvas.drawBitmap((Bitmap)localObject1, f, f, (Paint)localObject2);
    int i = mCurState;
    switch (i)
    {
    }
    for (;;)
    {
      gameTick();
      return;
      Marble localMarble = mMarble;
      localObject2 = mCanvas;
      Paint localPaint = mPaint;
      localMarble.draw((Canvas)localObject2, localPaint);
      drawHUD();
      continue;
      drawGameOver();
      continue;
      drawGameComplete();
      continue;
      drawLandscapeMode();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    int i = 4;
    if (paramInt == i) {
      cleanUp();
    }
    i = 1;
    return i;
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
    i = mCanvasHeight;
    int j = mCanvasWidth;
    if (i > j)
    {
      i = 1;
      mPortrait = i;
    }
    for (;;)
    {
      return;
      i = 0;
      mPortrait = i;
      i = 4;
      switchGameState(i);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int n = 1;
    int m = 0;
    int i = paramMotionEvent.getAction();
    if (i == 0)
    {
      i = mCurState;
      int j = 2;
      if (i != j)
      {
        i = mCurState;
        int k = 3;
        if (i != k) {
          break label46;
        }
      }
      mCurState = m;
    }
    for (;;)
    {
      return n;
      label46:
      i = mCurState;
      if (i == n)
      {
        mWarning = m;
        long l = System.currentTimeMillis();
        mStartTime = l;
      }
    }
  }
  
  public void registerListener()
  {
    SensorManager localSensorManager = mSensorManager;
    SensorListener localSensorListener = mSensorAccelerometer;
    int i = 2;
    int j = 1;
    localSensorManager.registerListener(localSensorListener, i, j);
  }
  
  public void switchGameState(int paramInt)
  {
    mCurState = paramInt;
  }
  
  public void unregisterListener()
  {
    SensorManager localSensorManager = mSensorManager;
    SensorListener localSensorListener = mSensorAccelerometer;
    localSensorManager.unregisterListener(localSensorListener);
  }
  
  public void updateMarble()
  {
    int i4 = 2;
    int i3 = 1;
    float f1 = mAccelX;
    float f5 = mSensorBuffer;
    boolean bool1 = f1 < f5;
    if (!bool1)
    {
      float f2 = mAccelX;
      f5 = mSensorBuffer;
      f5 = -f5;
      boolean bool2 = f2 < f5;
      if (!bool2) {}
    }
    else
    {
      Marble localMarble1 = mMarble;
      f5 = mAccelX;
      localMarble1.updateX(f5);
    }
    float f3 = mAccelY;
    f5 = mSensorBuffer;
    boolean bool3 = f3 < f5;
    if (!bool3)
    {
      float f4 = mAccelY;
      f5 = mSensorBuffer;
      f5 = -f5;
      boolean bool4 = f4 < f5;
      if (!bool4) {}
    }
    else
    {
      localObject2 = mMarble;
      f5 = mAccelY;
      ((Marble)localObject2).updateY(f5);
    }
    Object localObject2 = mMaze;
    Marble localMarble4 = mMarble;
    int m = localMarble4.getX();
    Marble localMarble5 = mMarble;
    int i1 = localMarble5.getY();
    int i = ((Maze)localObject2).getCellType(m, i1);
    Object localObject3;
    if (i == i3)
    {
      Activity localActivity = mActivity;
      localObject3 = "vibrator";
      Object localObject1 = localActivity.getSystemService((String)localObject3);
      localObject1 = (Vibrator)localObject1;
      long l1 = 30L;
      ((Vibrator)localObject1).vibrate(l1);
      Marble localMarble2 = mMarble;
      int j = localMarble2.getLives();
      if (j > 0)
      {
        Marble localMarble3 = mMarble;
        localMarble3.death();
        localMarble3 = mMarble;
        localMarble3.init();
        mWarning = i3;
      }
    }
    for (;;)
    {
      return;
      long l2 = System.currentTimeMillis();
      mEndTime = l2;
      l2 = mTotalTime;
      long l4 = mEndTime;
      long l6 = mStartTime;
      l4 -= l6;
      l2 += l4;
      mTotalTime = l2;
      switchGameState(i4);
      continue;
      Maze localMaze = mMaze;
      localObject3 = mMarble;
      int n = ((Marble)localObject3).getX();
      Marble localMarble6 = mMarble;
      int i2 = localMarble6.getY();
      int k = localMaze.getCellType(n, i2);
      if (k == i4)
      {
        long l3 = System.currentTimeMillis();
        mEndTime = l3;
        l3 = mTotalTime;
        long l5 = mEndTime;
        l6 = mStartTime;
        l5 -= l6;
        l3 += l5;
        mTotalTime = l3;
        initLevel();
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.AmazedView
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */