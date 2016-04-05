package com.inmobi.commons.thinICE.wifi;

final class b
  implements Runnable
{
  public final void run()
  {
    WifiScanListener localWifiScanListener = WifiScanner.a();
    WifiScanner.b();
    if (localWifiScanListener != null) {
      localWifiScanListener.onTimeout();
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.wifi.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */