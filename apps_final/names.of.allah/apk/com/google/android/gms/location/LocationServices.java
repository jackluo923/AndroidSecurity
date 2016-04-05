package com.google.android.gms.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.jc;
import com.google.android.gms.internal.jd;
import com.google.android.gms.internal.jh;

public class LocationServices
{
  public static final Api<Api.ApiOptions.NoOptions> API = new Api(yF, yE, new Scope[0]);
  public static FusedLocationProviderApi FusedLocationApi = new jc();
  public static GeofencingApi GeofencingApi = new jd();
  private static final Api.c<jh> yE = new Api.c();
  private static final Api.b<jh, Api.ApiOptions.NoOptions> yF = new LocationServices.1();
  
  public static jh e(GoogleApiClient paramGoogleApiClient)
  {
    boolean bool2 = true;
    if (paramGoogleApiClient != null)
    {
      bool1 = true;
      hn.b(bool1, "GoogleApiClient parameter is required.");
      paramGoogleApiClient = (jh)paramGoogleApiClient.a(yE);
      if (paramGoogleApiClient == null) {
        break label46;
      }
    }
    label46:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
      return paramGoogleApiClient;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationServices
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */