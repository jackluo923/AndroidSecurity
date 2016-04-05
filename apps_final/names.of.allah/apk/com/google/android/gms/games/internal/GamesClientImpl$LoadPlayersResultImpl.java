package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.Players.LoadPlayersResult;

final class GamesClientImpl$LoadPlayersResultImpl
  extends b
  implements Players.LoadPlayersResult
{
  private final PlayerBuffer NY;
  
  GamesClientImpl$LoadPlayersResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    NY = new PlayerBuffer(paramDataHolder);
  }
  
  public final PlayerBuffer getPlayers()
  {
    return NY;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadPlayersResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */