package android.support.v4.app;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.LevelListDrawable;
import android.os.Build.VERSION;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.view.Window;

class ActionBarDrawerToggle$SlideDrawable
  extends LevelListDrawable
  implements Drawable.Callback
{
  private final boolean mHasMirroring;
  private float mOffset;
  private float mPosition;
  private final Rect mTmpRect;
  
  private ActionBarDrawerToggle$SlideDrawable(ActionBarDrawerToggle paramActionBarDrawerToggle, Drawable paramDrawable)
  {
    if (Build.VERSION.SDK_INT > 18) {}
    for (boolean bool = true;; bool = false)
    {
      mHasMirroring = bool;
      mTmpRect = new Rect();
      if (DrawableCompat.isAutoMirrored(paramDrawable)) {
        DrawableCompat.setAutoMirrored(this, true);
      }
      addLevel(0, 0, paramDrawable);
      return;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    int j = 1;
    copyBounds(mTmpRect);
    paramCanvas.save();
    if (ViewCompat.getLayoutDirection(ActionBarDrawerToggle.access$300(this$0).getWindow().getDecorView()) == 1) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        j = -1;
      }
      int k = mTmpRect.width();
      paramCanvas.translate(-mOffset * k * mPosition * j, 0.0F);
      if ((i != 0) && (!mHasMirroring))
      {
        paramCanvas.translate(k, 0.0F);
        paramCanvas.scale(-1.0F, 1.0F);
      }
      super.draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  public float getPosition()
  {
    return mPosition;
  }
  
  public void setOffset(float paramFloat)
  {
    mOffset = paramFloat;
    invalidateSelf();
  }
  
  public void setPosition(float paramFloat)
  {
    mPosition = paramFloat;
    invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActionBarDrawerToggle.SlideDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */