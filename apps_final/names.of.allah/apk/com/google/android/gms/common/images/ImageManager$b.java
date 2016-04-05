package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import com.google.android.gms.internal.hr;
import com.google.android.gms.internal.iq;

final class ImageManager$b
  extends hr<a.a, Bitmap>
{
  public ImageManager$b(Context paramContext)
  {
    super(A(paramContext));
  }
  
  private static int A(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    if ((getApplicationInfoflags & 0x100000) != 0)
    {
      i = 1;
      if ((i == 0) || (!iq.fX())) {
        break label55;
      }
    }
    label55:
    for (int i = ImageManager.a.a(localActivityManager);; i = localActivityManager.getMemoryClass())
    {
      return (int)(i * 1048576 * 0.33F);
      i = 0;
      break;
    }
  }
  
  protected final int a(a.a parama, Bitmap paramBitmap)
  {
    return paramBitmap.getHeight() * paramBitmap.getRowBytes();
  }
  
  protected final void a(boolean paramBoolean, a.a parama, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    super.entryRemoved(paramBoolean, parama, paramBitmap1, paramBitmap2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */