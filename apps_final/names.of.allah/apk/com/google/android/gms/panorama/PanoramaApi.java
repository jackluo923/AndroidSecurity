package com.google.android.gms.panorama;

import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public abstract interface PanoramaApi
{
  public abstract PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfo(GoogleApiClient paramGoogleApiClient, Uri paramUri);
  
  public abstract PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfoAndGrantAccess(GoogleApiClient paramGoogleApiClient, Uri paramUri);
}

/* Location:
 * Qualified Name:     com.google.android.gms.panorama.PanoramaApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */