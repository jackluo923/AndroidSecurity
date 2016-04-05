package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult;

class LeaderboardsImpl$LoadMetadataImpl$1
  implements Leaderboards.LeaderboardMetadataResult
{
  LeaderboardsImpl$LoadMetadataImpl$1(LeaderboardsImpl.LoadMetadataImpl paramLoadMetadataImpl, Status paramStatus) {}
  
  public LeaderboardBuffer getLeaderboards()
  {
    return new LeaderboardBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.LeaderboardsImpl.LoadMetadataImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */