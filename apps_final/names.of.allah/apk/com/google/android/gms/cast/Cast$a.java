package com.google.android.gms.cast;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.internal.gi;

public abstract class Cast$a<R extends Result>
  extends a.b<R, gi>
{
  public Cast$a()
  {
    super(Cast.yE);
  }
  
  public void N(int paramInt)
  {
    b(c(new Status(paramInt)));
  }
  
  public void c(int paramInt, String paramString)
  {
    b(c(new Status(paramInt, paramString, null)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */