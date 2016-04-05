package com.google.android.gms.analytics;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class ab
{
  private final Map<String, Integer> wI = new HashMap();
  private final Map<String, String> wJ = new HashMap();
  private final boolean wK;
  private final String wL;
  
  ab(String paramString, boolean paramBoolean)
  {
    wK = paramBoolean;
    wL = paramString;
  }
  
  void c(String paramString, int paramInt)
  {
    if (!wK) {
      return;
    }
    Integer localInteger2 = (Integer)wI.get(paramString);
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    wI.put(paramString, Integer.valueOf(localInteger1.intValue() + paramInt));
  }
  
  String dl()
  {
    if (!wK) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(wL);
    Iterator localIterator = wI.keySet().iterator();
    String str;
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append(wI.get(str));
    }
    localIterator = wJ.keySet().iterator();
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append((String)wJ.get(str));
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */