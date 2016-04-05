package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class NotificationsImpl
  implements Notifications
{
  public final void clear(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    Games.c(paramGoogleApiClient).ch(paramInt);
  }
  
  public final void clearAll(GoogleApiClient paramGoogleApiClient)
  {
    clear(paramGoogleApiClient, 31);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.NotificationsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */