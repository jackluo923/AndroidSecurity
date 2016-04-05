package com.google.android.gms.games.leaderboard;

import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class ScoreSubmissionData$Result
{
  public final String formattedScore;
  public final boolean newBest;
  public final long rawScore;
  public final String scoreTag;
  
  public ScoreSubmissionData$Result(long paramLong, String paramString1, String paramString2, boolean paramBoolean)
  {
    rawScore = paramLong;
    formattedScore = paramString1;
    scoreTag = paramString2;
    newBest = paramBoolean;
  }
  
  public final String toString()
  {
    return hl.e(this).a("RawScore", Long.valueOf(rawScore)).a("FormattedScore", formattedScore).a("ScoreTag", scoreTag).a("NewBest", Boolean.valueOf(newBest)).toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.ScoreSubmissionData.Result
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */