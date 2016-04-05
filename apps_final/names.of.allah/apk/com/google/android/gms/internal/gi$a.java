package com.google.android.gms.internal;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.common.api.Status;

final class gi$a
  implements Cast.ApplicationConnectionResult
{
  private final ApplicationMetadata Cf;
  private final String Cg;
  private final boolean Ch;
  private final String rO;
  private final Status yw;
  
  public gi$a(Status paramStatus)
  {
    this(paramStatus, null, null, null, false);
  }
  
  public gi$a(Status paramStatus, ApplicationMetadata paramApplicationMetadata, String paramString1, String paramString2, boolean paramBoolean)
  {
    yw = paramStatus;
    Cf = paramApplicationMetadata;
    Cg = paramString1;
    rO = paramString2;
    Ch = paramBoolean;
  }
  
  public final ApplicationMetadata getApplicationMetadata()
  {
    return Cf;
  }
  
  public final String getApplicationStatus()
  {
    return Cg;
  }
  
  public final String getSessionId()
  {
    return rO;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
  
  public final boolean getWasLaunched()
  {
    return Ch;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */