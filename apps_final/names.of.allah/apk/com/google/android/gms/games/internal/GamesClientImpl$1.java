package com.google.android.gms.games.internal;

import com.google.android.gms.games.internal.events.EventIncrementCache;
import com.google.android.gms.games.internal.events.EventIncrementManager;

class GamesClientImpl$1
  extends EventIncrementManager
{
  GamesClientImpl$1(GamesClientImpl paramGamesClientImpl) {}
  
  public EventIncrementCache hs()
  {
    return new GamesClientImpl.GameClientEventIncrementCache(NB);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */