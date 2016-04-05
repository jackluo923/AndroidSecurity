package kagegames.apps.DWBeta;

import android.graphics.Bitmap;
import android.os.Handler;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;

class ImageThreadLoader$QueueRunner
  implements Runnable
{
  final ImageThreadLoader this$0;
  
  private ImageThreadLoader$QueueRunner(ImageThreadLoader paramImageThreadLoader) {}
  
  ImageThreadLoader$QueueRunner(ImageThreadLoader paramImageThreadLoader, QueueRunner paramQueueRunner)
  {
    this(paramImageThreadLoader);
  }
  
  public void run()
  {
    for (;;)
    {
      Object localObject1;
      Object localObject7;
      try
      {
        Object localObject2 = this$0;
        localObject2 = ImageThreadLoader.access$0((ImageThreadLoader)localObject2);
        int i = ((ArrayList)localObject2).size();
        if (i <= 0) {
          return;
        }
        Object localObject3 = this$0;
        localObject3 = ImageThreadLoader.access$0((ImageThreadLoader)localObject3);
        int j = 0;
        localObject1 = ((ArrayList)localObject3).remove(j);
        localObject1 = (ImageThreadLoader.QueueItem)localObject1;
        localObject3 = this$0;
        localObject3 = ImageThreadLoader.access$1((ImageThreadLoader)localObject3);
        localObject7 = url;
        localObject7 = ((URL)localObject7).toString();
        boolean bool = ((HashMap)localObject3).containsKey(localObject7);
        if (bool)
        {
          Object localObject4 = this$0;
          localObject4 = ImageThreadLoader.access$1((ImageThreadLoader)localObject4);
          localObject7 = url;
          localObject7 = ((URL)localObject7).toString();
          localObject4 = ((HashMap)localObject4).get(localObject7);
          if (localObject4 != null)
          {
            localObject4 = this$0;
            localObject4 = ImageThreadLoader.access$2((ImageThreadLoader)localObject4);
            localObject7 = new kagegames/apps/DWBeta/ImageThreadLoader$QueueRunner$1;
            ((ImageThreadLoader.QueueRunner.1)localObject7).<init>(this, (ImageThreadLoader.QueueItem)localObject1);
            ((Handler)localObject4).post((Runnable)localObject7);
            continue;
          }
        }
        localObject6 = url;
      }
      finally {}
      Object localObject6;
      Bitmap localBitmap = ImageThreadLoader.readBitmapFromNetwork((URL)localObject6);
      if (localBitmap != null)
      {
        localObject6 = this$0;
        localObject6 = ImageThreadLoader.access$1((ImageThreadLoader)localObject6);
        localObject7 = url;
        localObject7 = ((URL)localObject7).toString();
        SoftReference localSoftReference = new java/lang/ref/SoftReference;
        localSoftReference.<init>(localBitmap);
        ((HashMap)localObject6).put(localObject7, localSoftReference);
        localObject6 = this$0;
        localObject6 = ImageThreadLoader.access$2((ImageThreadLoader)localObject6);
        localObject7 = new kagegames/apps/DWBeta/ImageThreadLoader$QueueRunner$2;
        ((ImageThreadLoader.QueueRunner.2)localObject7).<init>(this, (ImageThreadLoader.QueueItem)localObject1, localBitmap);
        ((Handler)localObject6).post((Runnable)localObject7);
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ImageThreadLoader.QueueRunner
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */