package com.google.android.gms.panorama;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.kg;
import com.google.android.gms.internal.kh;

public final class Panorama
{
  public static final Api<Api.ApiOptions.NoOptions> API = new Api(yF, yE, new Scope[0]);
  public static final PanoramaApi PanoramaApi = new kg();
  public static final Api.c<kh> yE = new Api.c();
  static final Api.b<kh, Api.ApiOptions.NoOptions> yF = new Panorama.1();
}

/* Location:
 * Qualified Name:     com.google.android.gms.panorama.Panorama
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */