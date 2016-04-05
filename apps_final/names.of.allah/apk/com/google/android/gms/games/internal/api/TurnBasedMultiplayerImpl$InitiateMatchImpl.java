package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;

abstract class TurnBasedMultiplayerImpl$InitiateMatchImpl
  extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.InitiateMatchResult>
{
  public TurnBasedMultiplayer.InitiateMatchResult ae(Status paramStatus)
  {
    return new TurnBasedMultiplayerImpl.InitiateMatchImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.InitiateMatchImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */