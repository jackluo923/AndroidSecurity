package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;

public final class LeaderboardBuffer
  extends g<Leaderboard>
{
  public LeaderboardBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected final String eU()
  {
    return "external_leaderboard_id";
  }
  
  protected final Leaderboard f(int paramInt1, int paramInt2)
  {
    return new LeaderboardRef(DD, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */