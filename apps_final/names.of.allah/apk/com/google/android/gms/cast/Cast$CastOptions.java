package com.google.android.gms.cast;

import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;

public final class Cast$CastOptions
  implements Api.ApiOptions.HasOptions
{
  final CastDevice zX;
  final Cast.Listener zY;
  private final int zZ;
  
  private Cast$CastOptions(Cast.CastOptions.Builder paramBuilder)
  {
    zX = Aa;
    zY = Ab;
    zZ = Cast.CastOptions.Builder.a(paramBuilder);
  }
  
  public static Cast.CastOptions.Builder builder(CastDevice paramCastDevice, Cast.Listener paramListener)
  {
    return new Cast.CastOptions.Builder(paramCastDevice, paramListener, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.CastOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */