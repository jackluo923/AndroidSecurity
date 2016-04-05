package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Leaderboards$LeaderboardMetadataResult
  extends Releasable, Result
{
  public abstract LeaderboardBuffer getLeaderboards();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */