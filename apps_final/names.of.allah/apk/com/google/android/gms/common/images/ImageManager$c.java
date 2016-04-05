package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.internal.gy;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

final class ImageManager$c
  implements Runnable
{
  private final ParcelFileDescriptor Fg;
  private final Uri mUri;
  
  public ImageManager$c(ImageManager paramImageManager, Uri paramUri, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    mUri = paramUri;
    Fg = paramParcelFileDescriptor;
  }
  
  public final void run()
  {
    gy.az("LoadBitmapFromDiskRunnable can't be executed in the main thread");
    boolean bool1 = false;
    boolean bool2 = false;
    Bitmap localBitmap = null;
    CountDownLatch localCountDownLatch = null;
    if (Fg != null) {}
    try
    {
      localBitmap = BitmapFactory.decodeFileDescriptor(Fg.getFileDescriptor());
      bool1 = bool2;
      Object localObject;
      return;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      try
      {
        for (;;)
        {
          Fg.close();
          localCountDownLatch = new CountDownLatch(1);
          ImageManager.g(Ff).post(new ImageManager.f(Ff, mUri, localBitmap, bool1, localCountDownLatch));
          try
          {
            localCountDownLatch.await();
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            Log.w("ImageManager", "Latch interrupted while posting " + mUri);
          }
          localOutOfMemoryError = localOutOfMemoryError;
          Log.e("ImageManager", "OOM while loading bitmap for uri: " + mUri, localOutOfMemoryError);
          bool1 = true;
          localObject = localCountDownLatch;
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Log.e("ImageManager", "closed failed", localIOException);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */