package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GamesMetadata.LoadExtendedGamesResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$ExtendedGamesLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<GamesMetadata.LoadExtendedGamesResult> yO;
  
  GamesClientImpl$ExtendedGamesLoadedBinderCallback(a.d<GamesMetadata.LoadExtendedGamesResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void j(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.LoadExtendedGamesResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.ExtendedGamesLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */