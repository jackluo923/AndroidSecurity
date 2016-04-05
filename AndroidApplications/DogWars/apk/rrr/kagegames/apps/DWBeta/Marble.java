package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;

public class Marble
{
  private Activity mActivity;
  private int mColor;
  private Bitmap mImgDogHead;
  private int mLives;
  private int mRadius;
  private View mView;
  private int mX;
  private int mY;
  
  public Marble(View paramView, Activity paramActivity)
  {
    mX = i;
    mY = i;
    i = 8;
    mRadius = i;
    i = -1;
    mColor = i;
    i = 5;
    mLives = i;
    mView = paramView;
    mActivity = paramActivity;
    init();
  }
  
  public void death()
  {
    int i = mLives;
    int j = 1;
    i -= j;
    mLives = i;
  }
  
  public void draw(Canvas paramCanvas, Paint paramPaint)
  {
    Bitmap localBitmap1 = mImgDogHead;
    int i = mX;
    Bitmap localBitmap2 = mImgDogHead;
    int j = localBitmap2.getWidth();
    j /= 2;
    i -= j;
    float f1 = i;
    j = mY;
    Bitmap localBitmap3 = mImgDogHead;
    int k = localBitmap3.getHeight();
    k /= 2;
    j -= k;
    float f2 = j;
    Paint localPaint = null;
    paramCanvas.drawBitmap(localBitmap1, f1, f2, localPaint);
  }
  
  public int getLives()
  {
    int i = mLives;
    return i;
  }
  
  public int getX()
  {
    int i = mX;
    return i;
  }
  
  public int getY()
  {
    int i = mY;
    return i;
  }
  
  public void init()
  {
    int i = mRadius;
    i *= 6;
    mX = i;
    i = mRadius;
    i *= 6;
    mY = i;
    Object localObject = mActivity;
    localObject = ((Activity)localObject).getApplicationContext();
    localObject = ((Context)localObject).getResources();
    int j = 2130837529;
    localObject = BitmapFactory.decodeResource((Resources)localObject, j);
    mImgDogHead = ((Bitmap)localObject);
  }
  
  public void setLives(int paramInt)
  {
    mLives = paramInt;
  }
  
  public void updateX(float paramFloat)
  {
    int i = mX;
    float f = i;
    f += paramFloat;
    int j = (int)f;
    mX = j;
    j = mX;
    int m = mRadius;
    j += m;
    View localView2 = mView;
    int n = localView2.getWidth();
    int k;
    if (j >= n)
    {
      View localView1 = mView;
      k = localView1.getWidth();
      n = mRadius;
      k -= n;
      mX = k;
    }
    for (;;)
    {
      return;
      k = mX;
      n = mRadius;
      k -= n;
      if (k < 0)
      {
        k = mRadius;
        mX = k;
      }
    }
  }
  
  public void updateY(float paramFloat)
  {
    int i = mY;
    float f = i;
    f -= paramFloat;
    int j = (int)f;
    mY = j;
    j = mY;
    int m = mRadius;
    j += m;
    View localView2 = mView;
    int n = localView2.getHeight();
    int k;
    if (j >= n)
    {
      View localView1 = mView;
      k = localView1.getHeight();
      n = mRadius;
      k -= n;
      mY = k;
    }
    for (;;)
    {
      return;
      k = mY;
      n = mRadius;
      k -= n;
      if (k < 0)
      {
        k = mRadius;
        mY = k;
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.Marble
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */