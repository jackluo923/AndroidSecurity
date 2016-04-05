package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.il;

public final class LeaderboardScoreEntity
  implements LeaderboardScore
{
  private final String SA;
  private final String SB;
  private final String SC;
  private final long Sr;
  private final String Ss;
  private final String St;
  private final long Su;
  private final long Sv;
  private final String Sw;
  private final Uri Sx;
  private final Uri Sy;
  private final PlayerEntity Sz;
  
  public LeaderboardScoreEntity(LeaderboardScore paramLeaderboardScore)
  {
    Sr = paramLeaderboardScore.getRank();
    Ss = ((String)hn.f(paramLeaderboardScore.getDisplayRank()));
    St = ((String)hn.f(paramLeaderboardScore.getDisplayScore()));
    Su = paramLeaderboardScore.getRawScore();
    Sv = paramLeaderboardScore.getTimestampMillis();
    Sw = paramLeaderboardScore.getScoreHolderDisplayName();
    Sx = paramLeaderboardScore.getScoreHolderIconImageUri();
    Sy = paramLeaderboardScore.getScoreHolderHiResImageUri();
    Object localObject = paramLeaderboardScore.getScoreHolder();
    if (localObject == null) {}
    for (localObject = null;; localObject = (PlayerEntity)((Player)localObject).freeze())
    {
      Sz = ((PlayerEntity)localObject);
      SA = paramLeaderboardScore.getScoreTag();
      SB = paramLeaderboardScore.getScoreHolderIconImageUrl();
      SC = paramLeaderboardScore.getScoreHolderHiResImageUrl();
      return;
    }
  }
  
  static int a(LeaderboardScore paramLeaderboardScore)
  {
    return hl.hashCode(new Object[] { Long.valueOf(paramLeaderboardScore.getRank()), paramLeaderboardScore.getDisplayRank(), Long.valueOf(paramLeaderboardScore.getRawScore()), paramLeaderboardScore.getDisplayScore(), Long.valueOf(paramLeaderboardScore.getTimestampMillis()), paramLeaderboardScore.getScoreHolderDisplayName(), paramLeaderboardScore.getScoreHolderIconImageUri(), paramLeaderboardScore.getScoreHolderHiResImageUri(), paramLeaderboardScore.getScoreHolder() });
  }
  
  static boolean a(LeaderboardScore paramLeaderboardScore, Object paramObject)
  {
    if (!(paramObject instanceof LeaderboardScore)) {}
    do
    {
      return false;
      if (paramLeaderboardScore == paramObject) {
        return true;
      }
      paramObject = (LeaderboardScore)paramObject;
    } while ((!hl.equal(Long.valueOf(((LeaderboardScore)paramObject).getRank()), Long.valueOf(paramLeaderboardScore.getRank()))) || (!hl.equal(((LeaderboardScore)paramObject).getDisplayRank(), paramLeaderboardScore.getDisplayRank())) || (!hl.equal(Long.valueOf(((LeaderboardScore)paramObject).getRawScore()), Long.valueOf(paramLeaderboardScore.getRawScore()))) || (!hl.equal(((LeaderboardScore)paramObject).getDisplayScore(), paramLeaderboardScore.getDisplayScore())) || (!hl.equal(Long.valueOf(((LeaderboardScore)paramObject).getTimestampMillis()), Long.valueOf(paramLeaderboardScore.getTimestampMillis()))) || (!hl.equal(((LeaderboardScore)paramObject).getScoreHolderDisplayName(), paramLeaderboardScore.getScoreHolderDisplayName())) || (!hl.equal(((LeaderboardScore)paramObject).getScoreHolderIconImageUri(), paramLeaderboardScore.getScoreHolderIconImageUri())) || (!hl.equal(((LeaderboardScore)paramObject).getScoreHolderHiResImageUri(), paramLeaderboardScore.getScoreHolderHiResImageUri())) || (!hl.equal(((LeaderboardScore)paramObject).getScoreHolder(), paramLeaderboardScore.getScoreHolder())) || (!hl.equal(((LeaderboardScore)paramObject).getScoreTag(), paramLeaderboardScore.getScoreTag())));
    return true;
  }
  
  static String b(LeaderboardScore paramLeaderboardScore)
  {
    hl.a locala = hl.e(paramLeaderboardScore).a("Rank", Long.valueOf(paramLeaderboardScore.getRank())).a("DisplayRank", paramLeaderboardScore.getDisplayRank()).a("Score", Long.valueOf(paramLeaderboardScore.getRawScore())).a("DisplayScore", paramLeaderboardScore.getDisplayScore()).a("Timestamp", Long.valueOf(paramLeaderboardScore.getTimestampMillis())).a("DisplayName", paramLeaderboardScore.getScoreHolderDisplayName()).a("IconImageUri", paramLeaderboardScore.getScoreHolderIconImageUri()).a("IconImageUrl", paramLeaderboardScore.getScoreHolderIconImageUrl()).a("HiResImageUri", paramLeaderboardScore.getScoreHolderHiResImageUri()).a("HiResImageUrl", paramLeaderboardScore.getScoreHolderHiResImageUrl());
    if (paramLeaderboardScore.getScoreHolder() == null) {}
    for (Object localObject = null;; localObject = paramLeaderboardScore.getScoreHolder()) {
      return locala.a("Player", localObject).a("ScoreTag", paramLeaderboardScore.getScoreTag()).toString();
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final String getDisplayRank()
  {
    return Ss;
  }
  
  public final void getDisplayRank(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Ss, paramCharArrayBuffer);
  }
  
  public final String getDisplayScore()
  {
    return St;
  }
  
  public final void getDisplayScore(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(St, paramCharArrayBuffer);
  }
  
  public final long getRank()
  {
    return Sr;
  }
  
  public final long getRawScore()
  {
    return Su;
  }
  
  public final Player getScoreHolder()
  {
    return Sz;
  }
  
  public final String getScoreHolderDisplayName()
  {
    if (Sz == null) {
      return Sw;
    }
    return Sz.getDisplayName();
  }
  
  public final void getScoreHolderDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    if (Sz == null)
    {
      il.b(Sw, paramCharArrayBuffer);
      return;
    }
    Sz.getDisplayName(paramCharArrayBuffer);
  }
  
  public final Uri getScoreHolderHiResImageUri()
  {
    if (Sz == null) {
      return Sy;
    }
    return Sz.getHiResImageUri();
  }
  
  public final String getScoreHolderHiResImageUrl()
  {
    if (Sz == null) {
      return SC;
    }
    return Sz.getHiResImageUrl();
  }
  
  public final Uri getScoreHolderIconImageUri()
  {
    if (Sz == null) {
      return Sx;
    }
    return Sz.getIconImageUri();
  }
  
  public final String getScoreHolderIconImageUrl()
  {
    if (Sz == null) {
      return SB;
    }
    return Sz.getIconImageUrl();
  }
  
  public final String getScoreTag()
  {
    return SA;
  }
  
  public final long getTimestampMillis()
  {
    return Sv;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final LeaderboardScore ix()
  {
    return this;
  }
  
  public final String toString()
  {
    return b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardScoreEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */