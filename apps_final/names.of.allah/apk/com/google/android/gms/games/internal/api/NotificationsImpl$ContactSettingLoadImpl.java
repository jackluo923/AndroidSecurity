package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.Notifications.ContactSettingLoadResult;

abstract class NotificationsImpl$ContactSettingLoadImpl
  extends Games.BaseGamesApiMethodImpl<Notifications.ContactSettingLoadResult>
{
  public Notifications.ContactSettingLoadResult M(Status paramStatus)
  {
    return new NotificationsImpl.ContactSettingLoadImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.NotificationsImpl.ContactSettingLoadImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */