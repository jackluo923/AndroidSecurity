package kagegames.apps.DWBeta;

import android.graphics.Bitmap;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.util.HashMap;

class ImageThreadLoader$QueueRunner$1
  implements Runnable
{
  final ImageThreadLoader.QueueRunner this$1;
  
  ImageThreadLoader$QueueRunner$1(ImageThreadLoader.QueueRunner paramQueueRunner, ImageThreadLoader.QueueItem paramQueueItem) {}
  
  public void run()
  {
    Object localObject2 = val$item;
    localObject2 = listener;
    if (localObject2 != null)
    {
      localObject2 = this$1;
      localObject2 = ImageThreadLoader.QueueRunner.access$1((ImageThreadLoader.QueueRunner)localObject2);
      localObject2 = ImageThreadLoader.access$1((ImageThreadLoader)localObject2);
      Object localObject3 = val$item;
      localObject3 = url;
      localObject3 = ((URL)localObject3).toString();
      Object localObject1 = ((HashMap)localObject2).get(localObject3);
      localObject1 = (SoftReference)localObject1;
      if (localObject1 != null)
      {
        localObject2 = val$item;
        localObject2 = listener;
        this = ((SoftReference)localObject1).get();
        this = (Bitmap)this;
        ((ImageThreadLoader.ImageLoadedListener)localObject2).imageLoaded(this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ImageThreadLoader.QueueRunner.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */