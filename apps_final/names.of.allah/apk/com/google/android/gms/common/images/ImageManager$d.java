package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.google.android.gms.internal.gy;
import java.util.HashSet;
import java.util.Map;

final class ImageManager$d
  implements Runnable
{
  private final a Fh;
  
  public ImageManager$d(ImageManager paramImageManager, a parama)
  {
    Fh = parama;
  }
  
  public final void run()
  {
    gy.ay("LoadImageRunnable must be executed on the main thread");
    Object localObject1 = (ImageManager.ImageReceiver)ImageManager.a(Ff).get(Fh);
    if (localObject1 != null)
    {
      ImageManager.a(Ff).remove(Fh);
      ((ImageManager.ImageReceiver)localObject1).c(Fh);
    }
    a.a locala = Fh.Fj;
    if (uri == null)
    {
      Fh.a(ImageManager.b(Ff), ImageManager.c(Ff), true);
      return;
    }
    localObject1 = ImageManager.a(Ff, locala);
    if (localObject1 != null)
    {
      Fh.a(ImageManager.b(Ff), (Bitmap)localObject1, true);
      return;
    }
    localObject1 = (Long)ImageManager.d(Ff).get(uri);
    if (localObject1 != null)
    {
      if (SystemClock.elapsedRealtime() - ((Long)localObject1).longValue() < 3600000L)
      {
        Fh.a(ImageManager.b(Ff), ImageManager.c(Ff), true);
        return;
      }
      ImageManager.d(Ff).remove(uri);
    }
    Fh.a(ImageManager.b(Ff), ImageManager.c(Ff));
    ??? = (ImageManager.ImageReceiver)ImageManager.e(Ff).get(uri);
    localObject1 = ???;
    if (??? == null)
    {
      localObject1 = new ImageManager.ImageReceiver(Ff, uri);
      ImageManager.e(Ff).put(uri, localObject1);
    }
    ((ImageManager.ImageReceiver)localObject1).b(Fh);
    if (!(Fh instanceof a.c)) {
      ImageManager.a(Ff).put(Fh, localObject1);
    }
    synchronized (ImageManager.eY())
    {
      if (!ImageManager.eZ().contains(uri))
      {
        ImageManager.eZ().add(uri);
        ((ImageManager.ImageReceiver)localObject1).fa();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */