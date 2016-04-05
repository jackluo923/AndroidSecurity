package com.google.android.gms.common.images;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

final class ImageManager$e
  implements ComponentCallbacks2
{
  private final ImageManager.b EZ;
  
  public ImageManager$e(ImageManager.b paramb)
  {
    EZ = paramb;
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public final void onLowMemory()
  {
    EZ.evictAll();
  }
  
  public final void onTrimMemory(int paramInt)
  {
    if (paramInt >= 60) {
      EZ.evictAll();
    }
    while (paramInt < 20) {
      return;
    }
    EZ.trimToSize(EZ.size() / 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */