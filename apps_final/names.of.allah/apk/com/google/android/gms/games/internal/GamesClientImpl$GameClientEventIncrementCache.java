package com.google.android.gms.games.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.games.internal.events.EventIncrementCache;

class GamesClientImpl$GameClientEventIncrementCache
  extends EventIncrementCache
{
  public GamesClientImpl$GameClientEventIncrementCache(GamesClientImpl paramGamesClientImpl)
  {
    super(paramGamesClientImpl.getContext().getMainLooper(), 1000);
  }
  
  protected void o(String paramString, int paramInt)
  {
    try
    {
      ((IGamesService)NB.fo()).l(paramString, paramInt);
      return;
    }
    catch (RemoteException paramString)
    {
      GamesLog.j("GamesClientImpl", "service died");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GameClientEventIncrementCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */