package com.google.analytics.tracking.android;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class GAServiceManager$2
  implements Handler.Callback
{
  GAServiceManager$2(GAServiceManager paramGAServiceManager) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (GAServiceManager.access$100().equals(obj)))
    {
      GAUsage.getInstance().setDisableUsage(true);
      this$0.dispatchLocalHits();
      GAUsage.getInstance().setDisableUsage(false);
      if ((GAServiceManager.access$200(this$0) > 0) && (!GAServiceManager.access$300(this$0))) {
        GAServiceManager.access$400(this$0).sendMessageDelayed(GAServiceManager.access$400(this$0).obtainMessage(1, GAServiceManager.access$100()), GAServiceManager.access$200(this$0) * 1000);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */