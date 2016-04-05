package com.google.android.gms.games;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface GamesMetadata$LoadGamesResult
  extends Releasable, Result
{
  public abstract GameBuffer getGames();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.GamesMetadata.LoadGamesResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */