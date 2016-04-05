package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public abstract class mb<M extends mb<M>>
  extends mf
{
  protected List<mh> amU;
  
  public final <T> T a(mc<M, T> parammc)
  {
    return (T)parammc.i(amU);
  }
  
  public void a(ma paramma)
  {
    if (amU == null) {}
    for (int i = 0;; i = amU.size())
    {
      int j = 0;
      while (j < i)
      {
        mh localmh = (mh)amU.get(j);
        paramma.eI(tag);
        paramma.t(amZ);
        j += 1;
      }
    }
  }
  
  protected final boolean a(lz paramlz, int paramInt)
  {
    int i = paramlz.getPosition();
    if (!paramlz.ev(paramInt)) {
      return false;
    }
    if (amU == null) {
      amU = new ArrayList();
    }
    paramlz = paramlz.o(i, paramlz.getPosition() - i);
    amU.add(new mh(paramInt, paramlz));
    return true;
  }
  
  public int c()
  {
    if (amU == null) {}
    int k;
    for (int i = 0;; i = amU.size())
    {
      int j = 0;
      k = 0;
      while (j < i)
      {
        mh localmh = (mh)amU.get(j);
        k = k + ma.eJ(tag) + amZ.length;
        j += 1;
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */