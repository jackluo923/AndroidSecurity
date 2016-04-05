package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Notifications.GameMuteStatusLoadResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$GameMuteStatusLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Notifications.GameMuteStatusLoadResult> yO;
  
  GamesClientImpl$GameMuteStatusLoadedBinderCallback(a.d<Notifications.GameMuteStatusLoadResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void B(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.GameMuteStatusLoadResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */