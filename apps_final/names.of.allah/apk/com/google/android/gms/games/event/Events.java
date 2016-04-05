package com.google.android.gms.games.event;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public abstract interface Events
{
  public abstract void increment(GoogleApiClient paramGoogleApiClient, String paramString, int paramInt);
  
  public abstract PendingResult<Events.LoadEventsResult> load(GoogleApiClient paramGoogleApiClient, boolean paramBoolean);
  
  public abstract PendingResult<Events.LoadEventsResult> loadByIds(GoogleApiClient paramGoogleApiClient, boolean paramBoolean, String... paramVarArgs);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.event.Events
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */