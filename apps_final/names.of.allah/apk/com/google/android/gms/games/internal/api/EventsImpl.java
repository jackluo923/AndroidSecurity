package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.event.Events.LoadEventsResult;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class EventsImpl
  implements Events
{
  public final void increment(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt)
  {
    GamesClientImpl localGamesClientImpl = Games.d(paramGoogleApiClient);
    if (localGamesClientImpl.isConnected())
    {
      localGamesClientImpl.l(paramString, paramInt);
      return;
    }
    paramGoogleApiClient.b(new EventsImpl.3(this, paramString, paramInt));
  }
  
  public final PendingResult<Events.LoadEventsResult> load(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new EventsImpl.2(this, paramBoolean));
  }
  
  public final PendingResult<Events.LoadEventsResult> loadByIds(GoogleApiClient paramGoogleApiClient, boolean paramBoolean, String... paramVarArgs)
  {
    return paramGoogleApiClient.a(new EventsImpl.1(this, paramBoolean, paramVarArgs));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.EventsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */