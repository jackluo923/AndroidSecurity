package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.internal.gy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class ImageManager$f
  implements Runnable
{
  private boolean Fi;
  private final CountDownLatch kI;
  private final Bitmap mBitmap;
  private final Uri mUri;
  
  public ImageManager$f(ImageManager paramImageManager, Uri paramUri, Bitmap paramBitmap, boolean paramBoolean, CountDownLatch paramCountDownLatch)
  {
    mUri = paramUri;
    mBitmap = paramBitmap;
    Fi = paramBoolean;
    kI = paramCountDownLatch;
  }
  
  private void a(ImageManager.ImageReceiver paramImageReceiver, boolean paramBoolean)
  {
    paramImageReceiver = ImageManager.ImageReceiver.a(paramImageReceiver);
    int j = paramImageReceiver.size();
    int i = 0;
    if (i < j)
    {
      a locala = (a)paramImageReceiver.get(i);
      if (paramBoolean) {
        locala.a(ImageManager.b(Ff), mBitmap, false);
      }
      for (;;)
      {
        if (!(locala instanceof a.c)) {
          ImageManager.a(Ff).remove(locala);
        }
        i += 1;
        break;
        ImageManager.d(Ff).put(mUri, Long.valueOf(SystemClock.elapsedRealtime()));
        locala.a(ImageManager.b(Ff), ImageManager.c(Ff), false);
      }
    }
  }
  
  public final void run()
  {
    gy.ay("OnBitmapLoadedRunnable must be executed in the main thread");
    boolean bool;
    if (mBitmap != null) {
      bool = true;
    }
    while (ImageManager.h(Ff) != null) {
      if (Fi)
      {
        ImageManager.h(Ff).evictAll();
        System.gc();
        Fi = false;
        ImageManager.g(Ff).post(this);
        return;
        bool = false;
      }
      else if (bool)
      {
        ImageManager.h(Ff).put(new a.a(mUri), mBitmap);
      }
    }
    ??? = (ImageManager.ImageReceiver)ImageManager.e(Ff).remove(mUri);
    if (??? != null) {
      a((ImageManager.ImageReceiver)???, bool);
    }
    kI.countDown();
    synchronized (ImageManager.eY())
    {
      ImageManager.eZ().remove(mUri);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */