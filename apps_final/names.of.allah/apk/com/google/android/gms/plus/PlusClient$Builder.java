package com.google.android.gms.plus;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.i;

@Deprecated
public class PlusClient$Builder
{
  private final GooglePlayServicesClient.ConnectionCallbacks abv;
  private final GooglePlayServicesClient.OnConnectionFailedListener abw;
  private final i abx;
  private final Context mContext;
  
  public PlusClient$Builder(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    mContext = paramContext;
    abv = paramConnectionCallbacks;
    abw = paramOnConnectionFailedListener;
    abx = new i(mContext);
  }
  
  public PlusClient build()
  {
    return new PlusClient(new e(mContext, abv, abw, abx.ke()));
  }
  
  public Builder clearScopes()
  {
    abx.kd();
    return this;
  }
  
  public Builder setAccountName(String paramString)
  {
    abx.bz(paramString);
    return this;
  }
  
  public Builder setActions(String... paramVarArgs)
  {
    abx.f(paramVarArgs);
    return this;
  }
  
  public Builder setScopes(String... paramVarArgs)
  {
    abx.e(paramVarArgs);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusClient.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */