package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.Notifications.GameMuteStatusLoadResult;
import com.google.android.gms.games.internal.GamesClientImpl;

class NotificationsImpl$3
  extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusLoadResult>
{
  public Notifications.GameMuteStatusLoadResult L(Status paramStatus)
  {
    return new NotificationsImpl.3.1(this, paramStatus);
  }
  
  protected void a(GamesClientImpl paramGamesClientImpl)
  {
    paramGamesClientImpl.q(this, PS);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.NotificationsImpl.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */