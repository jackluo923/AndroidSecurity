package com.google.android.gms.games.internal.events;

import java.util.concurrent.atomic.AtomicReference;

public abstract class EventIncrementManager
{
  private final AtomicReference<EventIncrementCache> Rp = new AtomicReference();
  
  public void flush()
  {
    EventIncrementCache localEventIncrementCache = (EventIncrementCache)Rp.get();
    if (localEventIncrementCache != null) {
      localEventIncrementCache.flush();
    }
  }
  
  protected abstract EventIncrementCache hs();
  
  public void l(String paramString, int paramInt)
  {
    EventIncrementCache localEventIncrementCache2 = (EventIncrementCache)Rp.get();
    EventIncrementCache localEventIncrementCache1 = localEventIncrementCache2;
    if (localEventIncrementCache2 == null)
    {
      localEventIncrementCache2 = hs();
      localEventIncrementCache1 = localEventIncrementCache2;
      if (!Rp.compareAndSet(null, localEventIncrementCache2)) {
        localEventIncrementCache1 = (EventIncrementCache)Rp.get();
      }
    }
    localEventIncrementCache1.u(paramString, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.events.EventIncrementManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */