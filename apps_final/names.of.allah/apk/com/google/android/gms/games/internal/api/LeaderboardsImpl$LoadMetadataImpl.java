package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;

abstract class LeaderboardsImpl$LoadMetadataImpl
  extends Games.BaseGamesApiMethodImpl<Leaderboards.LeaderboardMetadataResult>
{
  public Leaderboards.LeaderboardMetadataResult G(Status paramStatus)
  {
    return new LeaderboardsImpl.LoadMetadataImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.LeaderboardsImpl.LoadMetadataImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */