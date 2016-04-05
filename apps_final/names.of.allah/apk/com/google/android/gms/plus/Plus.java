package com.google.android.gms.plus;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.kj;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kl;
import com.google.android.gms.internal.km;
import com.google.android.gms.internal.kn;
import com.google.android.gms.plus.internal.e;

public final class Plus
{
  public static final Api<Plus.PlusOptions> API;
  public static final Account AccountApi = new kj();
  public static final Moments MomentsApi;
  public static final People PeopleApi;
  public static final Scope SCOPE_PLUS_LOGIN;
  public static final Scope SCOPE_PLUS_PROFILE;
  public static final b abm = new kl();
  public static final a abn = new kk();
  public static final Api.c<e> yE = new Api.c();
  static final Api.b<e, Plus.PlusOptions> yF = new Plus.1();
  
  static
  {
    API = new Api(yF, yE, new Scope[0]);
    SCOPE_PLUS_LOGIN = new Scope("https://www.googleapis.com/auth/plus.login");
    SCOPE_PLUS_PROFILE = new Scope("https://www.googleapis.com/auth/plus.me");
    MomentsApi = new km();
    PeopleApi = new kn();
  }
  
  public static e a(GoogleApiClient paramGoogleApiClient, Api.c<e> paramc)
  {
    boolean bool2 = true;
    if (paramGoogleApiClient != null)
    {
      bool1 = true;
      hn.b(bool1, "GoogleApiClient parameter is required.");
      hn.a(paramGoogleApiClient.isConnected(), "GoogleApiClient must be connected.");
      paramGoogleApiClient = (e)paramGoogleApiClient.a(paramc);
      if (paramGoogleApiClient == null) {
        break label55;
      }
    }
    label55:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
      return paramGoogleApiClient;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.Plus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */