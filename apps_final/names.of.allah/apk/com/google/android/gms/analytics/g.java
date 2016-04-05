package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

class g
  implements m
{
  private static g tD;
  private static Object tn = new Object();
  protected String tA;
  protected String tB;
  protected String tC;
  protected String tz;
  
  protected g() {}
  
  private g(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    tB = paramContext.getPackageName();
    tC = localPackageManager.getInstallerPackageName(tB);
    String str = tB;
    localObject2 = null;
    localObject1 = str;
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
      paramContext = (Context)localObject2;
      localObject1 = str;
      if (localPackageInfo != null)
      {
        localObject1 = str;
        paramContext = localPackageManager.getApplicationLabel(applicationInfo).toString();
        localObject1 = paramContext;
        str = versionName;
        localObject1 = paramContext;
        paramContext = str;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        aa.A("Error retrieving package info: appName set to " + (String)localObject1);
        paramContext = (Context)localObject2;
      }
    }
    tz = ((String)localObject1);
    tA = paramContext;
  }
  
  public static g cp()
  {
    return tD;
  }
  
  public static void r(Context paramContext)
  {
    synchronized (tn)
    {
      if (tD == null) {
        tD = new g(paramContext);
      }
      return;
    }
  }
  
  public boolean J(String paramString)
  {
    return ("&an".equals(paramString)) || ("&av".equals(paramString)) || ("&aid".equals(paramString)) || ("&aiid".equals(paramString));
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      if (paramString.equals("&an")) {
        return tz;
      }
      if (paramString.equals("&av")) {
        return tA;
      }
      if (paramString.equals("&aid")) {
        return tB;
      }
    } while (!paramString.equals("&aiid"));
    return tC;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */