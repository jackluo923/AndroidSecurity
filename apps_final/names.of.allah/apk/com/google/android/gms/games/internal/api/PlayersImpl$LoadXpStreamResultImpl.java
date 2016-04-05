package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.Players.LoadXpStreamResult;

abstract class PlayersImpl$LoadXpStreamResultImpl
  extends Games.BaseGamesApiMethodImpl<Players.LoadXpStreamResult>
{
  public Players.LoadXpStreamResult R(Status paramStatus)
  {
    return new PlayersImpl.LoadXpStreamResultImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.PlayersImpl.LoadXpStreamResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */