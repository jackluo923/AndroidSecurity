package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;

final class gb$g
  extends ga
{
  private final a.d<Status> yO;
  
  public gb$g(a.d<Status> paramd)
  {
    yO = ((a.d)hn.b(paramd, "Holder must not be null"));
  }
  
  public final void dO()
  {
    Status localStatus = new Status(0);
    yO.a(localStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */