package com.google.android.gms.internal;

import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Moments;
import com.google.android.gms.plus.Moments.LoadMomentsResult;
import com.google.android.gms.plus.model.moments.Moment;

public final class km
  implements Moments
{
  public final PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new km.1(this));
  }
  
  public final PendingResult<Moments.LoadMomentsResult> load(GoogleApiClient paramGoogleApiClient, int paramInt, String paramString1, Uri paramUri, String paramString2, String paramString3)
  {
    return paramGoogleApiClient.a(new km.2(this, paramInt, paramString1, paramUri, paramString2, paramString3));
  }
  
  public final PendingResult<Status> remove(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new km.4(this, paramString));
  }
  
  public final PendingResult<Status> write(GoogleApiClient paramGoogleApiClient, Moment paramMoment)
  {
    return paramGoogleApiClient.b(new km.3(this, paramMoment));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.km
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */