package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

public final class LeaderboardScoreRef
  extends d
  implements LeaderboardScore
{
  private final PlayerRef SD;
  
  LeaderboardScoreRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
    SD = new PlayerRef(paramDataHolder, paramInt);
  }
  
  public final boolean equals(Object paramObject)
  {
    return LeaderboardScoreEntity.a(this, paramObject);
  }
  
  public final String getDisplayRank()
  {
    return getString("display_rank");
  }
  
  public final void getDisplayRank(CharArrayBuffer paramCharArrayBuffer)
  {
    a("display_rank", paramCharArrayBuffer);
  }
  
  public final String getDisplayScore()
  {
    return getString("display_score");
  }
  
  public final void getDisplayScore(CharArrayBuffer paramCharArrayBuffer)
  {
    a("display_score", paramCharArrayBuffer);
  }
  
  public final long getRank()
  {
    return getLong("rank");
  }
  
  public final long getRawScore()
  {
    return getLong("raw_score");
  }
  
  public final Player getScoreHolder()
  {
    if (ax("external_player_id")) {
      return null;
    }
    return SD;
  }
  
  public final String getScoreHolderDisplayName()
  {
    if (ax("external_player_id")) {
      return getString("default_display_name");
    }
    return SD.getDisplayName();
  }
  
  public final void getScoreHolderDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    if (ax("external_player_id"))
    {
      a("default_display_name", paramCharArrayBuffer);
      return;
    }
    SD.getDisplayName(paramCharArrayBuffer);
  }
  
  public final Uri getScoreHolderHiResImageUri()
  {
    if (ax("external_player_id")) {
      return null;
    }
    return SD.getHiResImageUri();
  }
  
  public final String getScoreHolderHiResImageUrl()
  {
    if (ax("external_player_id")) {
      return null;
    }
    return SD.getHiResImageUrl();
  }
  
  public final Uri getScoreHolderIconImageUri()
  {
    if (ax("external_player_id")) {
      return aw("default_display_image_uri");
    }
    return SD.getIconImageUri();
  }
  
  public final String getScoreHolderIconImageUrl()
  {
    if (ax("external_player_id")) {
      return getString("default_display_image_url");
    }
    return SD.getIconImageUrl();
  }
  
  public final String getScoreTag()
  {
    return getString("score_tag");
  }
  
  public final long getTimestampMillis()
  {
    return getLong("achieved_timestamp");
  }
  
  public final int hashCode()
  {
    return LeaderboardScoreEntity.a(this);
  }
  
  public final LeaderboardScore ix()
  {
    return new LeaderboardScoreEntity(this);
  }
  
  public final String toString()
  {
    return LeaderboardScoreEntity.b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardScoreRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */