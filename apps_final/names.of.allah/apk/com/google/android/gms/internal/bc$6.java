package com.google.android.gms.internal;

import java.util.Map;

final class bc$6
  implements bd
{
  public final void b(ey paramey, Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("u");
    if (paramMap == null)
    {
      ev.D("URL missing from httpTrack GMSG.");
      return;
    }
    new et(paramey.getContext(), bYst, paramMap).start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bc.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */