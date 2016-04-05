package com.google.android.gms.internal;

import java.util.Map;

final class bc$8
  implements bd
{
  public final void b(ey paramey, Map<String, String> paramMap)
  {
    String str1 = (String)paramMap.get("tx");
    String str2 = (String)paramMap.get("ty");
    paramMap = (String)paramMap.get("td");
    try
    {
      int i = Integer.parseInt(str1);
      int j = Integer.parseInt(str2);
      int k = Integer.parseInt(paramMap);
      paramey = paramey.bX();
      if (paramey != null) {
        paramey.y().a(i, j, k);
      }
      return;
    }
    catch (NumberFormatException paramey)
    {
      ev.D("Could not parse touch parameters from gmsg.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bc.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */