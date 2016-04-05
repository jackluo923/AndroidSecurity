package kagegames.apps.DWBeta;

import android.graphics.Bitmap;

class ImageThreadLoader$QueueRunner$2
  implements Runnable
{
  final ImageThreadLoader.QueueRunner this$1;
  
  ImageThreadLoader$QueueRunner$2(ImageThreadLoader.QueueRunner paramQueueRunner, ImageThreadLoader.QueueItem paramQueueItem, Bitmap paramBitmap) {}
  
  public void run()
  {
    Object localObject = val$item;
    localObject = listener;
    if (localObject != null)
    {
      localObject = val$item;
      localObject = listener;
      Bitmap localBitmap = val$bmp;
      ((ImageThreadLoader.ImageLoadedListener)localObject).imageLoaded(localBitmap);
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ImageThreadLoader.QueueRunner.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */