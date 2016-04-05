package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$TurnBasedMatchLeftBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<TurnBasedMultiplayer.LeaveMatchResult> OM;
  
  public GamesClientImpl$TurnBasedMatchLeftBinderCallbacks(a.d<TurnBasedMultiplayer.LeaveMatchResult> paramd)
  {
    Object localObject;
    OM = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void s(DataHolder paramDataHolder)
  {
    OM.a(new GamesClientImpl.LeaveMatchResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchLeftBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */