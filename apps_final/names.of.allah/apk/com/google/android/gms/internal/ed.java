package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

public final class ed
{
  public final int qY;
  public final boolean qZ;
  public final boolean ra;
  public final String rb;
  public final String rc;
  public final boolean rd;
  public final boolean re;
  public final boolean rf;
  public final String rg;
  public final String rh;
  public final int ri;
  public final int rj;
  public final int rk;
  public final int rl;
  public final int rm;
  public final int rn;
  public final float ro;
  public final int rp;
  public final int rq;
  public final double rr;
  public final boolean rs;
  public final boolean rt;
  public final int ru;
  
  public ed(Context paramContext)
  {
    AudioManager localAudioManager = (AudioManager)paramContext.getSystemService("audio");
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    Locale localLocale = Locale.getDefault();
    PackageManager localPackageManager = paramContext.getPackageManager();
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    Intent localIntent = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    qY = localAudioManager.getMode();
    boolean bool1;
    if (a(localPackageManager, "geo:0,0?q=donuts") != null)
    {
      bool1 = true;
      qZ = bool1;
      if (a(localPackageManager, "http://www.google.com") == null) {
        break label378;
      }
      bool1 = true;
      label114:
      ra = bool1;
      rb = localTelephonyManager.getNetworkOperator();
      rc = localLocale.getCountry();
      rd = eu.bQ();
      re = localAudioManager.isMusicActive();
      rf = localAudioManager.isSpeakerphoneOn();
      rg = localLocale.getLanguage();
      rh = a(localPackageManager);
      ri = localAudioManager.getStreamVolume(3);
      rj = a(paramContext, localConnectivityManager, localPackageManager);
      rk = localTelephonyManager.getNetworkType();
      rl = localTelephonyManager.getPhoneType();
      rm = localAudioManager.getRingerMode();
      rn = localAudioManager.getStreamVolume(2);
      ro = density;
      rp = widthPixels;
      rq = heightPixels;
      if (localIntent == null) {
        break label390;
      }
      int i = localIntent.getIntExtra("status", -1);
      int j = localIntent.getIntExtra("level", -1);
      int k = localIntent.getIntExtra("scale", -1);
      rr = (j / k);
      bool1 = bool2;
      if (i != 2)
      {
        if (i != 5) {
          break label384;
        }
        bool1 = bool2;
      }
      label328:
      rs = bool1;
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        rt = localConnectivityManager.isActiveNetworkMetered();
        if (localConnectivityManager.getActiveNetworkInfo() != null)
        {
          ru = localConnectivityManager.getActiveNetworkInfo().getDetailedState().ordinal();
          return;
          bool1 = false;
          break;
          label378:
          bool1 = false;
          break label114;
          label384:
          bool1 = false;
          break label328;
          label390:
          rr = -1.0D;
          rs = false;
          continue;
        }
        ru = -1;
        return;
      }
    }
    rt = false;
    ru = -1;
  }
  
  private static int a(Context paramContext, ConnectivityManager paramConnectivityManager, PackageManager paramPackageManager)
  {
    int i = -2;
    if (ep.a(paramPackageManager, paramContext.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
    {
      paramContext = paramConnectivityManager.getActiveNetworkInfo();
      if (paramContext != null) {
        i = paramContext.getType();
      }
    }
    else
    {
      return i;
    }
    return -1;
  }
  
  private static ResolveInfo a(PackageManager paramPackageManager, String paramString)
  {
    return paramPackageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)), 65536);
  }
  
  private static String a(PackageManager paramPackageManager)
  {
    Object localObject = a(paramPackageManager, "market://details?id=com.google.android.gms.ads");
    if (localObject == null) {}
    for (;;)
    {
      return null;
      localObject = activityInfo;
      if (localObject != null) {
        try
        {
          paramPackageManager = paramPackageManager.getPackageInfo(packageName, 0);
          if (paramPackageManager != null)
          {
            paramPackageManager = versionCode + "." + packageName;
            return paramPackageManager;
          }
        }
        catch (PackageManager.NameNotFoundException paramPackageManager) {}
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */