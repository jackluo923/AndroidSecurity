package com.google.android.gms.internal;

import java.util.Map;

class ad$4
  implements bd
{
  ad$4(ad paramad) {}
  
  public void b(ey paramey, Map<String, String> paramMap)
  {
    if ((paramMap.containsKey("pingType")) && ("unloadPing".equals(paramMap.get("pingType"))))
    {
      lK.c(ad.b(lK));
      ev.B("Unregistered GMSG handlers for: " + ad.c(lK).ap());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ad.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */