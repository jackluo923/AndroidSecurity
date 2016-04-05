package com.google.android.gms.internal;

import java.util.Map;

public final class ba
  implements bd
{
  private final bb mQ;
  
  public ba(bb parambb)
  {
    mQ = parambb;
  }
  
  public final void b(ey paramey, Map<String, String> paramMap)
  {
    paramey = (String)paramMap.get("name");
    if (paramey == null)
    {
      ev.D("App event with no name parameter.");
      return;
    }
    mQ.onAppEvent(paramey, (String)paramMap.get("info"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */