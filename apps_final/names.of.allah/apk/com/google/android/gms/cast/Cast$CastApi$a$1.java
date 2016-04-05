package com.google.android.gms.cast;

import com.google.android.gms.internal.gi;

class Cast$CastApi$a$1
  extends Cast.b
{
  Cast$CastApi$a$1(Cast.CastApi.a parama, String paramString1, String paramString2)
  {
    super(null);
  }
  
  protected void a(gi paramgi)
  {
    try
    {
      paramgi.a(zR, zS, this);
      return;
    }
    catch (IllegalArgumentException paramgi)
    {
      N(2001);
      return;
    }
    catch (IllegalStateException paramgi)
    {
      N(2001);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */