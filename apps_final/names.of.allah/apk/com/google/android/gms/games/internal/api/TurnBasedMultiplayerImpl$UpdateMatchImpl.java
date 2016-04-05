package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;

abstract class TurnBasedMultiplayerImpl$UpdateMatchImpl
  extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.UpdateMatchResult>
{
  public TurnBasedMultiplayer.UpdateMatchResult ai(Status paramStatus)
  {
    return new TurnBasedMultiplayerImpl.UpdateMatchImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.UpdateMatchImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */