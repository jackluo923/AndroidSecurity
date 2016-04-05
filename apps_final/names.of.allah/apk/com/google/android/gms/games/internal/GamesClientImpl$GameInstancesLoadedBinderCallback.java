package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$GameInstancesLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<GamesMetadata.LoadGameInstancesResult> yO;
  
  GamesClientImpl$GameInstancesLoadedBinderCallback(a.d<GamesMetadata.LoadGameInstancesResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void k(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadGameInstancesResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GameInstancesLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */