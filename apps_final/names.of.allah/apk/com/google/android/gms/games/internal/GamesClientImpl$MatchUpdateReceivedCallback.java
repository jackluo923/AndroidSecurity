package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$MatchUpdateReceivedCallback
  extends hc<IGamesService>.b<OnTurnBasedMatchUpdateReceivedListener>
{
  private final TurnBasedMatch Oh;
  
  GamesClientImpl$MatchUpdateReceivedCallback(GamesClientImpl paramGamesClientImpl, OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener, TurnBasedMatch paramTurnBasedMatch)
  {
    super(paramGamesClientImpl, paramOnTurnBasedMatchUpdateReceivedListener);
    Oh = paramTurnBasedMatch;
  }
  
  protected final void b(OnTurnBasedMatchUpdateReceivedListener paramOnTurnBasedMatchUpdateReceivedListener)
  {
    paramOnTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchReceived(Oh);
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.MatchUpdateReceivedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */