package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.HashMap;
import java.util.Map;

public class cq$b
{
  private final Map<String, d.a> agU = new HashMap();
  private d.a agV;
  
  public b b(String paramString, d.a parama)
  {
    agU.put(paramString, parama);
    return this;
  }
  
  public b i(d.a parama)
  {
    agV = parama;
    return this;
  }
  
  public cq.a ml()
  {
    return new cq.a(agU, agV, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cq.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */