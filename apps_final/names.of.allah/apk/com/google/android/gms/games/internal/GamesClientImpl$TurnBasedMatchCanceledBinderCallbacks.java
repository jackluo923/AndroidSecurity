package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<TurnBasedMultiplayer.CancelMatchResult> OK;
  
  public GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks(a.d<TurnBasedMultiplayer.CancelMatchResult> paramd)
  {
    Object localObject;
    OK = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void f(int paramInt, String paramString)
  {
    Status localStatus = new Status(paramInt);
    OK.a(new GamesClientImpl.CancelMatchResultImpl(localStatus, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchCanceledBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */