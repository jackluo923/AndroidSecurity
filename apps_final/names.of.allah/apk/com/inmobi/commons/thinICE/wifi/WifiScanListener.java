package com.inmobi.commons.thinICE.wifi;

import android.net.wifi.ScanResult;
import java.util.List;

public abstract interface WifiScanListener
{
  public abstract void onResultsReceived(List<ScanResult> paramList);
  
  public abstract void onTimeout();
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.wifi.WifiScanListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */