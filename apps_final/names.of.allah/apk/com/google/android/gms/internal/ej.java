package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;

public class ej
{
  private final Object lq = new Object();
  private final String rO;
  private int rU = 0;
  private long rV = -1L;
  private long rW = -1L;
  private int rX = 0;
  private int rY = -1;
  
  public ej(String paramString)
  {
    rO = paramString;
  }
  
  public static boolean i(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("Theme.Translucent", "style", "android");
    if (i == 0)
    {
      ev.B("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
      return false;
    }
    ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), "com.google.android.gms.ads.AdActivity");
    try
    {
      if (i == getPackageManagergetActivityInfo0theme) {
        return true;
      }
      ev.B("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      ev.D("Fail to fetch AdActivity theme");
      ev.B("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
    }
    return false;
  }
  
  public Bundle b(Context paramContext, String paramString)
  {
    synchronized (lq)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("session_id", rO);
      localBundle.putLong("basets", rW);
      localBundle.putLong("currts", rV);
      localBundle.putString("seq_num", paramString);
      localBundle.putInt("preqs", rY);
      localBundle.putInt("pclick", rU);
      localBundle.putInt("pimp", rX);
      localBundle.putBoolean("support_transparent_background", i(paramContext));
      return localBundle;
    }
  }
  
  public void b(aj paramaj, long paramLong)
  {
    synchronized (lq)
    {
      if (rW == -1L)
      {
        rW = paramLong;
        rV = rW;
        if ((extras == null) || (extras.getInt("gw", 2) != 1)) {}
      }
      else
      {
        rV = paramLong;
      }
    }
    rY += 1;
  }
  
  public long bJ()
  {
    return rW;
  }
  
  public void bw()
  {
    synchronized (lq)
    {
      rX += 1;
      return;
    }
  }
  
  public void bx()
  {
    synchronized (lq)
    {
      rU += 1;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */