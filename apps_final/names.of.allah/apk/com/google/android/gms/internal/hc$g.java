package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public final class hc$g
  implements GoogleApiClient.OnConnectionFailedListener
{
  private final GooglePlayServicesClient.OnConnectionFailedListener Gj;
  
  public hc$g(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    Gj = paramOnConnectionFailedListener;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof g)) {
      return Gj.equals(Gj);
    }
    return Gj.equals(paramObject);
  }
  
  public final void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    Gj.onConnectionFailed(paramConnectionResult);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */