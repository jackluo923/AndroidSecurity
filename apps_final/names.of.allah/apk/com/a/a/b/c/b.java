package com.a.a.b.c;

import android.graphics.Bitmap;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;

public final class b
  implements a
{
  private final int a = 300;
  
  public static void a(ImageView paramImageView, int paramInt)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setDuration(paramInt);
    localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
    paramImageView.startAnimation(localAlphaAnimation);
  }
  
  public final Bitmap a(Bitmap paramBitmap, ImageView paramImageView)
  {
    paramImageView.setImageBitmap(paramBitmap);
    a(paramImageView, a);
    return paramBitmap;
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */