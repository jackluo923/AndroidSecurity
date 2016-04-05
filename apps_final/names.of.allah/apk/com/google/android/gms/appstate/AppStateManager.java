package com.google.android.gms.appstate;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gb;
import com.google.android.gms.internal.hn;

public final class AppStateManager
{
  public static final Api<Api.ApiOptions.NoOptions> API = new Api(yF, yE, new Scope[] { SCOPE_APP_STATE });
  public static final Scope SCOPE_APP_STATE;
  static final Api.c<gb> yE = new Api.c();
  private static final Api.b<gb, Api.ApiOptions.NoOptions> yF = new AppStateManager.1();
  
  static
  {
    SCOPE_APP_STATE = new Scope("https://www.googleapis.com/auth/appstate");
  }
  
  public static gb a(GoogleApiClient paramGoogleApiClient)
  {
    boolean bool2 = true;
    if (paramGoogleApiClient != null)
    {
      bool1 = true;
      hn.b(bool1, "GoogleApiClient parameter is required.");
      hn.a(paramGoogleApiClient.isConnected(), "GoogleApiClient must be connected.");
      paramGoogleApiClient = (gb)paramGoogleApiClient.a(yE);
      if (paramGoogleApiClient == null) {
        break label57;
      }
    }
    label57:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature.");
      return paramGoogleApiClient;
      bool1 = false;
      break;
    }
  }
  
  public static PendingResult<AppStateManager.StateDeletedResult> delete(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.b(new AppStateManager.5(paramInt));
  }
  
  private static AppStateManager.StateResult e(Status paramStatus)
  {
    return new AppStateManager.2(paramStatus);
  }
  
  public static int getMaxNumKeys(GoogleApiClient paramGoogleApiClient)
  {
    return a(paramGoogleApiClient).dQ();
  }
  
  public static int getMaxStateSize(GoogleApiClient paramGoogleApiClient)
  {
    return a(paramGoogleApiClient).dP();
  }
  
  public static PendingResult<AppStateManager.StateListResult> list(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new AppStateManager.7());
  }
  
  public static PendingResult<AppStateManager.StateResult> load(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    return paramGoogleApiClient.a(new AppStateManager.6(paramInt));
  }
  
  public static PendingResult<AppStateManager.StateResult> resolve(GoogleApiClient paramGoogleApiClient, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    return paramGoogleApiClient.b(new AppStateManager.8(paramInt, paramString, paramArrayOfByte));
  }
  
  public static PendingResult<Status> signOut(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new AppStateManager.9());
  }
  
  public static void update(GoogleApiClient paramGoogleApiClient, int paramInt, byte[] paramArrayOfByte)
  {
    paramGoogleApiClient.b(new AppStateManager.3(paramInt, paramArrayOfByte));
  }
  
  public static PendingResult<AppStateManager.StateResult> updateImmediate(GoogleApiClient paramGoogleApiClient, int paramInt, byte[] paramArrayOfByte)
  {
    return paramGoogleApiClient.b(new AppStateManager.4(paramInt, paramArrayOfByte));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appstate.AppStateManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */