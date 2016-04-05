package com.google.android.gms.internal;

import java.util.Map;

final class bc$5
  implements bd
{
  public final void b(ey paramey, Map<String, String> paramMap)
  {
    paramey = paramey.bV();
    if (paramey == null)
    {
      ev.D("A GMSG tried to use a custom close button on something that wasn't an overlay.");
      return;
    }
    paramey.j("1".equals(paramMap.get("custom_close")));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bc.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */