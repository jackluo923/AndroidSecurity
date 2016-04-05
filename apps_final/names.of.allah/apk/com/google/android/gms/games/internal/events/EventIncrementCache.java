package com.google.android.gms.games.internal.events;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class EventIncrementCache
{
  final Object Rj = new Object();
  private Handler Rk;
  private boolean Rl;
  private HashMap<String, AtomicInteger> Rm;
  private int Rn;
  
  public EventIncrementCache(Looper paramLooper, int paramInt)
  {
    Rk = new Handler(paramLooper);
    Rm = new HashMap();
    Rn = paramInt;
  }
  
  private void hK()
  {
    synchronized (Rj)
    {
      Rl = false;
      flush();
      return;
    }
  }
  
  public void flush()
  {
    synchronized (Rj)
    {
      Iterator localIterator = Rm.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        o((String)localEntry.getKey(), ((AtomicInteger)localEntry.getValue()).get());
      }
    }
    Rm.clear();
  }
  
  protected abstract void o(String paramString, int paramInt);
  
  public void u(String paramString, int paramInt)
  {
    synchronized (Rj)
    {
      if (!Rl)
      {
        Rl = true;
        Rk.postDelayed(new EventIncrementCache.1(this), Rn);
      }
      AtomicInteger localAtomicInteger2 = (AtomicInteger)Rm.get(paramString);
      AtomicInteger localAtomicInteger1 = localAtomicInteger2;
      if (localAtomicInteger2 == null)
      {
        localAtomicInteger1 = new AtomicInteger();
        Rm.put(paramString, localAtomicInteger1);
      }
      localAtomicInteger1.addAndGet(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.events.EventIncrementCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */