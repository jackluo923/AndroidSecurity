package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;

public final class hc$c
  implements GoogleApiClient.ConnectionCallbacks
{
  private final GooglePlayServicesClient.ConnectionCallbacks Gh;
  
  public hc$c(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    Gh = paramConnectionCallbacks;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof c)) {
      return Gh.equals(Gh);
    }
    return Gh.equals(paramObject);
  }
  
  public final void onConnected(Bundle paramBundle)
  {
    Gh.onConnected(paramBundle);
  }
  
  public final void onConnectionSuspended(int paramInt)
  {
    Gh.onDisconnected();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */