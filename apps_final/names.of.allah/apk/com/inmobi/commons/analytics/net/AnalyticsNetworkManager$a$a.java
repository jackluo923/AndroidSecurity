package com.inmobi.commons.analytics.net;

import android.os.Handler.Callback;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.AutomaticCaptureConfig;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;

class AnalyticsNetworkManager$a$a
  implements Handler.Callback
{
  AnalyticsNetworkManager$a$a(AnalyticsNetworkManager.a parama) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    Log.debug("[InMobi]-[Analytics]-4.4.1", "NetworkManager->handleMessag: msg:" + paramMessage);
    if (what == 1001)
    {
      if ((!AnalyticsInitializer.getConfigParams().getAutomaticCapture().getAutoSessionCapture()) && (!AnalyticsEventsWrapper.isEventsUser())) {
        AnalyticsUtils.setStartHandle(false);
      }
    }
    else {
      return true;
    }
    AnalyticsNetworkManager.a(a.a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.net.AnalyticsNetworkManager.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */