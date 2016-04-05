package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.Players.LoadPlayersResult;

class PlayersImpl$LoadPlayersImpl$1
  implements Players.LoadPlayersResult
{
  PlayersImpl$LoadPlayersImpl$1(PlayersImpl.LoadPlayersImpl paramLoadPlayersImpl, Status paramStatus) {}
  
  public PlayerBuffer getPlayers()
  {
    return new PlayerBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.PlayersImpl.LoadPlayersImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */