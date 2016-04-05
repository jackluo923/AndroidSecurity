package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.g;

public final class TurnBasedMatchBuffer
  extends g<TurnBasedMatch>
{
  public TurnBasedMatchBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  protected final String eU()
  {
    return "external_match_id";
  }
  
  protected final TurnBasedMatch i(int paramInt1, int paramInt2)
  {
    return new TurnBasedMatchRef(DD, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */