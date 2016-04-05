package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import java.util.Iterator;
import java.util.List;

public final class bl
{
  private final bu kz;
  private final Object lq = new Object();
  private final Context mContext;
  private final dt nc;
  private final bn nd;
  private boolean ne = false;
  private bq nf;
  
  public bl(Context paramContext, dt paramdt, bu parambu, bn parambn)
  {
    mContext = paramContext;
    nc = paramdt;
    kz = parambu;
    nd = parambn;
  }
  
  public final br a(long paramLong1, long paramLong2)
  {
    ev.z("Starting mediation.");
    Object localObject2 = nd.np.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      bm localbm = (bm)((Iterator)localObject2).next();
      ev.B("Trying mediation network: " + nj);
      Iterator localIterator = nk.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        synchronized (lq)
        {
          if (ne)
          {
            localObject2 = new br(-1);
            return (br)localObject2;
          }
          nf = new bq(mContext, str, kz, nd, localbm, nc.pV, nc.kR, nc.kO);
          ??? = nf.b(paramLong1, paramLong2);
          if (nJ == 0)
          {
            ev.z("Adapter succeeded.");
            return (br)???;
          }
        }
        if (nL != null) {
          eu.ss.post(new bl.1(this, (br)???));
        }
      }
    }
    return new br(1);
  }
  
  public final void cancel()
  {
    synchronized (lq)
    {
      ne = true;
      if (nf != null) {
        nf.cancel();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */