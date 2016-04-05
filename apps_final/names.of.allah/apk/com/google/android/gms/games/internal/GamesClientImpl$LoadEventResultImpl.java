package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events.LoadEventsResult;

final class GamesClientImpl$LoadEventResultImpl
  extends b
  implements Events.LoadEventsResult
{
  private final EventBuffer NR;
  
  GamesClientImpl$LoadEventResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    NR = new EventBuffer(paramDataHolder);
  }
  
  public final EventBuffer getEvents()
  {
    return NR;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadEventResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */