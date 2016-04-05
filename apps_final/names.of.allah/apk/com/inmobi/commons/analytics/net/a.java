package com.inmobi.commons.analytics.net;

import android.os.Handler;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;

final class a
  implements AnalyticsConnectivityReceiver.a
{
  public final void a()
  {
    Log.internal("[InMobi]-[Analytics]-4.4.1", "Connectivity gone");
  }
  
  public final void b()
  {
    Log.internal("[InMobi]-[Analytics]-4.4.1", "Connectivity came");
    if ((AnalyticsNetworkManager.a() != null) && (!AnalyticsUtils.getStartHandle()))
    {
      AnalyticsUtils.setStartHandle(true);
      AnalyticsNetworkManager.a().sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.net.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */