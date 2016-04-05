package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<TurnBasedMultiplayer.UpdateMatchResult> OO;
  
  public GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks(a.d<TurnBasedMultiplayer.UpdateMatchResult> paramd)
  {
    Object localObject;
    OO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void r(DataHolder paramDataHolder)
  {
    OO.a(new GamesClientImpl.UpdateMatchResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchUpdatedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */