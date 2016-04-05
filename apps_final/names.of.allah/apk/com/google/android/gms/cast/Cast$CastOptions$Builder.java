package com.google.android.gms.cast;

import com.google.android.gms.internal.hn;

public final class Cast$CastOptions$Builder
{
  CastDevice Aa;
  Cast.Listener Ab;
  private int Ac;
  
  private Cast$CastOptions$Builder(CastDevice paramCastDevice, Cast.Listener paramListener)
  {
    hn.b(paramCastDevice, "CastDevice parameter cannot be null");
    hn.b(paramListener, "CastListener parameter cannot be null");
    Aa = paramCastDevice;
    Ab = paramListener;
    Ac = 0;
  }
  
  public final Cast.CastOptions build()
  {
    return new Cast.CastOptions(this, null);
  }
  
  public final Builder setVerboseLoggingEnabled(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Ac |= 0x1;
      return this;
    }
    Ac &= 0xFFFFFFFE;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.CastOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */