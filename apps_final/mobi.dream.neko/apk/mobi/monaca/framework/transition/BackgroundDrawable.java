package mobi.monaca.framework.transition;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.Display;

public class BackgroundDrawable
  extends Drawable
{
  protected Bitmap bitmap;
  
  public BackgroundDrawable(Bitmap paramBitmap, Display paramDisplay, int paramInt)
  {
    bitmap = createBackgroundBitmap(paramBitmap, paramDisplay, paramInt);
  }
  
  protected Bitmap createBackgroundBitmap(Bitmap paramBitmap, Display paramDisplay, int paramInt)
  {
    Object localObject = paramBitmap;
    if (paramInt == 2)
    {
      localObject = new Matrix();
      ((Matrix)localObject).setRotate(-90.0F);
      localObject = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), (Matrix)localObject, false);
      paramBitmap.recycle();
    }
    paramBitmap = new Matrix();
    float f = Math.max(paramDisplay.getWidth() / ((Bitmap)localObject).getWidth(), paramDisplay.getHeight() / ((Bitmap)localObject).getHeight());
    paramBitmap.postScale(f, f);
    return Bitmap.createBitmap((Bitmap)localObject, 0, 0, ((Bitmap)localObject).getWidth(), ((Bitmap)localObject).getHeight(), paramBitmap, true);
  }
  
  public void draw(Canvas paramCanvas)
  {
    paramCanvas.drawBitmap(bitmap, 0.0F, 0.0F, new Paint());
  }
  
  public int getOpacity()
  {
    return -1;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.transition.BackgroundDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */