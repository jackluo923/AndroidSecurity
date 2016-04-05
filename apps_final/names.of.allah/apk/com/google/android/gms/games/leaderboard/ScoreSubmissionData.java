package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.constants.TimeSpan;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.hn;
import java.util.HashMap;

public final class ScoreSubmissionData
{
  private static final String[] Sk = { "leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag" };
  private int CQ;
  private String MP;
  private HashMap<Integer, ScoreSubmissionData.Result> SQ;
  private String Sm;
  
  public ScoreSubmissionData(DataHolder paramDataHolder)
  {
    CQ = paramDataHolder.getStatusCode();
    SQ = new HashMap();
    int j = paramDataHolder.getCount();
    if (j == 3) {}
    for (boolean bool = true;; bool = false)
    {
      hn.C(bool);
      int i = 0;
      while (i < j)
      {
        int k = paramDataHolder.ae(i);
        if (i == 0)
        {
          Sm = paramDataHolder.c("leaderboardId", i, k);
          MP = paramDataHolder.c("playerId", i, k);
        }
        if (paramDataHolder.d("hasResult", i, k)) {
          a(new ScoreSubmissionData.Result(paramDataHolder.a("rawScore", i, k), paramDataHolder.c("formattedScore", i, k), paramDataHolder.c("scoreTag", i, k), paramDataHolder.d("newBest", i, k)), paramDataHolder.b("timeSpan", i, k));
        }
        i += 1;
      }
    }
  }
  
  private void a(ScoreSubmissionData.Result paramResult, int paramInt)
  {
    SQ.put(Integer.valueOf(paramInt), paramResult);
  }
  
  public final String getLeaderboardId()
  {
    return Sm;
  }
  
  public final String getPlayerId()
  {
    return MP;
  }
  
  public final ScoreSubmissionData.Result getScoreResult(int paramInt)
  {
    return (ScoreSubmissionData.Result)SQ.get(Integer.valueOf(paramInt));
  }
  
  public final String toString()
  {
    hl.a locala = hl.e(this).a("PlayerId", MP).a("StatusCode", Integer.valueOf(CQ));
    int i = 0;
    if (i < 3)
    {
      Object localObject = (ScoreSubmissionData.Result)SQ.get(Integer.valueOf(i));
      locala.a("TimesSpan", TimeSpan.cm(i));
      if (localObject == null) {}
      for (localObject = "null";; localObject = ((ScoreSubmissionData.Result)localObject).toString())
      {
        locala.a("Result", localObject);
        i += 1;
        break;
      }
    }
    return locala.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.ScoreSubmissionData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */