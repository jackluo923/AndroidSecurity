package mobi.monaca.framework.nativeui.component;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import mobi.monaca.framework.psedo.R.drawable;

public class ButtonBackgroundDrawable
  extends Drawable
{
  protected int alpha = 255;
  protected ColorFilter colorFilter;
  protected Context context;
  protected ColorFilter disabledColorFilter;
  protected Drawable drawable;
  protected boolean isEnabled = true;
  protected boolean isPressed = false;
  protected ColorFilter pressedColorFilter;
  
  public ButtonBackgroundDrawable(Context paramContext, int paramInt)
  {
    drawable = paramContext.getResources().getDrawable(R.drawable.monaca_button);
    context = paramContext;
    colorFilter = new PorterDuffColorFilter(paramInt, PorterDuff.Mode.SCREEN);
    pressedColorFilter = new PorterDuffColorFilter(makePressedTintColor(paramInt), PorterDuff.Mode.SCREEN);
    disabledColorFilter = new PorterDuffColorFilter(makeDisabledTintColor(paramInt), PorterDuff.Mode.SCREEN);
  }
  
  public void draw(Canvas paramCanvas)
  {
    Object localObject1 = drawable.getBounds();
    if ((((Rect)localObject1).width() <= 0) || (((Rect)localObject1).height() <= 0)) {
      return;
    }
    Bitmap localBitmap1 = Bitmap.createBitmap(((Rect)localObject1).width(), ((Rect)localObject1).height(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap1);
    drawable.draw(localCanvas);
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1);
    Object localObject2 = new Paint();
    if (isEnabled) {
      if (isPressed) {
        localObject1 = pressedColorFilter;
      }
    }
    for (;;)
    {
      ((Paint)localObject2).setColorFilter((ColorFilter)localObject1);
      ((Paint)localObject2).setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(localBitmap2, 0.0F, 0.0F, (Paint)localObject2);
      localObject1 = BitmapFactory.decodeResource(context.getResources(), R.drawable.monaca_button_frame);
      localObject2 = new NinePatch((Bitmap)localObject1, ((Bitmap)localObject1).getNinePatchChunk(), null);
      Paint localPaint = new Paint();
      localPaint.setAlpha(204);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
      ((NinePatch)localObject2).setPaint(localPaint);
      ((NinePatch)localObject2).draw(localCanvas, drawable.getBounds());
      localCanvas.drawColor((alpha & 0xFF) << 24, PorterDuff.Mode.DST_IN);
      paramCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, new Paint());
      localBitmap1.recycle();
      localBitmap2.recycle();
      ((Bitmap)localObject1).recycle();
      return;
      localObject1 = colorFilter;
      continue;
      localObject1 = disabledColorFilter;
    }
  }
  
  public int getIntrinsicHeight()
  {
    return drawable.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return drawable.getIntrinsicWidth();
  }
  
  public int getMinimumHeight()
  {
    return drawable.getMinimumHeight();
  }
  
  public int getMinimumWidth()
  {
    return drawable.getMinimumWidth();
  }
  
  public int getOpacity()
  {
    return drawable.getOpacity();
  }
  
  public boolean getPadding(Rect paramRect)
  {
    return drawable.getPadding(paramRect);
  }
  
  protected int makeDisabledTintColor(int paramInt)
  {
    float[] arrayOfFloat = new float[3];
    Color.colorToHSV(paramInt, arrayOfFloat);
    arrayOfFloat[2] = ((float)(arrayOfFloat[2] - 0.2D));
    if (arrayOfFloat[2] < 0.0F) {
      arrayOfFloat[2] = 0.0F;
    }
    return Color.HSVToColor(arrayOfFloat);
  }
  
  protected int makePressedTintColor(int paramInt)
  {
    float[] arrayOfFloat = new float[3];
    Color.colorToHSV(paramInt, arrayOfFloat);
    double d2 = arrayOfFloat[2];
    if (arrayOfFloat[2] > 0.5D) {}
    for (double d1 = -0.2D;; d1 = 0.2D)
    {
      arrayOfFloat[2] = ((float)(d1 + d2));
      return Color.HSVToColor(arrayOfFloat);
    }
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfInt[i];
      if (k == 16842919) {
        bool2 = true;
      }
      if (k == 16842910) {
        bool1 = true;
      }
      i += 1;
    }
    if ((isPressed != bool2) || (isEnabled != bool1)) {}
    for (i = 1;; i = 0)
    {
      isPressed = bool2;
      isEnabled = bool1;
      if (i == 0) {
        break;
      }
      invalidateSelf();
      return true;
    }
    return super.onStateChange(paramArrayOfInt);
  }
  
  public void setAlpha(int paramInt)
  {
    alpha = (paramInt & 0xFF);
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    drawable.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setBounds(Rect paramRect)
  {
    drawable.setBounds(paramRect);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.ButtonBackgroundDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */