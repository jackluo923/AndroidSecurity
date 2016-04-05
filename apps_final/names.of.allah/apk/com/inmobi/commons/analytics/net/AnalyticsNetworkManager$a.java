package com.inmobi.commons.analytics.net;

import android.os.Handler;
import android.os.Looper;

class AnalyticsNetworkManager$a
  extends Thread
{
  AnalyticsNetworkManager$a(AnalyticsNetworkManager paramAnalyticsNetworkManager) {}
  
  public void run()
  {
    Looper.prepare();
    AnalyticsNetworkManager.a(new Handler(new AnalyticsNetworkManager.a.a(this)));
    Looper.loop();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.net.AnalyticsNetworkManager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */