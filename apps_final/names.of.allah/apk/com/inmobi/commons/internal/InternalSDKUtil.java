package com.inmobi.commons.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.cache.CacheController.Validator;
import com.inmobi.commons.cache.ProductConfig;
import com.inmobi.commons.metric.Logger;
import com.inmobi.commons.uid.AdvertisingId;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.commons.uid.UIDUtil;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import org.json.JSONException;
import org.json.JSONObject;

public class InternalSDKUtil
{
  public static final String BASE_LOG_TAG = "[InMobi]";
  public static final String CLASS_PLATFORM_ID = "com.inmobi.commons.uid.PlatformId";
  public static final String CLASS_PLAYSERVICES = "com.google.android.gms.common.GooglePlayServicesUtil";
  public static final String IM_PREF = "impref";
  public static final String INMOBI_SDK_RELEASE_DATE = "20140613";
  public static final String INMOBI_SDK_RELEASE_VERSION = "4.4.1";
  public static final String LOGGING_TAG = "[InMobi]-4.4.1";
  public static final String METHOD_PLAY_AVAILABLE = "isGooglePlayServicesAvailable";
  public static final String PRODUCT_COMMONS = "commons";
  private static CommonsConfig a = new CommonsConfig();
  private static String b;
  private static Context c = null;
  private static Map<String, String> d = new HashMap();
  private static CacheController.Validator e = new d();
  private static boolean f = true;
  private static byte[] g = new byte[16];
  private static String h = "SHA1PRNG";
  private static String i = "Crypto";
  private static String j = "HmacSHA1";
  private static String k = "RSA";
  private static String l = "RSA/ECB/nopadding";
  private static String m = "aeskeygenerate";
  private static String n = "last_key_generate";
  private static String o = "AES/CBC/PKCS7Padding";
  private static String p = "AES";
  
  public static byte[] DeAe(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    return a(paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3);
  }
  
  public static String SeMeGe(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, String paramString2, String paramString3)
  {
    return a(paramString1, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3, paramString2, paramString3);
  }
  
  private static String a(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = b(paramString1.getBytes("UTF-8"), paramArrayOfByte1, paramArrayOfByte2);
      byte[] arrayOfByte = a(paramString1, paramArrayOfByte3);
      paramString1 = a(paramString1);
      arrayOfByte = a(arrayOfByte);
      paramArrayOfByte2 = a(paramArrayOfByte2);
      paramString1 = new String(Base64.encode(b(a(a(b(b(a(paramArrayOfByte1), a(paramArrayOfByte3)), paramArrayOfByte2), paramString3, paramString2)), b(paramString1, arrayOfByte)), 8));
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  private static void a()
  {
    d = UIDUtil.getMap(getContext(), null);
  }
  
  static boolean a(Map<String, Object> paramMap)
  {
    
    try
    {
      CommonsConfig localCommonsConfig = new CommonsConfig();
      localCommonsConfig.setFromMap(paramMap);
      a = localCommonsConfig;
      ApiStatCollector.getLogger().setMetricConfigParams(localCommonsConfig.getApiStatsConfig());
      return true;
    }
    catch (Exception paramMap)
    {
      paramMap.printStackTrace();
    }
    return false;
  }
  
  private static byte[] a(byte[] paramArrayOfByte)
  {
    long l1 = paramArrayOfByte.length;
    Object localObject = ByteBuffer.allocate(8);
    ((ByteBuffer)localObject).order(ByteOrder.LITTLE_ENDIAN);
    ((ByteBuffer)localObject).putLong(l1);
    localObject = ((ByteBuffer)localObject).array();
    byte[] arrayOfByte = new byte[localObject.length + paramArrayOfByte.length];
    System.arraycopy(localObject, 0, arrayOfByte, 0, localObject.length);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, localObject.length, paramArrayOfByte.length);
    return arrayOfByte;
  }
  
  private static byte[] a(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    paramString2 = new BigInteger(paramString2, 16);
    paramString1 = new BigInteger(paramString1, 16);
    try
    {
      paramString1 = (RSAPublicKey)KeyFactory.getInstance(k).generatePublic(new InternalSDKUtil.a(paramString2, paramString1));
      paramString2 = Cipher.getInstance(l);
      paramString2.init(1, paramString1);
      paramArrayOfByte = paramString2.doFinal(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      Log.internal("[InMobi]-4.4.1", "NoSuchAlgorithmException");
      return null;
    }
    catch (InvalidKeySpecException paramArrayOfByte)
    {
      Log.internal("[InMobi]-4.4.1", "InvalidKeySpecException");
      return null;
    }
    catch (NoSuchPaddingException paramArrayOfByte)
    {
      Log.internal("[InMobi]-4.4.1", "NoSuchPaddingException");
      return null;
    }
    catch (InvalidKeyException paramArrayOfByte)
    {
      Log.internal("[InMobi]-4.4.1", "InvalidKeyException");
      return null;
    }
    catch (IllegalBlockSizeException paramArrayOfByte)
    {
      Log.internal("[InMobi]-4.4.1", "IllegalBlockSizeException");
      return null;
    }
    catch (BadPaddingException paramArrayOfByte)
    {
      Log.internal("[InMobi]-4.4.1", "BadPaddingException");
    }
    return null;
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte2 = new InternalSDKUtil.d(paramArrayOfByte2, 0, paramArrayOfByte2.length, j);
    try
    {
      Mac localMac = Mac.getInstance(j);
      localMac.init(paramArrayOfByte2);
      paramArrayOfByte1 = localMac.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "NoSuchAlgorithmException");
      return null;
    }
    catch (InvalidKeyException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "InvalidKeyException");
    }
    return null;
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    paramArrayOfByte2 = new InternalSDKUtil.d(paramArrayOfByte2, p);
    try
    {
      Cipher localCipher = Cipher.getInstance(o);
      localCipher.init(2, paramArrayOfByte2, new InternalSDKUtil.c(paramArrayOfByte3));
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "NoSuchAlgorithmException");
      return null;
    }
    catch (NoSuchPaddingException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "NoSuchPaddingException");
      return null;
    }
    catch (InvalidKeyException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "InvalidKeyException");
      return null;
    }
    catch (IllegalBlockSizeException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "IllegalBlockSizeException");
      return null;
    }
    catch (BadPaddingException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "BadPaddingException");
      return null;
    }
    catch (InvalidAlgorithmParameterException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "InvalidAlgorithmParameterException");
    }
    return null;
  }
  
  public static void addCommonPropertiesToConnection(HttpURLConnection paramHttpURLConnection)
  {
    String str = getUserAgent(getContext());
    if (str != null) {
      paramHttpURLConnection.setRequestProperty("User-Agent", str);
    }
  }
  
  private static byte[] b()
  {
    try
    {
      SecureRandom.getInstance(h, i).nextBytes(g);
      return g;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        Log.internal("[InMobi]-4.4.1", "NoSuchAlgorithmException");
      }
    }
    catch (NoSuchProviderException localNoSuchProviderException)
    {
      for (;;)
      {
        Log.internal("[InMobi]-4.4.1", "NoSuchProviderException");
      }
    }
  }
  
  private static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
    return arrayOfByte;
  }
  
  private static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    paramArrayOfByte2 = new InternalSDKUtil.d(paramArrayOfByte2, p);
    paramArrayOfByte3 = new InternalSDKUtil.c(paramArrayOfByte3);
    try
    {
      Cipher localCipher = Cipher.getInstance(o);
      localCipher.init(1, paramArrayOfByte2, paramArrayOfByte3);
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "NoSuchAlgorithmException");
      return null;
    }
    catch (NoSuchPaddingException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "NoSuchPaddingException");
      return null;
    }
    catch (InvalidKeyException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "InvalidKeyException");
      return null;
    }
    catch (IllegalBlockSizeException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "IllegalBlockSizeException");
      return null;
    }
    catch (BadPaddingException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "BadPaddingException");
      return null;
    }
    catch (InvalidAlgorithmParameterException paramArrayOfByte1)
    {
      Log.internal("[InMobi]-4.4.1", "InvalidAlgorithmParameterException");
    }
    return null;
  }
  
  private static byte[] c()
  {
    Object localObject = getContext().getSharedPreferences(m, 0);
    long l1 = ((SharedPreferences)localObject).getLong(n, 0L);
    if (0L == l1)
    {
      Log.internal("[InMobi]-4.4.1", "Generating for first time");
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putLong(n, System.currentTimeMillis());
      ((SharedPreferences.Editor)localObject).commit();
      return b();
    }
    if (l1 + 86400000L - System.currentTimeMillis() <= 0L)
    {
      Log.internal("[InMobi]-4.4.1", "generated again");
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putLong(n, System.currentTimeMillis());
      ((SharedPreferences.Editor)localObject).commit();
      return b();
    }
    Log.internal("[InMobi]-4.4.1", "already generated");
    return g;
  }
  
  public static boolean checkNetworkAvailibility(Context paramContext)
  {
    if (paramContext == null) {
      return false;
    }
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext.getActiveNetworkInfo() == null) {
        return false;
      }
      boolean bool = paramContext.getActiveNetworkInfo().isConnected();
      return bool;
    }
    catch (Exception paramContext)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot check network state", paramContext);
    }
    return false;
  }
  
  public static boolean getBooleanFromJSON(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    try
    {
      boolean bool = paramJSONObject.getBoolean(paramString);
      return bool;
    }
    catch (Exception localException)
    {
      try
      {
        Log.debug("[InMobi]-4.4.1", "JSON with property " + paramString + " found but has bad datatype(" + paramJSONObject.get(paramString).getClass() + "). Reverting to " + paramBoolean);
        return paramBoolean;
      }
      catch (JSONException paramJSONObject) {}
    }
    return paramBoolean;
  }
  
  public static boolean getBooleanFromMap(Map<String, Object> paramMap, String paramString)
  {
    paramMap = paramMap.get(paramString);
    if ((paramMap instanceof Boolean)) {
      return ((Boolean)paramMap).booleanValue();
    }
    Log.internal("[InMobi]-4.4.1", "Key " + paramString + " has illegal value");
    throw new IllegalArgumentException();
  }
  
  public static CommonsConfig getConfig()
  {
    return a;
  }
  
  public static String getConnectivityType(Context paramContext)
  {
    int i2;
    label86:
    label90:
    do
    {
      try
      {
        if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
          break label86;
        }
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext == null) {
          break label86;
        }
        paramContext = paramContext.getActiveNetworkInfo();
        int i1 = paramContext.getType();
        i2 = paramContext.getSubtype();
        if (i1 == 1) {
          return "wifi";
        }
        if (i1 != 0) {
          break label86;
        }
        paramContext = "carrier";
        if (i2 != 1) {
          break label90;
        }
        return "gprs";
      }
      catch (Exception paramContext)
      {
        Log.internal("[InMobi]-4.4.1", "Error getting the network info", paramContext);
        return null;
      }
      if (i2 == 0)
      {
        return "carrier";
        paramContext = null;
      }
      return paramContext;
      if (i2 == 2) {
        return "edge";
      }
    } while (i2 != 3);
    return "umts";
  }
  
  public static Context getContext()
  {
    return c;
  }
  
  public static int getDisplayRotation(Display paramDisplay)
  {
    Object localObject = null;
    try
    {
      Method localMethod1 = Display.class.getMethod("getRotation", null);
      localObject = localMethod1;
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      for (;;)
      {
        try
        {
          int i1 = ((Integer)((Method)localObject).invoke(paramDisplay, null)).intValue();
          return i1;
        }
        catch (Exception paramDisplay)
        {
          Log.internal("commons", "Unable to access display rotation");
        }
        localNoSuchMethodException1 = localNoSuchMethodException1;
        try
        {
          Method localMethod2 = Display.class.getMethod("getOrientation", null);
          localObject = localMethod2;
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          Log.internal("commons", "Unable to access getOrientation method via reflection");
        }
      }
    }
    if (localObject != null) {}
    return 64537;
  }
  
  public static String getFinalRedirectedUrl(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
        addCommonPropertiesToConnection(localHttpURLConnection);
        localHttpURLConnection.setUseCaches(false);
        localHttpURLConnection.setRequestMethod("GET");
        int i2 = localHttpURLConnection.getResponseCode();
        if ((i2 >= 300) && (i2 < 400))
        {
          String str1 = localHttpURLConnection.getHeaderField("Location");
          if (str1 != null)
          {
            str2 = str1;
            paramString = str1;
            continue;
          }
        }
      }
      catch (Exception localException1)
      {
        try
        {
          if (localHttpURLConnection.getResponseCode() != 200)
          {
            if (i1 < 5) {
              break label114;
            }
            str2 = str1;
          }
          paramString = str2;
          localHttpURLConnection.disconnect();
          return str2;
        }
        catch (Exception localException2)
        {
          continue;
          i1 += 1;
          paramString = localException2;
        }
        localException1 = localException1;
        Log.internal("[InMobi]-4.4.1", "Cannot get redirect url", localException1);
        return paramString;
      }
      label114:
      String str2 = paramString;
    }
  }
  
  public static String getInMobiInternalVersion(String paramString)
  {
    paramString = paramString.split("[.]");
    StringBuffer localStringBuffer = new StringBuffer("");
    int i1 = 0;
    for (;;)
    {
      if (i1 < paramString.length) {}
      try
      {
        int i2 = Integer.valueOf(paramString[i1]).intValue();
        localStringBuffer.append("T").append((char)(i2 + 65));
        i1 += 1;
        continue;
        if (localStringBuffer.equals("")) {
          return "";
        }
        return localStringBuffer.substring(1).toString();
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
    }
  }
  
  public static int getIntFromJSON(JSONObject paramJSONObject, String paramString, int paramInt)
  {
    try
    {
      int i1 = paramJSONObject.getInt(paramString);
      return i1;
    }
    catch (Exception localException)
    {
      try
      {
        Log.debug("[InMobi]-4.4.1", "JSON with property " + paramString + " found but has bad datatype(" + paramJSONObject.get(paramString).getClass() + "). Reverting to " + paramInt);
        return paramInt;
      }
      catch (JSONException paramJSONObject) {}
    }
    return paramInt;
  }
  
  public static int getIntFromMap(Map<String, Object> paramMap, String paramString, int paramInt, long paramLong)
  {
    paramMap = paramMap.get(paramString);
    if ((paramMap instanceof Integer))
    {
      int i1 = ((Integer)paramMap).intValue();
      if ((i1 <= paramLong) && (i1 >= paramInt)) {
        return i1;
      }
    }
    Log.internal("[InMobi]-4.4.1", "Key " + paramString + " has illegal value");
    throw new IllegalArgumentException();
  }
  
  public static long getLongFromJSON(JSONObject paramJSONObject, String paramString, long paramLong)
  {
    try
    {
      long l1 = paramJSONObject.getLong(paramString);
      return l1;
    }
    catch (Exception localException)
    {
      try
      {
        Log.debug("[InMobi]-4.4.1", "JSON with property " + paramString + " found but has bad datatype(" + paramJSONObject.get(paramString).getClass() + "). Reverting to " + paramLong);
        return paramLong;
      }
      catch (JSONException paramJSONObject) {}
    }
    return paramLong;
  }
  
  public static long getLongFromMap(Map<String, Object> paramMap, String paramString, long paramLong1, long paramLong2)
  {
    Object localObject = paramMap.get(paramString);
    if ((localObject instanceof Long))
    {
      l1 = ((Long)localObject).longValue();
      if ((l1 <= paramLong2) && (l1 >= paramLong1)) {
        return l1;
      }
    }
    long l1 = paramLong1;
    if (paramLong1 < -2147483648L) {
      l1 = -2147483648L;
    }
    int i1 = (int)l1;
    paramLong1 = paramLong2;
    if (paramLong2 > 2147483647L) {
      paramLong1 = 2147483647L;
    }
    return getIntFromMap(paramMap, paramString, i1, (int)paramLong1);
  }
  
  public static String getSavedUserAgent()
  {
    return b;
  }
  
  public static String getStringFromJSON(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    try
    {
      String str = paramJSONObject.getString(paramString1);
      return str;
    }
    catch (Exception localException)
    {
      try
      {
        Log.debug("[InMobi]-4.4.1", "JSON with property " + paramString1 + " found but has bad datatype(" + paramJSONObject.get(paramString1).getClass() + "). Reverting to " + paramString2);
        return paramString2;
      }
      catch (JSONException paramJSONObject) {}
    }
    return paramString2;
  }
  
  public static String getStringFromMap(Map<String, Object> paramMap, String paramString)
  {
    paramMap = paramMap.get(paramString);
    if ((paramMap instanceof String)) {
      return (String)paramMap;
    }
    Log.internal("[InMobi]-4.4.1", "Key " + paramString + " has illegal value");
    throw new IllegalArgumentException();
  }
  
  public static String getUserAgent(Context paramContext)
  {
    try
    {
      if (b == null) {
        if (Build.VERSION.SDK_INT < 17) {
          break label25;
        }
      }
      label25:
      for (b = InternalSDKUtil.b.a(paramContext);; b = new WebView(paramContext).getSettings().getUserAgentString()) {
        return b;
      }
      return b;
    }
    catch (Exception paramContext)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get user agent", paramContext);
    }
  }
  
  public static void initialize(Context paramContext)
  {
    if (getContext() == null)
    {
      if (paramContext != null) {
        break label24;
      }
      c.getApplicationContext();
    }
    while (InMobi.getAppId() == null)
    {
      return;
      label24:
      c = paramContext.getApplicationContext();
    }
    if (f)
    {
      f = false;
      a();
    }
    try
    {
      a(CacheController.getConfig("commons", paramContext, d, e).getData());
      return;
    }
    catch (CommonsException paramContext)
    {
      Log.internal("[InMobi]-4.4.1", "IMCommons config init: IMCommonsException caught. Reason: " + paramContext.toString());
      return;
    }
    catch (Exception paramContext)
    {
      Log.internal("[InMobi]-4.4.1", "Exception while getting commons config data.");
    }
  }
  
  public static boolean isDefOrientationLandscape(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 > paramInt3) && ((paramInt1 == 0) || (paramInt1 == 2))) {}
    while ((paramInt2 < paramInt3) && ((paramInt1 == 1) || (paramInt1 == 3))) {
      return true;
    }
    return false;
  }
  
  public static boolean isGooglePlayServicesJarIncluded()
  {
    try
    {
      int i1 = ((Integer)Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getDeclaredMethod("isGooglePlayServicesAvailable", new Class[] { Context.class }).invoke(null, new Object[] { getContext() })).intValue();
      return i1 == 0;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public static boolean isHexString(String paramString)
  {
    return paramString.matches("[0-9A-F]+");
  }
  
  public static boolean isInitializedSuccessfully()
  {
    return isInitializedSuccessfully(true);
  }
  
  public static boolean isInitializedSuccessfully(boolean paramBoolean)
  {
    if ((getContext() == null) || (InMobi.getAppId() == null))
    {
      if (paramBoolean) {
        Log.debug("[InMobi]-4.4.1", "InMobi not initialized. Call InMobi.initialize before using any InMobi API");
      }
      return false;
    }
    return true;
  }
  
  public static boolean isLimitAdTrackingEnabled()
  {
    AdvertisingId localAdvertisingId = UIDHelper.getAdvertisingId();
    if (localAdvertisingId != null) {
      return localAdvertisingId.isLimitAdTracking();
    }
    return false;
  }
  
  public static boolean isPlatformIdEnabled()
  {
    try
    {
      Class.forName("com.inmobi.commons.uid.PlatformId");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public static boolean isTablet(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getMetrics(localDisplayMetrics);
    double d1 = widthPixels / xdpi;
    double d2 = heightPixels / ydpi;
    return Math.sqrt(d2 * d2 + d1 * d1) > 7.0D;
  }
  
  public static byte[] keag()
  {
    return c();
  }
  
  public static void populate(Map<String, Object> paramMap1, Map<String, Object> paramMap2, boolean paramBoolean)
  {
    Iterator localIterator = paramMap1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramMap2.get(str) == null) {
        paramMap2.put(str, paramMap1.get(str));
      }
      Object localObject1 = paramMap1.get(str);
      Object localObject2 = paramMap2.get(str);
      if (((localObject1 instanceof Map)) && ((localObject2 instanceof Map)))
      {
        if (!paramBoolean) {
          paramMap2.put(str, localObject1);
        } else {
          populate((Map)localObject1, (Map)localObject2, true);
        }
      }
      else {
        paramMap2.put(str, localObject1);
      }
    }
  }
  
  public static void populate(JSONObject paramJSONObject1, JSONObject paramJSONObject2, boolean paramBoolean)
  {
    Iterator localIterator = paramJSONObject1.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject2;
      try
      {
        paramJSONObject2.get(str);
        try
        {
          Object localObject1 = paramJSONObject1.get(str);
          localObject2 = paramJSONObject2.get(str);
          if ((!(localObject1 instanceof JSONObject)) || (!(localObject2 instanceof JSONObject))) {
            break label130;
          }
          if (paramBoolean) {
            break label113;
          }
          paramJSONObject2.put(str, localObject1);
        }
        catch (JSONException localJSONException1)
        {
          Log.internal("[InMobi]-4.4.1", "Cannot populate to json exception", localJSONException1);
        }
      }
      catch (JSONException localJSONException2)
      {
        paramJSONObject2.put(localJSONException1, paramJSONObject1.get(localJSONException1));
      }
      continue;
      label113:
      populate((JSONObject)localJSONException2, (JSONObject)localObject2, true);
      continue;
      label130:
      paramJSONObject2.put(localJSONException1, localJSONException2);
    }
  }
  
  public static JSONObject populateToNewJSON(JSONObject paramJSONObject1, JSONObject paramJSONObject2, boolean paramBoolean)
  {
    JSONObject localJSONObject = new JSONObject();
    populate(paramJSONObject2, localJSONObject, false);
    populate(paramJSONObject1, localJSONObject, paramBoolean);
    return localJSONObject;
  }
  
  public static Map<String, Object> populateToNewMap(Map<String, Object> paramMap1, Map<String, Object> paramMap2, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    populate(paramMap2, localHashMap, false);
    populate(paramMap1, localHashMap, paramBoolean);
    return localHashMap;
  }
  
  public static void printPublisherTestId()
  {
    try
    {
      Object localObject;
      if (isGooglePlayServicesJarIncluded())
      {
        localObject = UIDHelper.getAdvertisingId();
        if (localObject != null)
        {
          localObject = ((AdvertisingId)localObject).getAdId();
          if (localObject != null) {
            Log.debug("[InMobi]-4.4.1", "Publisher device Id is " + (String)localObject);
          }
        }
      }
      else if (isPlatformIdEnabled())
      {
        localObject = UIDHelper.getPlatformId();
        Log.debug("[InMobi]-4.4.1", "Publisher device Id is " + UIDHelper.getODIN1((String)localObject));
        return;
      }
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get publisher device id", localException);
    }
  }
  
  public static void setContext(Context paramContext)
  {
    if (c == null)
    {
      c = paramContext.getApplicationContext();
      if (InMobi.getAppId() != null) {}
    }
    else
    {
      return;
    }
    a();
    try
    {
      CacheController.getConfig("commons", paramContext, d, e);
      return;
    }
    catch (CommonsException paramContext)
    {
      Log.internal("commons", "Unable retrive config for commons product");
    }
  }
  
  public static boolean validateAppId(String paramString)
  {
    if (paramString == null)
    {
      Log.debug("[InMobi]-4.4.1", "appId is null");
      return false;
    }
    if (paramString.matches("(x)+"))
    {
      Log.debug("[InMobi]-4.4.1", "appId is all xxxxxxx");
      return false;
    }
    if ("".equals(paramString.trim()))
    {
      Log.debug("[InMobi]-4.4.1", "appId is all blank");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.InternalSDKUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */