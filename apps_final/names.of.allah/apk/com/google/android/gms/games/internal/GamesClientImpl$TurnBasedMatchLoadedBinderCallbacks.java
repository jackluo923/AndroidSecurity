package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<TurnBasedMultiplayer.LoadMatchResult> ON;
  
  public GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks(a.d<TurnBasedMultiplayer.LoadMatchResult> paramd)
  {
    Object localObject;
    ON = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void p(DataHolder paramDataHolder)
  {
    ON.a(new GamesClientImpl.LoadMatchResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchLoadedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */