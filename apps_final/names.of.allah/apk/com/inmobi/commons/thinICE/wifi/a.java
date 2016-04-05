package com.inmobi.commons.thinICE.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;

final class a
  extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      paramContext = WifiScanner.a();
      paramIntent = (WifiManager)WifiScanner.c().getSystemService("wifi");
      WifiScanner.b();
      if (paramContext != null) {
        paramContext.onResultsReceived(paramIntent.getScanResults());
      }
      return;
    }
    catch (Exception paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.wifi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */