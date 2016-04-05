package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.Collections;
import java.util.Map;

public class cq$a
{
  private final Map<String, d.a> agU;
  private final d.a agV;
  
  private cq$a(Map<String, d.a> paramMap, d.a parama)
  {
    agU = paramMap;
    agV = parama;
  }
  
  public static cq.b mi()
  {
    return new cq.b(null);
  }
  
  public void a(String paramString, d.a parama)
  {
    agU.put(paramString, parama);
  }
  
  public Map<String, d.a> mj()
  {
    return Collections.unmodifiableMap(agU);
  }
  
  public d.a mk()
  {
    return agV;
  }
  
  public String toString()
  {
    return "Properties: " + mj() + " pushAfterEvaluate: " + agV;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */