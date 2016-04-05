package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Players.LoadPlayersResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$PlayersLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Players.LoadPlayersResult> yO;
  
  GamesClientImpl$PlayersLoadedBinderCallback(a.d<Players.LoadPlayersResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void g(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadPlayersResultImpl(paramDataHolder));
  }
  
  public final void h(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadPlayersResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.PlayersLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */