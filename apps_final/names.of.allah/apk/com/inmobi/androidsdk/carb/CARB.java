package com.inmobi.androidsdk.carb;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.telephony.TelephonyManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

public class CARB
{
  public static final String LOGGING_TAG = "[InMobi]-[CARB]-4.4.1";
  private static CARB g = new CARB();
  private static SharedPreferences j;
  private static AtomicBoolean k = new AtomicBoolean(false);
  private static Thread l;
  private static AtomicBoolean m = new AtomicBoolean(false);
  private static Thread n;
  private static String o = "";
  private static String p = "";
  private static String q = "";
  byte[] a;
  byte[] b;
  String c = "";
  String d = "";
  String e = "";
  CARB.CarbCallback f = null;
  private String h = "carb_last_req_time";
  private String i = "carbpreference";
  private final int r = 8;
  private final int s = 16;
  private byte[] t;
  private byte[] u;
  private byte[] v;
  private byte[] w;
  private ArrayList<CarbInfo> x = new ArrayList();
  
  private CARB()
  {
    CarbInitializer.initialize();
    j = InternalSDKUtil.getContext().getSharedPreferences(i, 0);
  }
  
  private String a(String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, String paramString2, String paramString3)
  {
    paramString1 = InternalSDKUtil.SeMeGe(paramString1, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3, paramString2, paramString3);
    paramArrayOfByte1 = new StringBuilder();
    paramArrayOfByte1.append("sm=");
    paramArrayOfByte1.append(paramString1);
    paramArrayOfByte1.append("&sn=");
    paramArrayOfByte1.append(e);
    paramString1 = paramArrayOfByte1.toString();
    Log.internal("[InMobi]-[CARB]-4.4.1", paramString1);
    return paramString1;
  }
  
  private void a(ArrayList<CarbInfo> paramArrayList, String paramString, int paramInt)
  {
    try
    {
      if (m.compareAndSet(false, true))
      {
        m.set(true);
        paramArrayList = new Thread(new CARB.a(this, paramArrayList, paramString, paramInt));
        n = paramArrayList;
        paramArrayList.start();
      }
      return;
    }
    finally
    {
      paramArrayList = finally;
      throw paramArrayList;
    }
  }
  
  private boolean a(String paramString)
  {
    PackageManager localPackageManager = InternalSDKUtil.getContext().getPackageManager();
    try
    {
      localPackageManager.getPackageInfo(paramString, 1);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return false;
  }
  
  private void b()
  {
    try
    {
      x.clear();
      if (k.compareAndSet(false, true))
      {
        Thread localThread = new Thread(new CARB.b(this));
        l = localThread;
        localThread.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void c()
  {
    try
    {
      a = new byte[8];
      SecureRandom localSecureRandom = new SecureRandom();
      localSecureRandom.nextBytes(a);
      u = new byte[16];
      localSecureRandom.nextBytes(u);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void d()
  {
    try
    {
      b = new byte[8];
      SecureRandom localSecureRandom = new SecureRandom();
      localSecureRandom.nextBytes(b);
      w = new byte[16];
      localSecureRandom.nextBytes(w);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void e()
  {
    if (k != null) {
      k.set(false);
    }
  }
  
  private void f()
  {
    if (m != null) {
      m.set(false);
    }
  }
  
  public static void fillCarbInfo()
  {
    try
    {
      Object localObject1 = InternalSDKUtil.getContext();
      Object localObject2 = ((Context)localObject1).getPackageManager();
      Object localObject3 = ((PackageManager)localObject2).getApplicationInfo(((Context)localObject1).getPackageName(), 128);
      if (localObject3 != null)
      {
        o = packageName;
        q = ((ApplicationInfo)localObject3).loadLabel((PackageManager)localObject2).toString();
      }
      localObject3 = ((PackageManager)localObject2).getPackageInfo(((Context)localObject1).getPackageName(), 128);
      localObject1 = null;
      if (localObject3 != null)
      {
        localObject2 = versionName;
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          if (!((String)localObject2).equals("")) {}
        }
        else
        {
          localObject1 = versionCode;
        }
      }
      if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
        setAppVer((String)localObject1);
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Failed to fill CarbInfo", localException);
    }
  }
  
  public static String getAppBid()
  {
    return o;
  }
  
  public static String getAppDisplayName()
  {
    return q;
  }
  
  public static String getAppVer()
  {
    return p;
  }
  
  public static Object getCountryISO(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager.getNetworkCountryIso().equals("")) {
      return getResourcesgetConfigurationlocale.getISO3Country();
    }
    return localTelephonyManager.getNetworkCountryIso();
  }
  
  public static CARB getInstance()
  {
    return g;
  }
  
  public static String getURLDecoded(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = URLDecoder.decode(paramString1, paramString2);
      return paramString1;
    }
    catch (Exception paramString1) {}
    return "";
  }
  
  public static String getURLEncoded(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (Exception paramString) {}
    return "";
  }
  
  public static void setAppBId(String paramString)
  {
    o = paramString;
  }
  
  public static void setAppDisplayName(String paramString)
  {
    q = paramString;
  }
  
  public static void setAppVer(String paramString)
  {
    p = paramString;
  }
  
  public void setCallBack(CARB.CarbCallback paramCarbCallback)
  {
    f = paramCarbCallback;
  }
  
  public void startCarb()
  {
    for (;;)
    {
      try
      {
        if (!CarbInitializer.getConfigParams().isCarbEnabled())
        {
          Log.internal("[InMobi]-[CARB]-4.4.1", "CARB feature disabled.");
          return;
        }
        if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
          continue;
        }
        long l1 = j.getLong(h, 0L);
        if (0L == l1)
        {
          Log.internal("[InMobi]-[CARB]-4.4.1", "Requesting CARB first time");
          b();
          continue;
        }
        if (l1 + CarbInitializer.getConfigParams().getRetreiveFrequncy() - System.currentTimeMillis() > 0L) {
          break label103;
        }
      }
      finally {}
      Log.internal("[InMobi]-[CARB]-4.4.1", "CARB request interval reached. Requesting again");
      b();
      continue;
      label103:
      Log.internal("[InMobi]-[CARB]-4.4.1", "CARB request interval not reached. NO request");
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.carb.CARB
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */