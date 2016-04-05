package com.inmobi.commons.thinICE.icedatacollector;

import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.location.LocationInfo;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class Sample
{
  public CellOperatorInfo cellOperator;
  public CellTowerInfo connectedCellTowerInfo;
  public WifiInfo connectedWifiAp;
  public HashMap<String, LocationInfo> lastKnownLocations;
  public long utc;
  public List<WifiInfo> visibleWifiAp;
  public int zoneOffset;
  
  Sample()
  {
    Calendar localCalendar = Calendar.getInstance();
    utc = localCalendar.getTimeInMillis();
    int i = localCalendar.get(15);
    zoneOffset = (localCalendar.get(16) + i);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append("[\n");
    localStringBuilder.append("-- utc: ").append(utc).append("\n");
    localStringBuilder.append("-- zoneOffset: ").append(zoneOffset).append("\n");
    localStringBuilder.append("-- cell operator: ").append(cellOperator).append("\n");
    localStringBuilder.append("-- connected wifi access point: ").append(connectedWifiAp).append("\n");
    localStringBuilder.append("-- last known locations:");
    if (lastKnownLocations == null)
    {
      localStringBuilder.append(" null\n");
      localStringBuilder.append("-- visible wifi aps:");
      if (visibleWifiAp != null) {
        break label232;
      }
      localStringBuilder.append(" null\n");
    }
    for (;;)
    {
      localStringBuilder.append("-- connected serving cell tower: ").append(connectedCellTowerInfo).append("\n");
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      localStringBuilder.append("\n");
      Iterator localIterator = lastKnownLocations.values().iterator();
      Object localObject;
      while (localIterator.hasNext())
      {
        localObject = (LocationInfo)localIterator.next();
        localStringBuilder.append("   + ").append(localObject).append("\n");
      }
      break;
      label232:
      localStringBuilder.append("\n");
      localIterator = visibleWifiAp.iterator();
      while (localIterator.hasNext())
      {
        localObject = (WifiInfo)localIterator.next();
        localStringBuilder.append("   + ").append(localObject).append("\n");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.icedatacollector.Sample
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */