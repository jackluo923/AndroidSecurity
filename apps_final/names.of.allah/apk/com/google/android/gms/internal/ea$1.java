package com.google.android.gms.internal;

import java.util.Map;

class ea$1
  implements bd
{
  ea$1(ea paramea) {}
  
  public void b(ey arg1, Map<String, String> paramMap)
  {
    synchronized (ea.a(qC))
    {
      paramMap = new ec(paramMap);
      ev.D("Invalid " + paramMap.getType() + " request error: " + paramMap.bt());
      ea.a(qC, 1);
      ea.a(qC).notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ea.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */