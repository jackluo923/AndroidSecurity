package com.adsdk.sdk.video;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

class MediaController$ResourceHandler
  extends Handler
{
  private final WeakReference<MediaController> mController;
  
  public MediaController$ResourceHandler(MediaController paramMediaController)
  {
    mController = new WeakReference(paramMediaController);
  }
  
  public void handleMessage(Message paramMessage)
  {
    MediaController localMediaController = (MediaController)mController.get();
    if (localMediaController != null) {
      MediaController.access$1(localMediaController, paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.MediaController.ResourceHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */