package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.panorama.PanoramaApi;
import com.google.android.gms.panorama.PanoramaApi.PanoramaResult;

public class kg
  implements PanoramaApi
{
  private static void a(Context paramContext, Uri paramUri)
  {
    paramContext.revokeUriPermission(paramUri, 1);
  }
  
  private static void a(Context paramContext, kf paramkf, ke paramke, Uri paramUri, Bundle paramBundle)
  {
    paramContext.grantUriPermission("com.google.android.gms", paramUri, 1);
    paramke = new kg.4(paramContext, paramUri, paramke);
    try
    {
      paramkf.a(paramke, paramUri, paramBundle, true);
      return;
    }
    catch (RemoteException paramkf)
    {
      paramContext.revokeUriPermission(paramUri, 1);
      throw paramkf;
    }
    catch (RuntimeException paramkf)
    {
      paramContext.revokeUriPermission(paramUri, 1);
      throw paramkf;
    }
  }
  
  public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfo(GoogleApiClient paramGoogleApiClient, Uri paramUri)
  {
    return paramGoogleApiClient.a(new kg.2(this, paramUri));
  }
  
  public PendingResult<PanoramaApi.PanoramaResult> loadPanoramaInfoAndGrantAccess(GoogleApiClient paramGoogleApiClient, Uri paramUri)
  {
    return paramGoogleApiClient.a(new kg.3(this, paramUri));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */