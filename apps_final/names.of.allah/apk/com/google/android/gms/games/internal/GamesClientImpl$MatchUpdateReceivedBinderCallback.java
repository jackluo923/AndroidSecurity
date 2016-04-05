package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;

final class GamesClientImpl$MatchUpdateReceivedBinderCallback
  extends AbstractGamesCallbacks
{
  private final OnTurnBasedMatchUpdateReceivedListener Og;
  
  GamesClientImpl$MatchUpdateReceivedBinderCallback(GamesClientImpl paramGamesClientImpl, OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
  {
    Og = paramOnTurnBasedMatchUpdateReceivedListener;
  }
  
  public final void onTurnBasedMatchRemoved(String paramString)
  {
    NB.a(new GamesClientImpl.MatchRemovedCallback(NB, Og, paramString));
  }
  
  public final void t(DataHolder paramDataHolder)
  {
    TurnBasedMatchBuffer localTurnBasedMatchBuffer = new TurnBasedMatchBuffer(paramDataHolder);
    paramDataHolder = null;
    try
    {
      if (localTurnBasedMatchBuffer.getCount() > 0) {
        paramDataHolder = (TurnBasedMatch)((TurnBasedMatch)localTurnBasedMatchBuffer.get(0)).freeze();
      }
      localTurnBasedMatchBuffer.close();
      if (paramDataHolder != null) {
        NB.a(new GamesClientImpl.MatchUpdateReceivedCallback(NB, Og, paramDataHolder));
      }
      return;
    }
    finally
    {
      localTurnBasedMatchBuffer.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.MatchUpdateReceivedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */