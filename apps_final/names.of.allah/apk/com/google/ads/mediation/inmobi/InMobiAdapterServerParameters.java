package com.google.ads.mediation.inmobi;

import com.google.ads.mediation.g;
import com.google.ads.mediation.i;

public class InMobiAdapterServerParameters
  extends g
{
  @i(a="pubid")
  public String appId;
  @i(a="isUDIDHashAllowed", b=false)
  public String isUDIDHashAllowed = "true";
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.inmobi.InMobiAdapterServerParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */