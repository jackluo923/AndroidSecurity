package com.google.analytics.tracking.android;

import com.google.android.gms.analytics.internal.Command;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class GAServiceProxy$HitParams
{
  private final List<Command> commands;
  private final long hitTimeInMilliseconds;
  private final String path;
  private final Map<String, String> wireFormatParams;
  
  public GAServiceProxy$HitParams(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList)
  {
    wireFormatParams = paramMap;
    hitTimeInMilliseconds = paramLong;
    path = paramString;
    commands = paramList;
  }
  
  public List<Command> getCommands()
  {
    return commands;
  }
  
  public long getHitTimeInMilliseconds()
  {
    return hitTimeInMilliseconds;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public Map<String, String> getWireFormatParams()
  {
    return wireFormatParams;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PATH: ");
    localStringBuilder.append(path);
    if (wireFormatParams != null)
    {
      localStringBuilder.append("  PARAMS: ");
      Iterator localIterator = wireFormatParams.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append((String)localEntry.getValue());
        localStringBuilder.append(",  ");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceProxy.HitParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */