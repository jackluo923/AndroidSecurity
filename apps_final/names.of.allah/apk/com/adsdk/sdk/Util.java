package com.adsdk.sdk;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.Locale;

public class Util
{
  private static final float MINIMAL_ACCURACY = 1000.0F;
  private static final long MINIMAL_TIME_FROM_FIX = 1200000L;
  private static String androidAdId;
  
  @SuppressLint({"DefaultLocale"})
  public static String buildUserAgent()
  {
    String str3 = Build.VERSION.RELEASE;
    String str4 = Build.MODEL;
    String str5 = Build.ID;
    Object localObject = Locale.getDefault();
    String str2 = ((Locale)localObject).getLanguage();
    String str1 = "en";
    if (str2 != null)
    {
      str2 = str2.toLowerCase();
      localObject = ((Locale)localObject).getCountry();
      str1 = str2;
      if (localObject != null) {
        str1 = str2 + "-" + ((String)localObject).toLowerCase();
      }
    }
    return String.format("Mozilla/5.0 (Linux; U; Android %1$s; %2$s; %3$s Build/%4$s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1", new Object[] { str3, str1, str4, str5 });
  }
  
  public static String getAndroidAdId()
  {
    if (androidAdId == null) {
      return "";
    }
    return androidAdId;
  }
  
  public static String getConnectionType(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext == null) {
        return "UNKNOWN";
      }
      int i = paramContext.getType();
      int j = paramContext.getSubtype();
      if (i == 1) {
        return "WIFI";
      }
      if (i == 6) {
        return "WIMAX";
      }
      if (i == 0)
      {
        switch (j)
        {
        default: 
          return "MOBILE";
        case 7: 
          return "1xRTT";
        case 4: 
          return "CDMA";
        case 2: 
          return "EDGE";
        case 5: 
          return "EVDO_0";
        case 6: 
          return "EVDO_A";
        case 1: 
          return "GPRS";
        case 3: 
          return "UMTS";
        case 14: 
          return "EHRPD";
        case 12: 
          return "EVDO_B";
        case 8: 
          return "HSDPA";
        case 10: 
          return "HSPA";
        case 15: 
          return "HSPAP";
        case 9: 
          return "HSUPA";
        case 11: 
          return "IDEN";
        }
        return "LTE";
      }
      return "UNKNOWN";
    }
    return "UNKNOWN";
  }
  
  public static String getDefaultUserAgentString(Context paramContext)
  {
    return System.getProperty("http.agent");
  }
  
  public static String getDeviceId(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    if ((str != null) && (!str.equals("9774d56d682e549c")))
    {
      paramContext = str;
      if (!str.equals("0000000000000000")) {}
    }
    else
    {
      paramContext = "";
    }
    return paramContext;
  }
  
  public static String getLocalIpAddress()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration;
        while (!localEnumeration.hasMoreElements())
        {
          if (!((Enumeration)localObject).hasMoreElements()) {
            break;
          }
          localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration.nextElement();
      } while (localInetAddress.isLoopbackAddress());
      Object localObject = localInetAddress.getHostAddress().toString();
      return (String)localObject;
    }
    catch (SocketException localSocketException)
    {
      Log.e(localSocketException.toString());
    }
    return null;
  }
  
  public static Location getLocation(Context paramContext)
  {
    int i = 0;
    int j;
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0)
    {
      i = 1;
      j = 1;
    }
    for (;;)
    {
      paramContext = (LocationManager)paramContext.getSystemService("location");
      Location localLocation;
      if ((paramContext != null) && (j != 0) && (paramContext.isProviderEnabled("gps")))
      {
        localLocation = paramContext.getLastKnownLocation("gps");
        if (localLocation == null) {
          paramContext = null;
        }
      }
      long l;
      do
      {
        return paramContext;
        if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
          break label187;
        }
        j = 0;
        i = 1;
        break;
        l = Math.abs(System.currentTimeMillis() - localLocation.getTime());
        if ((localLocation.hasAccuracy()) && (localLocation.getAccuracy() < 1000.0F) && (l < 1200000L)) {
          return localLocation;
        }
        if ((paramContext == null) || (i == 0) || (!paramContext.isProviderEnabled("network"))) {
          break label185;
        }
        paramContext = paramContext.getLastKnownLocation("network");
        if (paramContext == null) {
          return null;
        }
        l = Math.abs(System.currentTimeMillis() - paramContext.getTime());
      } while ((paramContext.hasAccuracy()) && (paramContext.getAccuracy() < 1000.0F) && (l < 1200000L));
      label185:
      return null;
      label187:
      j = 0;
    }
  }
  
  public static int getMemoryClass(Context paramContext)
  {
    try
    {
      int i = ((Integer)ActivityManager.class.getMethod("getMemoryClass", new Class[0]).invoke((ActivityManager)paramContext.getSystemService("activity"), new Object[0])).intValue();
      return i;
    }
    catch (Exception paramContext) {}
    return 16;
  }
  
  public static String getTelephonyDeviceId(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == 0) {
      return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    }
    return "";
  }
  
  public static boolean isNetworkAvailable(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext == null) {
        return false;
      }
      int i = paramContext.getType();
      if ((i == 1) || (i == 0)) {
        return paramContext.isConnected();
      }
      return false;
    }
    return true;
  }
  
  public static void prepareAndroidAdId(Context paramContext)
  {
    try
    {
      Class.forName("com.google.android.gms.common.GooglePlayServicesUtil");
      if ((androidAdId == null) && (GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext) == 0)) {
        new Util.1(paramContext).execute(new Void[0]);
      }
      return;
    }
    catch (ClassNotFoundException paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */