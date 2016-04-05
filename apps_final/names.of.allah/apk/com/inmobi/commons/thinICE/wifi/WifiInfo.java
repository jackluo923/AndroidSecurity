package com.inmobi.commons.thinICE.wifi;

public final class WifiInfo
{
  public long bssid;
  public int ip;
  public int rssi;
  public String ssid;
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append("[");
    localStringBuilder.append("bssid=").append(bssid).append(", ");
    localStringBuilder.append("ssid=").append(ssid).append(", ");
    localStringBuilder.append("rssi=").append(rssi).append(", ");
    localStringBuilder.append("ip=").append(String.format("%d.%d.%d.%d", new Object[] { Integer.valueOf(ip & 0xFF), Integer.valueOf(ip >> 8 & 0xFF), Integer.valueOf(ip >> 16 & 0xFF), Integer.valueOf(ip >> 24 & 0xFF) }));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.wifi.WifiInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */