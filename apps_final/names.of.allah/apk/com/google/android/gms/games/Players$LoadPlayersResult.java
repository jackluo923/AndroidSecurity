package com.google.android.gms.games;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Players$LoadPlayersResult
  extends Releasable, Result
{
  public abstract PlayerBuffer getPlayers();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.Players.LoadPlayersResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */