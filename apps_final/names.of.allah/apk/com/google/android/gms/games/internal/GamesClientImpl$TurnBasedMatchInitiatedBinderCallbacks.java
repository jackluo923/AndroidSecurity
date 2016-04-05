package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<TurnBasedMultiplayer.InitiateMatchResult> OL;
  
  public GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks(a.d<TurnBasedMultiplayer.InitiateMatchResult> paramd)
  {
    Object localObject;
    OL = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void q(DataHolder paramDataHolder)
  {
    OL.a(new GamesClientImpl.InitiateMatchResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchInitiatedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */