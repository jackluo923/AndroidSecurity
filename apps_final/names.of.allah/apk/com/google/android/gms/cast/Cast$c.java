package com.google.android.gms.cast;

import com.google.android.gms.common.api.Status;

abstract class Cast$c
  extends Cast.a<Cast.ApplicationConnectionResult>
{
  public Cast.ApplicationConnectionResult j(Status paramStatus)
  {
    return new Cast.c.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */