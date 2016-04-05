package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;

final class GamesClientImpl$LeaderboardMetadataResultImpl
  extends b
  implements Leaderboards.LeaderboardMetadataResult
{
  private final LeaderboardBuffer NO;
  
  GamesClientImpl$LeaderboardMetadataResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    NO = new LeaderboardBuffer(paramDataHolder);
  }
  
  public final LeaderboardBuffer getLeaderboards()
  {
    return NO;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LeaderboardMetadataResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */