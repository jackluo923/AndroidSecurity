package com.inmobi.commons.analytics.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class AnalyticsConnectivityReceiver
  extends BroadcastReceiver
{
  private AnalyticsConnectivityReceiver.a a;
  private boolean b;
  
  public AnalyticsConnectivityReceiver(Context paramContext, AnalyticsConnectivityReceiver.a parama)
  {
    a = parama;
    bind(paramContext);
  }
  
  public final void bind(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramContext.registerReceiver(this, localIntentFilter);
  }
  
  public boolean isConnected()
  {
    return b;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("noConnectivity", false))
    {
      b = false;
      if (a != null) {
        a.a();
      }
    }
    do
    {
      do
      {
        return;
      } while (paramIntent.getBooleanExtra("noConnectivity", false));
      b = true;
    } while (a == null);
    a.b();
  }
  
  public void unbind(Context paramContext)
  {
    paramContext.unregisterReceiver(this);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.net.AnalyticsConnectivityReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */