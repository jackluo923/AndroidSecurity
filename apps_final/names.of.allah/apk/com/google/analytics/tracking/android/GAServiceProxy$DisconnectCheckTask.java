package com.google.analytics.tracking.android;

import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class GAServiceProxy$DisconnectCheckTask
  extends TimerTask
{
  private GAServiceProxy$DisconnectCheckTask(GAServiceProxy paramGAServiceProxy) {}
  
  public void run()
  {
    if ((GAServiceProxy.access$400(this$0) == GAServiceProxy.ConnectState.CONNECTED_SERVICE) && (GAServiceProxy.access$700(this$0).isEmpty()) && (GAServiceProxy.access$800(this$0) + GAServiceProxy.access$900(this$0) < GAServiceProxy.access$1000(this$0).currentTimeMillis()))
    {
      Log.v("Disconnecting due to inactivity");
      GAServiceProxy.access$1100(this$0);
      return;
    }
    GAServiceProxy.access$1200(this$0).schedule(new DisconnectCheckTask(this$0), GAServiceProxy.access$900(this$0));
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceProxy.DisconnectCheckTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */