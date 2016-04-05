package com.google.analytics.tracking.android;

import java.util.TimerTask;

class GAServiceProxy$FailedConnectTask
  extends TimerTask
{
  private GAServiceProxy$FailedConnectTask(GAServiceProxy paramGAServiceProxy) {}
  
  public void run()
  {
    if (GAServiceProxy.access$400(this$0) == GAServiceProxy.ConnectState.CONNECTING) {
      GAServiceProxy.access$500(this$0);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceProxy.FailedConnectTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */