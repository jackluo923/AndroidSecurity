package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class LeaderboardVariantRef
  extends d
  implements LeaderboardVariant
{
  LeaderboardVariantRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final boolean equals(Object paramObject)
  {
    return LeaderboardVariantEntity.a(this, paramObject);
  }
  
  public final int getCollection()
  {
    return getInteger("collection");
  }
  
  public final String getDisplayPlayerRank()
  {
    return getString("player_display_rank");
  }
  
  public final String getDisplayPlayerScore()
  {
    return getString("player_display_score");
  }
  
  public final long getNumScores()
  {
    if (ax("total_scores")) {
      return -1L;
    }
    return getLong("total_scores");
  }
  
  public final long getPlayerRank()
  {
    if (ax("player_rank")) {
      return -1L;
    }
    return getLong("player_rank");
  }
  
  public final String getPlayerScoreTag()
  {
    return getString("player_score_tag");
  }
  
  public final long getRawPlayerScore()
  {
    if (ax("player_raw_score")) {
      return -1L;
    }
    return getLong("player_raw_score");
  }
  
  public final int getTimeSpan()
  {
    return getInteger("timespan");
  }
  
  public final boolean hasPlayerInfo()
  {
    return !ax("player_raw_score");
  }
  
  public final int hashCode()
  {
    return LeaderboardVariantEntity.a(this);
  }
  
  public final String iA()
  {
    return getString("window_page_token_next");
  }
  
  public final LeaderboardVariant iB()
  {
    return new LeaderboardVariantEntity(this);
  }
  
  public final String iy()
  {
    return getString("top_page_token_next");
  }
  
  public final String iz()
  {
    return getString("window_page_token_prev");
  }
  
  public final String toString()
  {
    return LeaderboardVariantEntity.b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardVariantRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */