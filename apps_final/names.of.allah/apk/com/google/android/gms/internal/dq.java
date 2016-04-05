package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;

public final class dq
{
  public static en a(Context paramContext, dt paramdt, dq.a parama)
  {
    if (kO.sw) {
      return b(paramContext, paramdt, parama);
    }
    return c(paramContext, paramdt, parama);
  }
  
  private static en b(Context paramContext, dt paramdt, dq.a parama)
  {
    ev.z("Fetching ad response from local ad request service.");
    paramContext = new dr.a(paramContext, paramdt, parama);
    paramContext.start();
    return paramContext;
  }
  
  private static en c(Context paramContext, dt paramdt, dq.a parama)
  {
    ev.z("Fetching ad response from remote ad request service.");
    if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext) != 0)
    {
      ev.D("Failed to connect to remote ad request service.");
      return null;
    }
    return new dr.b(paramContext, paramdt, parama);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */