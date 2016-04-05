package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.hn;
import java.lang.reflect.Method;

public class ProviderInstaller
{
  public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
  private static Method adX = null;
  private static final Object qm = new Object();
  
  private static void I(Context paramContext)
  {
    adX = paramContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[] { Context.class });
  }
  
  public static void installIfNeeded(Context arg0)
  {
    hn.b(???, "Context must not be null");
    GooglePlayServicesUtil.w(???);
    Context localContext = GooglePlayServicesUtil.getRemoteContext(???);
    if (localContext == null)
    {
      Log.e("ProviderInstaller", "Failed to get remote context");
      throw new GooglePlayServicesNotAvailableException(8);
    }
    synchronized (qm)
    {
      try
      {
        if (adX == null) {
          I(localContext);
        }
        adX.invoke(null, new Object[] { localContext });
        return;
      }
      catch (Exception localException)
      {
        Log.e("ProviderInstaller", "Failed to install provider: " + localException.getMessage());
        throw new GooglePlayServicesNotAvailableException(8);
      }
    }
  }
  
  public static void installIfNeededAsync(Context paramContext, ProviderInstaller.ProviderInstallListener paramProviderInstallListener)
  {
    hn.b(paramContext, "Context must not be null");
    hn.b(paramProviderInstallListener, "Listener must not be null");
    hn.ay("Must be called on the UI thread");
    new ProviderInstaller.1(paramContext, paramProviderInstallListener).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.security.ProviderInstaller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */