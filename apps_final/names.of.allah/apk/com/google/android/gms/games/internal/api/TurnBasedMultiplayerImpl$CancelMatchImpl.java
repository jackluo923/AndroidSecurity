package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;

abstract class TurnBasedMultiplayerImpl$CancelMatchImpl
  extends Games.BaseGamesApiMethodImpl<TurnBasedMultiplayer.CancelMatchResult>
{
  private final String xD;
  
  public TurnBasedMultiplayerImpl$CancelMatchImpl(String paramString)
  {
    xD = paramString;
  }
  
  public TurnBasedMultiplayer.CancelMatchResult ad(Status paramStatus)
  {
    return new TurnBasedMultiplayerImpl.CancelMatchImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.CancelMatchImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */