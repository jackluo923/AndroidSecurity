package com.google.android.gms.internal;

import java.util.Map;

final class bc$4
  implements bd
{
  public final void b(ey paramey, Map<String, String> paramMap)
  {
    paramey = paramey.bV();
    if (paramey == null)
    {
      ev.D("A GMSG tried to close something that wasn't an overlay.");
      return;
    }
    paramey.close();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bc.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */