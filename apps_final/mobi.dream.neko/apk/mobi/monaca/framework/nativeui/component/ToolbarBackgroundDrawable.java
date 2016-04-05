package mobi.monaca.framework.nativeui.component;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import mobi.monaca.framework.psedo.R.drawable;

public class ToolbarBackgroundDrawable
  extends Drawable
{
  protected int alpha = 79;
  protected ColorFilter colorFilter = null;
  protected Context context;
  protected Drawable drawable;
  
  public ToolbarBackgroundDrawable(Context paramContext)
  {
    drawable = paramContext.getResources().getDrawable(R.drawable.monaca_toolbar_bg);
    context = paramContext;
  }
  
  public void draw(Canvas paramCanvas)
  {
    Object localObject = drawable.getBounds();
    if ((((Rect)localObject).width() <= 0) || (((Rect)localObject).height() <= 0)) {
      return;
    }
    localObject = Bitmap.createBitmap(((Rect)localObject).width(), ((Rect)localObject).height(), Bitmap.Config.ARGB_8888);
    if (colorFilter != null) {
      drawable.setColorFilter(colorFilter);
    }
    drawable.draw(new Canvas((Bitmap)localObject));
    Paint localPaint = new Paint();
    localPaint.setAlpha(alpha);
    paramCanvas.drawBitmap((Bitmap)localObject, 0.0F, 0.0F, localPaint);
    ((Bitmap)localObject).recycle();
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
  
  public void setAlpha(int paramInt)
  {
    alpha = (paramInt & 0xFF);
    invalidateSelf();
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    drawable.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
    invalidateSelf();
  }
  
  public void setBounds(Rect paramRect)
  {
    drawable.setBounds(paramRect);
    super.setBounds(paramRect);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    colorFilter = paramColorFilter;
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.ToolbarBackgroundDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */