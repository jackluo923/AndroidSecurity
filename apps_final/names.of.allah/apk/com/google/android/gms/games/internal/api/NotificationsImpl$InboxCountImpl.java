package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.Notifications.InboxCountResult;

abstract class NotificationsImpl$InboxCountImpl
  extends Games.BaseGamesApiMethodImpl<Notifications.InboxCountResult>
{
  public Notifications.InboxCountResult N(Status paramStatus)
  {
    return new NotificationsImpl.InboxCountImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.NotificationsImpl.InboxCountImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */