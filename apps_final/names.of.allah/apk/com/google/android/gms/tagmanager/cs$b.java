package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;

class cs$b
{
  private d.a agV;
  private by<d.a> ahA;
  
  public cs$b(by<d.a> paramby, d.a parama)
  {
    ahA = paramby;
    agV = parama;
  }
  
  public int getSize()
  {
    int j = ((d.a)ahA.getObject()).nU();
    if (agV == null) {}
    for (int i = 0;; i = agV.nU()) {
      return i + j;
    }
  }
  
  public by<d.a> mE()
  {
    return ahA;
  }
  
  public d.a mk()
  {
    return agV;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */