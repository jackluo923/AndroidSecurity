package com.adsdk.sdk.video;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

class RichMediaActivity$ResourceHandler
  extends Handler
{
  WeakReference<RichMediaActivity> richMediaActivity;
  
  public RichMediaActivity$ResourceHandler(RichMediaActivity paramRichMediaActivity)
  {
    richMediaActivity = new WeakReference(paramRichMediaActivity);
  }
  
  public void handleMessage(Message paramMessage)
  {
    RichMediaActivity localRichMediaActivity = (RichMediaActivity)richMediaActivity.get();
    if (localRichMediaActivity != null) {
      localRichMediaActivity.handleMessage(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.ResourceHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */