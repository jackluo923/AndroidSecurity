package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.event.Events.LoadEventsResult;

abstract class EventsImpl$LoadImpl
  extends Games.BaseGamesApiMethodImpl<Events.LoadEventsResult>
{
  public Events.LoadEventsResult A(Status paramStatus)
  {
    return new EventsImpl.LoadImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.EventsImpl.LoadImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */