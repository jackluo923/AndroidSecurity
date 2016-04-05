package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.gz;

public abstract interface Api$b<T extends Api.a, O>
{
  public abstract T a(Context paramContext, Looper paramLooper, gz paramgz, O paramO, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener);
  
  public abstract int getPriority();
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Api.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */