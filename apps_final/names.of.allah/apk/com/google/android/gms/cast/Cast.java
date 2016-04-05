package com.google.android.gms.cast;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.gi;

public final class Cast
{
  public static final Api<Cast.CastOptions> API = new Api(yF, yE, new Scope[0]);
  public static final Cast.CastApi CastApi = new Cast.CastApi.a();
  public static final String EXTRA_APP_NO_LONGER_RUNNING = "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING";
  public static final int MAX_MESSAGE_LENGTH = 65536;
  public static final int MAX_NAMESPACE_LENGTH = 128;
  static final Api.c<gi> yE = new Api.c();
  private static final Api.b<gi, Cast.CastOptions> yF = new Cast.1();
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */