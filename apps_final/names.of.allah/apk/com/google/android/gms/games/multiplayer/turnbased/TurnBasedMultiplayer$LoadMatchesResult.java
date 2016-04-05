package com.google.android.gms.games.multiplayer.turnbased;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface TurnBasedMultiplayer$LoadMatchesResult
  extends Releasable, Result
{
  public abstract LoadMatchesResponse getMatches();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */