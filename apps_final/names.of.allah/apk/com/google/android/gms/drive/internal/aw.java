package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;

public class aw
  extends c
{
  private final a.d<Status> yO;
  
  public aw(a.d<Status> paramd)
  {
    yO = paramd;
  }
  
  public void o(Status paramStatus)
  {
    yO.a(paramStatus);
  }
  
  public void onSuccess()
  {
    yO.a(Status.Ek);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */