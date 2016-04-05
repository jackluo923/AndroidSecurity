package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.Players.LoadXpForGameCategoriesResult;

abstract class PlayersImpl$LoadXpForGameCategoriesResultImpl
  extends Games.BaseGamesApiMethodImpl<Players.LoadXpForGameCategoriesResult>
{
  public Players.LoadXpForGameCategoriesResult Q(Status paramStatus)
  {
    return new PlayersImpl.LoadXpForGameCategoriesResultImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.PlayersImpl.LoadXpForGameCategoriesResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */