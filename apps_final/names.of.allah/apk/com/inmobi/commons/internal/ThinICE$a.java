package com.inmobi.commons.internal;

import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import com.inmobi.commons.cache.RetryMechanism.RetryRunnable;

final class ThinICE$a
  implements RetryMechanism.RetryRunnable
{
  ThinICE$a(String paramString) {}
  
  public final void completed() {}
  
  public final void run()
  {
    Log.internal("[InMobi]-4.4.1", "Sending ThinICE data to server " + AnalyticsInitializer.getConfigParams().getThinIceConfig().getEndpointUrl());
    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
    {
      ThinICE.a(a);
      return;
    }
    throw new Exception("Device not connected.");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.ThinICE.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */