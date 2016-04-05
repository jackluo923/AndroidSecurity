package com.google.android.gms.identity.intents;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.ix;

public final class Address
{
  public static final Api<Address.AddressOptions> API = new Api(yF, yE, new Scope[0]);
  static final Api.c<ix> yE = new Api.c();
  private static final Api.b<ix, Address.AddressOptions> yF = new Address.1();
  
  public static void requestUserAddress(GoogleApiClient paramGoogleApiClient, UserAddressRequest paramUserAddressRequest, int paramInt)
  {
    paramGoogleApiClient.a(new Address.2(paramUserAddressRequest, paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.identity.intents.Address
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */