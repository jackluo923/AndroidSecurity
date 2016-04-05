package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.Notifications.GameMuteStatusChangeResult;
import com.google.android.gms.games.internal.GamesClientImpl;

class NotificationsImpl$1
  extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusChangeResult>
{
  public Notifications.GameMuteStatusChangeResult K(Status paramStatus)
  {
    return new NotificationsImpl.1.1(this, paramStatus);
  }
  
  protected void a(GamesClientImpl paramGamesClientImpl)
  {
    paramGamesClientImpl.d(this, PS, true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.NotificationsImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */