package com.google.android.gms.internal;

import java.util.Map;

class ea$2
  implements bd
{
  ea$2(ea paramea) {}
  
  public void b(ey paramey, Map<String, String> paramMap)
  {
    synchronized (ea.a(qC))
    {
      ec localec = new ec(paramMap);
      String str = localec.getUrl();
      if (str == null)
      {
        ev.D("URL missing in loadAdUrl GMSG.");
        return;
      }
      if (str.contains("%40mediation_adapters%40"))
      {
        paramey = str.replaceAll("%40mediation_adapters%40", em.a(paramey.getContext(), (String)paramMap.get("check_adapters"), ea.b(qC)));
        ev.C("Ad request URL modified to " + paramey);
      }
      ea.a(qC, localec);
      ea.a(qC).notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ea.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */