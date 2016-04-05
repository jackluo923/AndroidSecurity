package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GamesMetadata.LoadGamesResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$GamesLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<GamesMetadata.LoadGamesResult> yO;
  
  GamesClientImpl$GamesLoadedBinderCallback(a.d<GamesMetadata.LoadGamesResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void i(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadGamesResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GamesLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */