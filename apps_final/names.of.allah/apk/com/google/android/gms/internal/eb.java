package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class eb
{
  private int mOrientation = -1;
  private String qD;
  private String qE;
  private String qF;
  private List<String> qG;
  private String qH;
  private String qI;
  private List<String> qJ;
  private long qK = -1L;
  private boolean qL = false;
  private final long qM = -1L;
  private List<String> qN;
  private long qO = -1L;
  
  private static String a(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      return (String)paramMap.get(0);
    }
    return null;
  }
  
  private static long b(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      try
      {
        float f = Float.parseFloat(paramMap);
        return (f * 1000.0F);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        ev.D("Could not parse float from " + paramString + " header: " + paramMap);
      }
    }
    return -1L;
  }
  
  private static List<String> c(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (paramMap != null) {
        return Arrays.asList(paramMap.trim().split("\\s+"));
      }
    }
    return null;
  }
  
  private void e(Map<String, List<String>> paramMap)
  {
    qD = a(paramMap, "X-Afma-Ad-Size");
  }
  
  private void f(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Click-Tracking-Urls");
    if (paramMap != null) {
      qG = paramMap;
    }
  }
  
  private void g(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Debug-Dialog");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      qH = ((String)paramMap.get(0));
    }
  }
  
  private void h(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Tracking-Urls");
    if (paramMap != null) {
      qJ = paramMap;
    }
  }
  
  private void i(Map<String, List<String>> paramMap)
  {
    long l = b(paramMap, "X-Afma-Interstitial-Timeout");
    if (l != -1L) {
      qK = l;
    }
  }
  
  private void j(Map<String, List<String>> paramMap)
  {
    qI = a(paramMap, "X-Afma-ActiveView");
  }
  
  private void k(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Mediation");
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      qL = Boolean.valueOf((String)paramMap.get(0)).booleanValue();
    }
  }
  
  private void l(Map<String, List<String>> paramMap)
  {
    paramMap = c(paramMap, "X-Afma-Manual-Tracking-Urls");
    if (paramMap != null) {
      qN = paramMap;
    }
  }
  
  private void m(Map<String, List<String>> paramMap)
  {
    long l = b(paramMap, "X-Afma-Refresh-Rate");
    if (l != -1L) {
      qO = l;
    }
  }
  
  private void n(Map<String, List<String>> paramMap)
  {
    paramMap = (List)paramMap.get("X-Afma-Orientation");
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (!"portrait".equalsIgnoreCase(paramMap)) {
        break label53;
      }
      mOrientation = ep.bN();
    }
    label53:
    while (!"landscape".equalsIgnoreCase(paramMap)) {
      return;
    }
    mOrientation = ep.bM();
  }
  
  public final void a(String paramString1, Map<String, List<String>> paramMap, String paramString2)
  {
    qE = paramString1;
    qF = paramString2;
    d(paramMap);
  }
  
  public final void d(Map<String, List<String>> paramMap)
  {
    e(paramMap);
    f(paramMap);
    g(paramMap);
    h(paramMap);
    i(paramMap);
    k(paramMap);
    l(paramMap);
    m(paramMap);
    n(paramMap);
    j(paramMap);
  }
  
  public final dv i(long paramLong)
  {
    return new dv(qE, qF, qG, qJ, qK, qL, -1L, qN, qO, mOrientation, qD, paramLong, qH, qI);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */