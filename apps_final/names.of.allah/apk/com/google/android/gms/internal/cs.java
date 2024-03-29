package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.Method;

public class cs
{
  private final Context mContext;
  private Object oT;
  
  public cs(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public int a(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      int i = ((Integer)localClass.getDeclaredMethod("consumePurchase", new Class[] { Integer.TYPE, String.class, String.class }).invoke(localClass.cast(oT), new Object[] { Integer.valueOf(3), paramString1, paramString2 })).intValue();
      return i;
    }
    catch (Exception paramString1)
    {
      ev.c("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", paramString1);
    }
    return 5;
  }
  
  public Bundle a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      Class localClass = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      paramString1 = (Bundle)localClass.getDeclaredMethod("getBuyIntent", new Class[] { Integer.TYPE, String.class, String.class, String.class, String.class }).invoke(localClass.cast(oT), new Object[] { Integer.valueOf(3), paramString1, paramString2, "inapp", paramString3 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      ev.c("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", paramString1);
    }
    return null;
  }
  
  public Bundle b(String paramString1, String paramString2)
  {
    try
    {
      Class localClass = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService");
      paramString1 = (Bundle)localClass.getDeclaredMethod("getPurchases", new Class[] { Integer.TYPE, String.class, String.class, String.class }).invoke(localClass.cast(oT), new Object[] { Integer.valueOf(3), paramString1, "inapp", paramString2 });
      return paramString1;
    }
    catch (Exception paramString1)
    {
      ev.c("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.", paramString1);
    }
    return null;
  }
  
  public void destroy()
  {
    oT = null;
  }
  
  public void o(IBinder paramIBinder)
  {
    try
    {
      oT = mContext.getClassLoader().loadClass("com.android.vending.billing.IInAppBillingService$Stub").getDeclaredMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { paramIBinder });
      return;
    }
    catch (Exception paramIBinder)
    {
      ev.D("IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */