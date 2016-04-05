package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$MatchRemovedCallback
  extends hc<IGamesService>.b<OnTurnBasedMatchUpdateReceivedListener>
{
  private final String Of;
  
  GamesClientImpl$MatchRemovedCallback(GamesClientImpl paramGamesClientImpl, OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener, String paramString)
  {
    super(paramGamesClientImpl, paramOnTurnBasedMatchUpdateReceivedListener);
    Of = paramString;
  }
  
  protected final void b(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
  {
    paramOnTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchRemoved(Of);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.MatchRemovedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */