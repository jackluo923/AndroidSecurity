package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.util.VisibleForTesting;

class AppFieldsDefaultProvider
  implements DefaultProvider
{
  private static AppFieldsDefaultProvider sInstance;
  private static Object sInstanceLock = new Object();
  protected String mAppId;
  protected String mAppInstallerId;
  protected String mAppName;
  protected String mAppVersion;
  
  @VisibleForTesting
  protected AppFieldsDefaultProvider() {}
  
  private AppFieldsDefaultProvider(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    mAppId = paramContext.getPackageName();
    mAppInstallerId = localPackageManager.getInstallerPackageName(mAppId);
    String str = mAppId;
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
        Log.e("Error retrieving package info: appName set to " + (String)localObject1);
        paramContext = (Context)localObject2;
      }
    }
    mAppName = ((String)localObject1);
    mAppVersion = paramContext;
  }
  
  @VisibleForTesting
  static void dropInstance()
  {
    synchronized (sInstanceLock)
    {
      sInstance = null;
      return;
    }
  }
  
  public static AppFieldsDefaultProvider getProvider()
  {
    return sInstance;
  }
  
  public static void initializeProvider(Context paramContext)
  {
    synchronized (sInstanceLock)
    {
      if (sInstance == null) {
        sInstance = new AppFieldsDefaultProvider(paramContext);
      }
      return;
    }
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      if (paramString.equals("&an")) {
        return mAppName;
      }
      if (paramString.equals("&av")) {
        return mAppVersion;
      }
      if (paramString.equals("&aid")) {
        return mAppId;
      }
    } while (!paramString.equals("&aiid"));
    return mAppInstallerId;
  }
  
  public boolean providesField(String paramString)
  {
    return ("&an".equals(paramString)) || ("&av".equals(paramString)) || ("&aid".equals(paramString)) || ("&aiid".equals(paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.AppFieldsDefaultProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */