package com.google.android.gms.analytics;

import com.google.android.gms.internal.fe;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class s$d
{
  private final Map<String, String> uD;
  private final long uE;
  private final String uF;
  private final List<fe> uG;
  
  public s$d(Map<String, String> paramMap, long paramLong, String paramString, List<fe> paramList)
  {
    uD = paramMap;
    uE = paramLong;
    uF = paramString;
    uG = paramList;
  }
  
  public Map<String, String> cM()
  {
    return uD;
  }
  
  public long cN()
  {
    return uE;
  }
  
  public List<fe> cO()
  {
    return uG;
  }
  
  public String getPath()
  {
    return uF;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PATH: ");
    localStringBuilder.append(uF);
    if (uD != null)
    {
      localStringBuilder.append("  PARAMS: ");
      Iterator localIterator = uD.entrySet().iterator();
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
 * Qualified Name:     com.google.android.gms.analytics.s.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */