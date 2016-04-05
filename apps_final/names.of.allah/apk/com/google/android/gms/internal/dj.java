package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.dynamic.g.a;

public final class dj
  extends g<df>
{
  private static final dj pt = new dj();
  
  private dj()
  {
    super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
  }
  
  private static boolean b(Activity paramActivity)
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
      throw new dj.a("InAppPurchaseManager requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
  }
  
  public static de d(Activity paramActivity)
  {
    try
    {
      if (b(paramActivity))
      {
        ev.z("Using AdOverlay from the client jar.");
        return new cv(paramActivity);
      }
      paramActivity = pt.e(paramActivity);
      return paramActivity;
    }
    catch (dj.a paramActivity)
    {
      ev.D(paramActivity.getMessage());
    }
    return null;
  }
  
  private de e(Activity paramActivity)
  {
    try
    {
      d locald = e.h(paramActivity);
      paramActivity = de.a.r(((df)D(paramActivity)).b(locald));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      ev.c("Could not create remote InAppPurchaseManager.", paramActivity);
      return null;
    }
    catch (g.a paramActivity)
    {
      ev.c("Could not create remote InAppPurchaseManager.", paramActivity);
    }
    return null;
  }
  
  protected final df v(IBinder paramIBinder)
  {
    return df.a.s(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */