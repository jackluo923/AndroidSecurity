package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.http.conn.util.InetAddressUtils;

public final class MMSDK
{
  private static final String BASE_URL_TRACK_EVENT = "http://ads.mp.mydas.mobi/pixel?id=";
  static final int CACHE_REQUEST_TIMEOUT = 30000;
  static final int CLOSE_ACTIVITY_DURATION = 400;
  static String COMMA;
  public static final String DEFAULT_APID = "28911";
  public static final String DEFAULT_BANNER_APID = "28913";
  public static final String DEFAULT_RECT_APID = "28914";
  static final String EMPTY = "";
  static final String JSON_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss ZZZZ";
  public static final int LOG_LEVEL_DEBUG = 1;
  public static final int LOG_LEVEL_ERROR = 0;
  public static final int LOG_LEVEL_INFO = 2;
  @Deprecated
  public static final int LOG_LEVEL_INTERNAL = 4;
  @Deprecated
  public static final int LOG_LEVEL_PRIVATE_VERBOSE = 5;
  public static final int LOG_LEVEL_VERBOSE = 3;
  static final int LOG_REQUEST_TIMEOUT = 10000;
  static final int MIN_REFRESH = 15;
  static final int OPEN_ACTIVITY_DURATION = 600;
  static final String PREFS_NAME = "MillennialMediaSettings";
  static final int REQUEST_TIMEOUT = 3000;
  public static final String SDKLOG = "MillennialMediaSDK";
  public static final String VERSION = "5.0.1-13.05.14.a";
  @Deprecated
  public static boolean debugMode;
  @Deprecated
  static boolean disableAdMinRefresh = false;
  private static String getMMdidValue = null;
  private static boolean isBroadcastingEvents;
  static int logLevel;
  static String macId;
  static Handler mainHandler;
  private static int nextDefaultId = 1897808289;
  
  static
  {
    COMMA = ",";
    mainHandler = new Handler(Looper.getMainLooper());
  }
  
  static String byteArrayToString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      localStringBuilder.append(String.format("%02X", new Object[] { Byte.valueOf(paramArrayOfByte[i]) }));
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  static void checkActivity(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      localPackageManager.getActivityInfo(new ComponentName(paramContext, "com.millennialmedia.android.MMActivity"), 128);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException2)
    {
      for (;;)
      {
        try
        {
          localPackageManager.getActivityInfo(new ComponentName(paramContext, "com.millennialmedia.android.VideoPlayer"), 128);
          return;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          MMSDK.Log.e("Activity VideoPlayer not declared in AndroidManifest.xml");
          localNameNotFoundException1.printStackTrace();
          createMissingPermissionDialog(paramContext, "VideoPlayer class").show();
        }
        localNameNotFoundException2 = localNameNotFoundException2;
        MMSDK.Log.e("Activity MMActivity not declared in AndroidManifest.xml");
        localNameNotFoundException2.printStackTrace();
        createMissingPermissionDialog(paramContext, "MMActivity class").show();
      }
    }
  }
  
  static void checkPermissions(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
      createMissingPermissionDialog(paramContext, "INTERNET permission").show();
    }
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == -1) {
      createMissingPermissionDialog(paramContext, "ACCESS_NETWORK_STATE permission").show();
    }
  }
  
  private static AlertDialog createMissingPermissionDialog(Context paramContext, String paramString)
  {
    paramContext = new AlertDialog.Builder(paramContext).create();
    paramContext.setTitle("Whoops!");
    paramContext.setMessage(String.format("The developer has forgot to declare the %s in the manifest file. Please reach out to the developer to remove this error.", new Object[] { paramString }));
    paramContext.setButton(-3, "OK", new MMSDK.1());
    paramContext.show();
    return paramContext;
  }
  
  public static boolean getBroadcastEvents()
  {
    return isBroadcastingEvents;
  }
  
  static Configuration getConfiguration(Context paramContext)
  {
    return paramContext.getResources().getConfiguration();
  }
  
  static String getConnectionType(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return "unknown";
    }
    if ((paramContext.getActiveNetworkInfo() != null) && (paramContext.getActiveNetworkInfo().isConnected() == true))
    {
      int i = paramContext.getActiveNetworkInfo().getType();
      int j = paramContext.getActiveNetworkInfo().getSubtype();
      if (i == 1) {
        return "wifi";
      }
      if (i == 0)
      {
        switch (j)
        {
        default: 
          return "unknown";
        case 7: 
          return "1xrtt";
        case 4: 
          return "cdma";
        case 2: 
          return "edge";
        case 14: 
          return "ehrpd";
        case 5: 
          return "evdo_0";
        case 6: 
          return "evdo_a";
        case 12: 
          return "evdo_b";
        case 1: 
          return "gprs";
        case 8: 
          return "hsdpa";
        case 10: 
          return "hspa";
        case 15: 
          return "hspap";
        case 9: 
          return "hsupa";
        case 11: 
          return "iden";
        case 13: 
          return "lte";
        }
        return "umts";
      }
      return "unknown";
    }
    return "offline";
  }
  
  public static int getDefaultAdId()
  {
    try
    {
      int i = nextDefaultId + 1;
      nextDefaultId = i;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static float getDensity(Context paramContext)
  {
    return getResourcesgetDisplayMetricsdensity;
  }
  
  static String getDpiHeight(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = getMetrics(paramContext);
    if (needsRealDisplayMethod()) {}
    try
    {
      Display.class.getMethod("getRealMetrics", new Class[0]).invoke(localDisplayMetrics, new Object[0]);
      if ((needsRawDisplayMethod()) && ((paramContext instanceof Activity)))
      {
        paramContext = ((Activity)paramContext).getWindowManager().getDefaultDisplay();
        try
        {
          int i = ((Integer)Display.class.getMethod("getRawHeight", new Class[0]).invoke(paramContext, new Object[0])).intValue();
          return String.valueOf(i);
        }
        catch (Exception paramContext)
        {
          return Integer.toString(heightPixels);
        }
      }
      return Integer.toString(heightPixels);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  static String getDpiWidth(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = getMetrics(paramContext);
    if (needsRealDisplayMethod()) {}
    try
    {
      Display.class.getMethod("getRealMetrics", new Class[0]).invoke(localDisplayMetrics, new Object[0]);
      if ((needsRawDisplayMethod()) && ((paramContext instanceof Activity)))
      {
        paramContext = ((Activity)paramContext).getWindowManager().getDefaultDisplay();
        try
        {
          int i = ((Integer)Display.class.getMethod("getRawWidth", new Class[0]).invoke(paramContext, new Object[0])).intValue();
          return String.valueOf(i);
        }
        catch (Exception paramContext)
        {
          return Integer.toString(widthPixels);
        }
      }
      return Integer.toString(widthPixels);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  static String getIpAddress(Context paramContext)
  {
    StringBuilder localStringBuilder;
    try
    {
      localStringBuilder = new StringBuilder();
      Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
      for (;;)
      {
        if (!localEnumeration1.hasMoreElements()) {
          break label139;
        }
        Enumeration localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
        while (localEnumeration2.hasMoreElements())
        {
          paramContext = (InetAddress)localEnumeration2.nextElement();
          if (!paramContext.isLoopbackAddress())
          {
            if (localStringBuilder.length() > 0) {
              localStringBuilder.append(',');
            }
            paramContext = paramContext.getHostAddress().toUpperCase();
            if (!InetAddressUtils.isIPv4Address(paramContext)) {
              break label106;
            }
            localStringBuilder.append(paramContext);
          }
        }
      }
      i = paramContext.indexOf('%');
    }
    catch (Exception paramContext)
    {
      MMSDK.Log.e(paramContext);
      return "";
    }
    label106:
    int i;
    if (i < 0) {}
    for (;;)
    {
      localStringBuilder.append(paramContext);
      break;
      paramContext = paramContext.substring(0, i);
    }
    label139:
    paramContext = localStringBuilder.toString();
    return paramContext;
  }
  
  public static int getLogLevel()
  {
    return logLevel;
  }
  
  static String getMMdid(Context paramContext)
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        if (getMMdidValue != null)
        {
          paramContext = getMMdidValue;
          return paramContext;
        }
        str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
        paramContext = (Context)localObject;
        if (str != null) {
          paramContext = new StringBuilder("mmh_");
        }
      }
      finally
      {
        try
        {
          String str;
          paramContext.append(byteArrayToString(MessageDigest.getInstance("MD5").digest(str.getBytes())));
          paramContext.append("_");
          paramContext.append(byteArrayToString(MessageDigest.getInstance("SHA1").digest(str.getBytes())));
          paramContext = paramContext.toString();
          getMMdidValue = paramContext;
        }
        catch (Exception paramContext)
        {
          MMSDK.Log.v(paramContext.getMessage());
          paramContext = (Context)localObject;
        }
        paramContext = finally;
      }
    }
  }
  
  static String getMcc(Context paramContext)
  {
    Configuration localConfiguration = getConfiguration(paramContext);
    if (mcc == 0)
    {
      paramContext = getNetworkOperator(paramContext);
      if ((paramContext != null) && (paramContext.length() >= 6)) {
        return paramContext.substring(0, 3);
      }
    }
    return String.valueOf(mcc);
  }
  
  static DisplayMetrics getMetrics(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics();
  }
  
  static String getMnc(Context paramContext)
  {
    Configuration localConfiguration = getConfiguration(paramContext);
    if (mnc == 0)
    {
      paramContext = getNetworkOperator(paramContext);
      if ((paramContext != null) && (paramContext.length() >= 6)) {
        return paramContext.substring(3);
      }
    }
    return String.valueOf(mnc);
  }
  
  static String getNetworkOperator(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperator();
  }
  
  static String getOrientation(Context paramContext)
  {
    switch (getResourcesgetConfigurationorientation)
    {
    default: 
      return "default";
    case 1: 
      return "portrait";
    case 2: 
      return "landscape";
    }
    return "square";
  }
  
  static final String getOrientationLocked(Context paramContext)
  {
    if (Settings.System.getString(paramContext.getContentResolver(), "accelerometer_rotation").equals("1")) {
      return "false";
    }
    return "true";
  }
  
  static String getSupportsSms(Context paramContext)
  {
    return String.valueOf(paramContext.getPackageManager().hasSystemFeature("android.hardware.telephony"));
  }
  
  static String getSupportsTel(Context paramContext)
  {
    return String.valueOf(paramContext.getPackageManager().hasSystemFeature("android.hardware.telephony"));
  }
  
  public static String hasAccelerometer(Context paramContext)
  {
    if (paramContext == null) {
      return "false";
    }
    paramContext = ((SensorManager)paramContext.getSystemService("sensor")).getSensorList(1).iterator();
    int i = 0;
    if (paramContext.hasNext())
    {
      if (((Sensor)paramContext.next()).getType() != 1) {
        break label72;
      }
      i = 1;
    }
    label72:
    for (;;)
    {
      break;
      if (i != 0) {
        return "true";
      }
      return "false";
    }
  }
  
  static boolean hasSetTranslationMethod()
  {
    return Integer.parseInt(Build.VERSION.SDK) >= 11;
  }
  
  public static void initialize(Context paramContext)
  {
    paramContext = HandShake.sharedHandShake(paramContext);
    paramContext.sendInitRequest();
    paramContext.startSession();
  }
  
  static void insertUrlCommonValues(Context paramContext, Map<String, String> paramMap)
  {
    Object localObject3 = null;
    paramMap.put("accelerometer", hasAccelerometer(paramContext));
    paramMap.put("density", Float.toString(getMetricsdensity));
    paramMap.put("hpx", getDpiHeight(paramContext));
    paramMap.put("wpx", getDpiWidth(paramContext));
    if (isCachedVideoSupportedOnDevice(paramContext)) {
      paramMap.put("cachedvideo", "true");
    }
    for (;;)
    {
      if (Build.MODEL != null) {
        paramMap.put("dm", Build.MODEL);
      }
      if (Build.VERSION.RELEASE != null) {
        paramMap.put("dv", "Android" + Build.VERSION.RELEASE);
      }
      Object localObject1 = getMMdid(paramContext);
      if (localObject1 != null) {
        paramMap.put("mmdid", localObject1);
      }
      paramMap.put("sdkversion", "5.0.1-13.05.14.a");
      paramMap.put("mmisdk", "5.0.1-13.05.14.a");
      paramMap.put("mcc", getMcc(paramContext));
      paramMap.put("mnc", getMnc(paramContext));
      localObject1 = Locale.getDefault();
      if (localObject1 != null)
      {
        paramMap.put("language", ((Locale)localObject1).getLanguage());
        paramMap.put("country", ((Locale)localObject1).getCountry());
      }
      try
      {
        localObject1 = paramContext.getPackageName();
        paramMap.put("pkid", localObject1);
        localObject4 = paramContext.getPackageManager();
        paramMap.put("pknm", ((PackageManager)localObject4).getApplicationLabel(((PackageManager)localObject4).getApplicationInfo((String)localObject1, 0)).toString());
        if (debugMode) {
          paramMap.put("debug", "true");
        }
        localObject1 = HandShake.sharedHandShake(paramContext).getSchemesList(paramContext);
        if (localObject1 != null) {
          paramMap.put("appsids", localObject1);
        }
        localObject1 = AdCache.getCachedVideoList(paramContext);
        if (localObject1 != null) {
          paramMap.put("vid", localObject1);
        }
        for (;;)
        {
          try
          {
            str1 = getConnectionType(paramContext);
            if (!AdCache.isExternalStorageAvailable(paramContext)) {
              continue;
            }
            localObject1 = new StatFs(AdCache.getCacheDirectory(paramContext).getAbsolutePath());
            str2 = Long.toString(((StatFs)localObject1).getAvailableBlocks() * ((StatFs)localObject1).getBlockSize());
            localObject4 = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (localObject4 == null) {
              break label643;
            }
            if (((Intent)localObject4).getIntExtra("plugged", 0) != 0) {
              continue;
            }
            localObject1 = "false";
          }
          catch (Exception paramContext)
          {
            String str1;
            String str2;
            MMSDK.Log.v(paramContext);
            continue;
            localObject1 = "true";
            continue;
          }
          localObject4 = Integer.toString((int)(100.0F / ((Intent)localObject4).getIntExtra("scale", 100) * ((Intent)localObject4).getIntExtra("level", 0)));
          localObject3 = localObject1;
          localObject1 = localObject4;
          if ((localObject1 != null) && (((String)localObject1).length() > 0)) {
            paramMap.put("bl", localObject1);
          }
          if ((localObject3 != null) && (((String)localObject3).length() > 0)) {
            paramMap.put("plugged", localObject3);
          }
          if (str2.length() > 0) {
            paramMap.put("space", str2);
          }
          if (str1 != null) {
            paramMap.put("conn", str1);
          }
          paramContext = URLEncoder.encode(getIpAddress(paramContext), "UTF-8");
          if (!TextUtils.isEmpty(paramContext)) {
            paramMap.put("pip", paramContext);
          }
          MMRequest.insertLocation(paramMap);
          return;
          paramMap.put("cachedvideo", "false");
          break;
          localObject1 = new StatFs(paramContext.getFilesDir().getPath());
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          continue;
          label643:
          Object localObject4 = null;
          Object localObject2 = localObject3;
          localObject3 = localObject4;
        }
      }
    }
  }
  
  static boolean isCachedVideoSupportedOnDevice(Context paramContext)
  {
    return (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != -1) && ((!Build.VERSION.SDK.equalsIgnoreCase("8")) || ((Environment.getExternalStorageState().equals("mounted")) && (AdCache.isExternalEnabled)));
  }
  
  static boolean isConnected(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return false;
    }
    return (paramContext.getActiveNetworkInfo() != null) && (paramContext.getActiveNetworkInfo().isConnected() == true);
  }
  
  static boolean isUiThread()
  {
    return mainHandler.getLooper() == Looper.myLooper();
  }
  
  private static boolean needsRawDisplayMethod()
  {
    return (Integer.parseInt(Build.VERSION.SDK) >= 13) && (Integer.parseInt(Build.VERSION.SDK) <= 16);
  }
  
  private static boolean needsRealDisplayMethod()
  {
    return Integer.parseInt(Build.VERSION.SDK) >= 17;
  }
  
  static void printDiagnostics(MMAdImpl paramMMAdImpl)
  {
    Context localContext = paramMMAdImpl.getContext();
    MMSDK.Log.i("MMAd Controllers: %s", new Object[] { MMAdImplController.controllersToString() });
    MMSDK.Log.i("MMAd External ID: %d", new Object[] { Integer.valueOf(paramMMAdImpl.getId()) });
    MMSDK.Log.i("MMAd Internal ID: %d", new Object[] { Long.valueOf(internalId) });
    MMSDK.Log.i("APID: %s", new Object[] { apid });
    if (AdCache.isExternalStorageAvailable(localContext))
    {
      paramMMAdImpl = "";
      MMSDK.Log.i("SD card is %savailable.", new Object[] { paramMMAdImpl });
      if (localContext != null)
      {
        MMSDK.Log.i("Package: %s", new Object[] { localContext.getPackageName() });
        MMSDK.Log.i("MMDID: %s", new Object[] { getMMdid(localContext) });
        MMSDK.Log.i("Permissions:");
        if (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != -1) {
          break label345;
        }
        paramMMAdImpl = "not ";
        label160:
        MMSDK.Log.i("android.permission.ACCESS_NETWORK_STATE is %spresent", new Object[] { paramMMAdImpl });
        if (localContext.checkCallingOrSelfPermission("android.permission.INTERNET") != -1) {
          break label351;
        }
        paramMMAdImpl = "not ";
        label188:
        MMSDK.Log.i("android.permission.INTERNET is %spresent", new Object[] { paramMMAdImpl });
        if (localContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != -1) {
          break label357;
        }
        paramMMAdImpl = "not ";
        label217:
        MMSDK.Log.i("android.permission.WRITE_EXTERNAL_STORAGE is %spresent", new Object[] { paramMMAdImpl });
        if (localContext.checkCallingOrSelfPermission("android.permission.VIBRATE") != -1) {
          break label363;
        }
        paramMMAdImpl = "not ";
        label246:
        MMSDK.Log.i("android.permission.VIBRATE is %spresent", new Object[] { paramMMAdImpl });
        if (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != -1) {
          break label369;
        }
        paramMMAdImpl = "not ";
        label275:
        MMSDK.Log.i("android.permission.ACCESS_COARSE_LOCATION is %spresent", new Object[] { paramMMAdImpl });
        if (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != -1) {
          break label375;
        }
      }
    }
    label345:
    label351:
    label357:
    label363:
    label369:
    label375:
    for (paramMMAdImpl = "not ";; paramMMAdImpl = "")
    {
      MMSDK.Log.i("android.permission.ACCESS_FINE_LOCATION is %spresent", new Object[] { paramMMAdImpl });
      MMSDK.Log.i("Cached Ads:");
      AdCache.iterateCachedAds(localContext, 2, new MMSDK.2(localContext));
      return;
      paramMMAdImpl = "not ";
      break;
      paramMMAdImpl = "";
      break label160;
      paramMMAdImpl = "";
      break label188;
      paramMMAdImpl = "";
      break label217;
      paramMMAdImpl = "";
      break label246;
      paramMMAdImpl = "";
      break label275;
    }
  }
  
  static boolean removeAccelForJira1164()
  {
    return Integer.parseInt(Build.VERSION.SDK) >= 14;
  }
  
  public static void resetCache(Context paramContext)
  {
    AdCache.resetCache(paramContext);
  }
  
  static void runOnUiThread(Runnable paramRunnable)
  {
    if (isUiThread())
    {
      paramRunnable.run();
      return;
    }
    mainHandler.post(paramRunnable);
  }
  
  static void runOnUiThreadDelayed(Runnable paramRunnable, long paramLong)
  {
    mainHandler.postDelayed(paramRunnable, paramLong);
  }
  
  public static void setBroadcastEvents(boolean paramBoolean)
  {
    isBroadcastingEvents = paramBoolean;
  }
  
  public static void setLogLevel(int paramInt)
  {
    logLevel = paramInt;
  }
  
  static void setMMdid(String paramString)
  {
    try
    {
      getMMdidValue = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  static boolean supportsFullScreenInline()
  {
    return Integer.parseInt(Build.VERSION.SDK) >= 11;
  }
  
  public static void trackConversion(Context paramContext, String paramString)
  {
    MMConversionTracker.trackConversion(paramContext, paramString, null);
  }
  
  public static void trackConversion(Context paramContext, String paramString, MMRequest paramMMRequest)
  {
    MMConversionTracker.trackConversion(paramContext, paramString, paramMMRequest);
  }
  
  public static void trackEvent(Context paramContext, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramContext = getMMdid(paramContext);
      if (!TextUtils.isEmpty(paramContext)) {
        Utils.HttpUtils.executeUrl("http://ads.mp.mydas.mobi/pixel?id=" + paramString + "&mmdid=" + paramContext);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMSDK
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */