package mobi.monaca.framework.nativeui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

public class NonScaleBitmapDrawable
  extends Drawable
{
  protected Bitmap bitmap;
  
  public NonScaleBitmapDrawable(Bitmap paramBitmap)
  {
    bitmap = paramBitmap;
    setBounds(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.drawBitmap(bitmap, 0.0F, 0.0F, new Paint());
  }
  
  public int getIntrinsicHeight()
  {
    return bitmap.getHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return bitmap.getWidth();
  }
  
  public int getMinimumHeight()
  {
    return getIntrinsicHeight();
  }
  
  public int getMinimumWidth()
  {
    return getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.NonScaleBitmapDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */