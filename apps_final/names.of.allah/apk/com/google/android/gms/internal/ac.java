package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

public final class ac
  implements ae
{
  private final Object lq = new Object();
  private WeakHashMap<eg, ad> lr = new WeakHashMap();
  private ArrayList<ad> ls = new ArrayList();
  
  public final ad a(am paramam, eg parameg)
  {
    synchronized (lq)
    {
      if (c(parameg))
      {
        paramam = (ad)lr.get(parameg);
        return paramam;
      }
      paramam = new ad(paramam, parameg);
      paramam.a(this);
      lr.put(parameg, paramam);
      ls.add(paramam);
      return paramam;
    }
  }
  
  public final void a(ad paramad)
  {
    synchronized (lq)
    {
      if (!paramad.au()) {
        ls.remove(paramad);
      }
      return;
    }
  }
  
  public final boolean c(eg parameg)
  {
    synchronized (lq)
    {
      parameg = (ad)lr.get(parameg);
      if ((parameg != null) && (parameg.au()))
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }
  
  public final void d(eg parameg)
  {
    synchronized (lq)
    {
      parameg = (ad)lr.get(parameg);
      if (parameg != null) {
        parameg.as();
      }
      return;
    }
  }
  
  public final void pause()
  {
    synchronized (lq)
    {
      Iterator localIterator = ls.iterator();
      if (localIterator.hasNext()) {
        ((ad)localIterator.next()).pause();
      }
    }
  }
  
  public final void resume()
  {
    synchronized (lq)
    {
      Iterator localIterator = ls.iterator();
      if (localIterator.hasNext()) {
        ((ad)localIterator.next()).resume();
      }
    }
  }
  
  public final void stop()
  {
    synchronized (lq)
    {
      Iterator localIterator = ls.iterator();
      if (localIterator.hasNext()) {
        ((ad)localIterator.next()).stop();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */