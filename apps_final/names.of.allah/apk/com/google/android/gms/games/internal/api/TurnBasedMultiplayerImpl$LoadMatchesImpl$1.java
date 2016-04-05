package com.google.android.gms.games.internal.api;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;

class TurnBasedMultiplayerImpl$LoadMatchesImpl$1
  implements TurnBasedMultiplayer.LoadMatchesResult
{
  TurnBasedMultiplayerImpl$LoadMatchesImpl$1(TurnBasedMultiplayerImpl.LoadMatchesImpl paramLoadMatchesImpl, Status paramStatus) {}
  
  public LoadMatchesResponse getMatches()
  {
    return new LoadMatchesResponse(new Bundle());
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl.LoadMatchesImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */