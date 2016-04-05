package com.google.android.gms.games.internal.notification;

import com.google.android.gms.common.data.DataBuffer;

public final class GameNotificationBuffer
  extends DataBuffer<GameNotification>
{
  public final GameNotification ct(int paramInt)
  {
    return new GameNotificationRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.notification.GameNotificationBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */