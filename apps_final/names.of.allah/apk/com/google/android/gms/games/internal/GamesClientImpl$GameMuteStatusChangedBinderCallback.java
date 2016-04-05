package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.Notifications.GameMuteStatusChangeResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$GameMuteStatusChangedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Notifications.GameMuteStatusChangeResult> yO;
  
  GamesClientImpl$GameMuteStatusChangedBinderCallback(a.d<Notifications.GameMuteStatusChangeResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void a(int paramInt, String paramString, boolean paramBoolean)
  {
    yO.a(new GamesClientImpl.GameMuteStatusChangeResultImpl(paramInt, paramString, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusChangedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */