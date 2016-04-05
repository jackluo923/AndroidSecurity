package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

final class GamesClientImpl$SubmitScoreResultImpl
  extends b
  implements Leaderboards.SubmitScoreResult
{
  private final ScoreSubmissionData OJ;
  
  public GamesClientImpl$SubmitScoreResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    try
    {
      OJ = new ScoreSubmissionData(paramDataHolder);
      return;
    }
    finally
    {
      paramDataHolder.close();
    }
  }
  
  public final ScoreSubmissionData getScoreData()
  {
    return OJ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.SubmitScoreResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */