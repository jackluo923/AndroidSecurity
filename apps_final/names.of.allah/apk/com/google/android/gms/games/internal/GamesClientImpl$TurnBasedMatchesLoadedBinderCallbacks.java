package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<TurnBasedMultiplayer.LoadMatchesResult> OP;
  
  public GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks(a.d<TurnBasedMultiplayer.LoadMatchesResult> paramd)
  {
    Object localObject;
    OP = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void b(int paramInt, Bundle paramBundle)
  {
    paramBundle.setClassLoader(getClass().getClassLoader());
    Status localStatus = new Status(paramInt);
    OP.a(new GamesClientImpl.LoadMatchesResultImpl(localStatus, paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchesLoadedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */