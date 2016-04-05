package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognitionApi;

public class jb
  implements ActivityRecognitionApi
{
  public PendingResult<Status> removeActivityUpdates(GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new jb.2(this, paramPendingIntent));
  }
  
  public PendingResult<Status> requestActivityUpdates(GoogleApiClient paramGoogleApiClient, long paramLong, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new jb.1(this, paramLong, paramPendingIntent));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */