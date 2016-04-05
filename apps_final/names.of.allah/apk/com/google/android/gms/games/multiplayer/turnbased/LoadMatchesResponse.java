package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus;
import com.google.android.gms.games.multiplayer.InvitationBuffer;

public final class LoadMatchesResponse
{
  private final InvitationBuffer Ts;
  private final TurnBasedMatchBuffer Tt;
  private final TurnBasedMatchBuffer Tu;
  private final TurnBasedMatchBuffer Tv;
  
  public LoadMatchesResponse(Bundle paramBundle)
  {
    DataHolder localDataHolder = a(paramBundle, 0);
    if (localDataHolder != null)
    {
      Ts = new InvitationBuffer(localDataHolder);
      localDataHolder = a(paramBundle, 1);
      if (localDataHolder == null) {
        break label101;
      }
      Tt = new TurnBasedMatchBuffer(localDataHolder);
      label48:
      localDataHolder = a(paramBundle, 2);
      if (localDataHolder == null) {
        break label109;
      }
    }
    label101:
    label109:
    for (Tu = new TurnBasedMatchBuffer(localDataHolder);; Tu = null)
    {
      paramBundle = a(paramBundle, 3);
      if (paramBundle == null) {
        break label117;
      }
      Tv = new TurnBasedMatchBuffer(paramBundle);
      return;
      Ts = null;
      break;
      Tt = null;
      break label48;
    }
    label117:
    Tv = null;
  }
  
  private static DataHolder a(Bundle paramBundle, int paramInt)
  {
    String str = TurnBasedMatchTurnStatus.cm(paramInt);
    if (!paramBundle.containsKey(str)) {
      return null;
    }
    return (DataHolder)paramBundle.getParcelable(str);
  }
  
  public final void close()
  {
    if (Ts != null) {
      Ts.close();
    }
    if (Tt != null) {
      Tt.close();
    }
    if (Tu != null) {
      Tu.close();
    }
    if (Tv != null) {
      Tv.close();
    }
  }
  
  public final TurnBasedMatchBuffer getCompletedMatches()
  {
    return Tv;
  }
  
  public final InvitationBuffer getInvitations()
  {
    return Ts;
  }
  
  public final TurnBasedMatchBuffer getMyTurnMatches()
  {
    return Tt;
  }
  
  public final TurnBasedMatchBuffer getTheirTurnMatches()
  {
    return Tu;
  }
  
  public final boolean hasData()
  {
    if ((Ts != null) && (Ts.getCount() > 0)) {}
    while (((Tt != null) && (Tt.getCount() > 0)) || ((Tu != null) && (Tu.getCount() > 0)) || ((Tv != null) && (Tv.getCount() > 0))) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */