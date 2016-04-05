package com.google.android.gms.games.internal.api;

import com.google.android.gms.games.internal.GamesClientImpl;

class PlayersImpl$6
  extends PlayersImpl.LoadPlayersImpl
{
  PlayersImpl$6(PlayersImpl paramPlayersImpl, int paramInt)
  {
    super(null);
  }
  
  protected void a(GamesClientImpl paramGamesClientImpl)
  {
    paramGamesClientImpl.a(this, "played_with", Ps, true, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.PlayersImpl.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */