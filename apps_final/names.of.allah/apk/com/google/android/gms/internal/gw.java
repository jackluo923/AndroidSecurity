package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.net.Uri;
import android.widget.ImageView;

public final class gw
  extends ImageView
{
  private Uri FL;
  private int FM;
  private int FN;
  private gw.a FO;
  
  public final void al(int paramInt)
  {
    FM = paramInt;
  }
  
  public final void f(Uri paramUri)
  {
    FL = paramUri;
  }
  
  public final int fd()
  {
    return FM;
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    if (FO != null) {
      paramCanvas.clipPath(FO.d(getWidth(), getHeight()));
    }
    super.onDraw(paramCanvas);
    if (FN != 0) {
      paramCanvas.drawColor(FN);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */