package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult;

abstract class LeaderboardsImpl$LoadPlayerScoreImpl
  extends Games.BaseGamesApiMethodImpl<Leaderboards.LoadPlayerScoreResult>
{
  public Leaderboards.LoadPlayerScoreResult H(Status paramStatus)
  {
    return new LeaderboardsImpl.LoadPlayerScoreImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.LeaderboardsImpl.LoadPlayerScoreImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */