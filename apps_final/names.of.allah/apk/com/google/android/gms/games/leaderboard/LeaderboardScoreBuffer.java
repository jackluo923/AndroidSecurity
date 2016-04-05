package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class LeaderboardScoreBuffer
  extends DataBuffer<LeaderboardScore>
{
  private final LeaderboardScoreBufferHeader Sq;
  
  public LeaderboardScoreBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    Sq = new LeaderboardScoreBufferHeader(paramDataHolder.eP());
  }
  
  public final LeaderboardScore get(int paramInt)
  {
    return new LeaderboardScoreRef(DD, paramInt);
  }
  
  public final LeaderboardScoreBufferHeader iv()
  {
    return Sq;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */