package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

class LeaderboardsImpl$SubmitScoreImpl$1
  implements Leaderboards.SubmitScoreResult
{
  LeaderboardsImpl$SubmitScoreImpl$1(LeaderboardsImpl.SubmitScoreImpl paramSubmitScoreImpl, Status paramStatus) {}
  
  public ScoreSubmissionData getScoreData()
  {
    return new ScoreSubmissionData(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.LeaderboardsImpl.SubmitScoreImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */