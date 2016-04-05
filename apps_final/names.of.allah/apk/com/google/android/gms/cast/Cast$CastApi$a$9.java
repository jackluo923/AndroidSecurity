package com.google.android.gms.cast;

import android.text.TextUtils;
import com.google.android.gms.internal.gi;

class Cast$CastApi$a$9
  extends Cast.b
{
  Cast$CastApi$a$9(Cast.CastApi.a parama, String paramString)
  {
    super(null);
  }
  
  protected void a(gi paramgi)
  {
    if (TextUtils.isEmpty(zW))
    {
      c(2001, "IllegalArgument: sessionId cannot be null or empty");
      return;
    }
    try
    {
      paramgi.a(zW, this);
      return;
    }
    catch (IllegalStateException paramgi)
    {
      N(2001);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */