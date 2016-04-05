package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events.LoadEventsResult;

class EventsImpl$LoadImpl$1
  implements Events.LoadEventsResult
{
  EventsImpl$LoadImpl$1(EventsImpl.LoadImpl paramLoadImpl, Status paramStatus) {}
  
  public EventBuffer getEvents()
  {
    return new EventBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.EventsImpl.LoadImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */