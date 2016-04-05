package kagegames.apps.DWBeta;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;

public class TitleBarView
  extends View
{
  private int PADDING_LEFT;
  private int PADDING_TOP;
  private int mCanvasHalfHeight;
  private int mCanvasHalfWidth;
  private int mCanvasHeight;
  private int mCanvasWidth;
  private Bitmap mImgBackground;
  private Paint mPaintDogName;
  private Paint mPaintOwnerName;
  private float mScaleHeight;
  private float mScaleWidth;
  
  public TitleBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mCanvasWidth = i;
    mCanvasHeight = i;
    mCanvasHalfWidth = i;
    mCanvasHalfHeight = i;
    i = 15;
    PADDING_LEFT = i;
    i = 17;
    PADDING_TOP = i;
    Object localObject = getResources();
    int n = 2130837603;
    localObject = BitmapFactory.decodeResource((Resources)localObject, n);
    mImgBackground = ((Bitmap)localObject);
    localObject = DWApplication.getAppResources();
    localObject = ((Resources)localObject).getDisplayMetrics();
    float f1 = density;
    localObject = new android/graphics/Paint;
    ((Paint)localObject).<init>();
    mPaintOwnerName = ((Paint)localObject);
    localObject = getContext();
    localObject = ((Context)localObject).getAssets();
    String str = "bohemian_typewriter.ttf";
    Typeface localTypeface = Typeface.createFromAsset((AssetManager)localObject, str);
    localObject = mPaintOwnerName;
    ((Paint)localObject).setTypeface(localTypeface);
    localObject = mPaintOwnerName;
    boolean bool = true;
    ((Paint)localObject).setAntiAlias(bool);
    localObject = mPaintOwnerName;
    Paint.Align localAlign = Paint.Align.LEFT;
    ((Paint)localObject).setTextAlign(localAlign);
    localObject = mPaintOwnerName;
    int i1 = -16777216;
    ((Paint)localObject).setColor(i1);
    localObject = mPaintOwnerName;
    float f4 = 20.0F;
    f4 *= f1;
    ((Paint)localObject).setTextSize(f4);
    localObject = new android/graphics/Paint;
    Paint localPaint = mPaintOwnerName;
    ((Paint)localObject).<init>(localPaint);
    mPaintDogName = ((Paint)localObject);
    localObject = mPaintDogName;
    int i2 = -11665151;
    ((Paint)localObject).setColor(i2);
    int j = PADDING_LEFT;
    float f2 = j;
    f2 *= f1;
    int k = (int)f2;
    PADDING_LEFT = k;
    k = PADDING_TOP;
    float f3 = k;
    f3 *= f1;
    int m = (int)f3;
    PADDING_TOP = m;
  }
  
  void ScaleBitmapsToScreen()
  {
    float f3 = 0;
    Bitmap localBitmap1 = mImgBackground;
    int k = localBitmap1.getWidth();
    localBitmap1 = mImgBackground;
    int m = localBitmap1.getHeight();
    int i = mCanvasWidth;
    float f1 = i;
    float f4 = k;
    float f6 = f1 / f4;
    int j = mCanvasHeight;
    float f2 = j;
    f4 = m;
    float f5 = f2 / f4;
    Matrix localMatrix = new android/graphics/Matrix;
    localMatrix.<init>();
    localMatrix.postScale(f5, f5);
    Bitmap localBitmap2 = mImgBackground;
    boolean bool = true;
    f4 = f3;
    localBitmap2 = Bitmap.createBitmap(localBitmap2, f3, f4, k, m, localMatrix, bool);
    mImgBackground = localBitmap2;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    float f3 = 0.0F;
    Object localObject = mImgBackground;
    Paint localPaint1 = null;
    paramCanvas.drawBitmap((Bitmap)localObject, f3, f3, localPaint1);
    int i = PADDING_TOP;
    localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    localObject = ((DWGameState)localObject).getCurOwner();
    localObject = ((DWOwner)localObject).getName();
    int j = PADDING_LEFT;
    float f1 = j;
    f3 = i;
    Paint localPaint2 = mPaintOwnerName;
    paramCanvas.drawText((String)localObject, f1, f3, localPaint2);
    localObject = DWApplication.getInstance();
    localObject = ((DWApplication)localObject).getDWGameState();
    localObject = ((DWGameState)localObject).getCurDog();
    localObject = ((DWDog)localObject).getName();
    int k = mCanvasHalfWidth;
    int m = PADDING_LEFT;
    k -= m;
    float f2 = k;
    float f4 = i;
    localPaint2 = mPaintDogName;
    paramCanvas.drawText((String)localObject, f2, f4, localPaint2);
    super.onDraw(paramCanvas);
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
    paramMotionEvent.getAction();
    boolean bool = true;
    return bool;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.TitleBarView
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */