package com.google.android.gms.tagmanager;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class cq$c
{
  private final String aeR;
  private final List<cq.e> agW;
  private final Map<String, List<cq.a>> agX;
  private final int agY;
  
  private cq$c(List<cq.e> paramList, Map<String, List<cq.a>> paramMap, String paramString, int paramInt)
  {
    agW = Collections.unmodifiableList(paramList);
    agX = Collections.unmodifiableMap(paramMap);
    aeR = paramString;
    agY = paramInt;
  }
  
  public static cq.d mm()
  {
    return new cq.d(null);
  }
  
  public String getVersion()
  {
    return aeR;
  }
  
  public List<cq.e> mn()
  {
    return agW;
  }
  
  public Map<String, List<cq.a>> mo()
  {
    return agX;
  }
  
  public String toString()
  {
    return "Rules: " + mn() + "  Macros: " + agX;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cq.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */