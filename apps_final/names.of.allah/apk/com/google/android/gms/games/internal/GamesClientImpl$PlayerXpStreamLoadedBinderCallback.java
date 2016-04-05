package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Players.LoadXpStreamResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$PlayerXpStreamLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Players.LoadXpStreamResult> yO;
  
  GamesClientImpl$PlayerXpStreamLoadedBinderCallback(a.d<Players.LoadXpStreamResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void P(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadXpStreamResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.PlayerXpStreamLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */