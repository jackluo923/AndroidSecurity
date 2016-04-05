package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult;

class LeaderboardsImpl$LoadScoresImpl$1
  implements Leaderboards.LoadScoresResult
{
  LeaderboardsImpl$LoadScoresImpl$1(LeaderboardsImpl.LoadScoresImpl paramLoadScoresImpl, Status paramStatus) {}
  
  public Leaderboard getLeaderboard()
  {
    return null;
  }
  
  public LeaderboardScoreBuffer getScores()
  {
    return new LeaderboardScoreBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.LeaderboardsImpl.LoadScoresImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */