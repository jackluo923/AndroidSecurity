package com.inmobi.androidsdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import com.inmobi.androidsdk.AdRequest;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDHelper;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.UUID;

public final class UserInfo
{
  private Random A;
  private String B;
  private int C;
  private long D;
  private Activity E;
  boolean a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private LocationManager m;
  private double n;
  private double o;
  private double p;
  private boolean q;
  private Context r;
  private String s;
  private String t = null;
  private String u = null;
  private String v = null;
  private String w = null;
  private String x = null;
  private String y = null;
  private AdRequest z;
  
  public UserInfo(Activity paramActivity)
  {
    E = paramActivity;
    r = paramActivity.getApplicationContext();
    A = new Random();
  }
  
  private String a()
  {
    return k;
  }
  
  private void a(double paramDouble)
  {
    n = paramDouble;
  }
  
  private void a(int paramInt)
  {
    g = Integer.toString(paramInt);
  }
  
  private void a(long paramLong)
  {
    D = paramLong;
  }
  
  private void a(Context paramContext)
  {
    try
    {
      if (B == null) {
        B = paramContext.getSharedPreferences("inmobisdkaid", 0).getString("A_ID", null);
      }
      if (B == null)
      {
        B = UUID.randomUUID().toString();
        paramContext = paramContext.getSharedPreferences("inmobisdkaid", 0).edit();
        paramContext.putString("A_ID", B);
        paramContext.commit();
      }
      return;
    }
    catch (Exception paramContext) {}
  }
  
  private void a(Location paramLocation)
  {
    if (paramLocation != null)
    {
      q = true;
      n = paramLocation.getLatitude();
      o = paramLocation.getLongitude();
      p = paramLocation.getAccuracy();
      D = paramLocation.getTime();
    }
  }
  
  private void a(LocationManager paramLocationManager)
  {
    try
    {
      m = paramLocationManager;
      return;
    }
    finally
    {
      paramLocationManager = finally;
      throw paramLocationManager;
    }
  }
  
  private void a(AdRequest paramAdRequest)
  {
    z = paramAdRequest;
  }
  
  private void a(String paramString)
  {
    b = paramString;
  }
  
  private void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private LocationManager b()
  {
    try
    {
      LocationManager localLocationManager = m;
      return localLocationManager;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void b(double paramDouble)
  {
    o = paramDouble;
  }
  
  private void b(int paramInt)
  {
    C = paramInt;
  }
  
  private void b(String paramString)
  {
    c = paramString;
  }
  
  private void b(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  private void c(double paramDouble)
  {
    p = paramDouble;
  }
  
  private void c(String paramString)
  {
    d = paramString;
  }
  
  private boolean c()
  {
    if (z != null) {
      return z.isLocationInquiryAllowed();
    }
    return true;
  }
  
  private void d(String paramString)
  {
    e = paramString;
  }
  
  private boolean d()
  {
    return a;
  }
  
  private void e()
  {
    try
    {
      if (b() == null) {
        a((LocationManager)getApplicationContext().getSystemService("location"));
      }
      if (b() != null)
      {
        Object localObject1 = b();
        Object localObject2 = new Criteria();
        if (getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
          ((Criteria)localObject2).setAccuracy(1);
        }
        for (;;)
        {
          ((Criteria)localObject2).setCostAllowed(false);
          localObject2 = ((LocationManager)localObject1).getBestProvider((Criteria)localObject2, true);
          if ((isValidGeoInfo()) || (localObject2 == null)) {
            break;
          }
          localObject2 = ((LocationManager)localObject1).getLastKnownLocation((String)localObject2);
          Log.debug("[InMobi]-[Network]-4.4.1", "lastBestKnownLocation: " + localObject2);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject1 = f();
            Log.debug("[InMobi]-[Network]-4.4.1", "lastKnownLocation: " + localObject1);
          }
          a((Location)localObject1);
          return;
          if (getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
            ((Criteria)localObject2).setAccuracy(2);
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Error getting the Location Info ", localException);
    }
  }
  
  private void e(String paramString)
  {
    i = paramString;
  }
  
  private Location f()
  {
    if (b() == null) {
      a((LocationManager)getApplicationContext().getSystemService("location"));
    }
    if (b() != null)
    {
      LocationManager localLocationManager = b();
      List localList = localLocationManager.getProviders(true);
      int i1 = localList.size() - 1;
      while (i1 >= 0)
      {
        Object localObject = (String)localList.get(i1);
        if (localLocationManager.isProviderEnabled((String)localObject))
        {
          localObject = localLocationManager.getLastKnownLocation((String)localObject);
          if (localObject != null) {
            return (Location)localObject;
          }
        }
        i1 -= 1;
      }
    }
    return null;
  }
  
  private void f(String paramString)
  {
    j = paramString;
  }
  
  private void g()
  {
    int i1 = getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION");
    int i2 = getApplicationContext().checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
    if ((i1 != 0) && (i2 != 0))
    {
      a = true;
      return;
    }
    a = false;
  }
  
  private void g(String paramString)
  {
    k = paramString;
  }
  
  private void h()
  {
    Object localObject1;
    Object localObject4;
    Object localObject5;
    if (a() == null)
    {
      k = Build.BRAND;
      localObject1 = Locale.getDefault();
      localObject4 = ((Locale)localObject1).getLanguage();
      if (localObject4 == null) {
        break label342;
      }
      localObject4 = ((String)localObject4).toLowerCase(Locale.ENGLISH);
      localObject5 = ((Locale)localObject1).getCountry();
      localObject1 = localObject4;
      if (localObject5 != null) {
        localObject1 = (String)localObject4 + "_" + ((String)localObject5).toLowerCase(Locale.ENGLISH);
      }
    }
    for (;;)
    {
      f((String)localObject1);
      try
      {
        localObject1 = getApplicationContext();
        localObject4 = ((Context)localObject1).getPackageManager();
        localObject5 = ((PackageManager)localObject4).getApplicationInfo(((Context)localObject1).getPackageName(), 128);
        if (localObject5 != null)
        {
          a(packageName);
          b(((ApplicationInfo)localObject5).loadLabel((PackageManager)localObject4).toString());
        }
        localObject5 = ((PackageManager)localObject4).getPackageInfo(((Context)localObject1).getPackageName(), 128);
        if (localObject5 == null) {
          break label473;
        }
        localObject4 = versionName;
        if (localObject4 != null)
        {
          localObject1 = localObject4;
          if (!((String)localObject4).equals("")) {}
        }
        else
        {
          localObject1 = versionCode;
        }
      }
      catch (Exception localException3)
      {
        for (;;)
        {
          int i1;
          continue;
          Object localObject3 = null;
        }
      }
      if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
        c((String)localObject1);
      }
      a(A.nextInt());
      i1 = 0;
      if (z != null) {
        i1 = com.inmobi.commons.data.UserInfo.getInstance().getDeviceIDMask();
      }
      localObject4 = new HashMap();
      try
      {
        localObject1 = AnalyticsInitializer.getConfigParams().getLTVId();
        if (localObject1 != null) {
          ((Map)localObject4).put("LTVID", localObject1);
        }
        e(Initializer.getConfigParams().getUID().getUidMapWitoutXOR(i1, getRandomKey(), (Map)localObject4));
        if (r != null) {
          a(r);
        }
        d(InternalSDKUtil.getConnectivityType(getApplicationContext()));
      }
      catch (Exception localException1)
      {
        try
        {
          for (;;)
          {
            i1 = WrapperFunctions.getCurrentOrientationInFixedValues(i());
            if (i1 != 9) {
              break label428;
            }
            b(2);
            return;
            label342:
            localObject1 = (String)System.getProperties().get("user.language");
            localObject5 = (String)System.getProperties().get("user.region");
            if ((localObject1 == null) || (localObject5 == null)) {
              break label478;
            }
            localObject4 = (String)localObject1 + "_" + (String)localObject5;
            localObject1 = localObject4;
            if (localObject4 != null) {
              break;
            }
            localObject1 = "en";
            break;
            localException1 = localException1;
            Log.internal("[InMobi]-[Network]-4.4.1", "LTVID not available yet in configs");
            Object localObject2 = null;
          }
          label428:
          if (i1 == 8)
          {
            b(4);
            return;
          }
        }
        catch (Exception localException2)
        {
          Log.debug("[InMobi]-[Network]-4.4.1", "Error getting the orientation info ", localException2);
          return;
        }
        if (i1 == 0)
        {
          b(3);
          return;
        }
        b(1);
        return;
      }
    }
  }
  
  private void h(String paramString)
  {
    l = paramString;
  }
  
  private Activity i()
  {
    return E;
  }
  
  public final String getAdUnitSlot()
  {
    return v;
  }
  
  public final int getAge()
  {
    if (z != null) {
      return z.getAge();
    }
    return 0;
  }
  
  public final String getAid()
  {
    return B;
  }
  
  public final String getAppBId()
  {
    return b;
  }
  
  public final String getAppDisplayName()
  {
    return c;
  }
  
  public final String getAppVer()
  {
    return d;
  }
  
  public final Context getApplicationContext()
  {
    return r;
  }
  
  public final String getAreaCode()
  {
    if (z != null) {
      return z.getAreaCode();
    }
    return null;
  }
  
  public final String getDateOfBirth()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (z != null)
    {
      localObject1 = localObject2;
      if (z.getDateOfBirth() != null)
      {
        localObject1 = z.getDateOfBirth();
        localObject1 = ((Calendar)localObject1).get(1) + "-" + (((Calendar)localObject1).get(2) + 1) + "-" + ((Calendar)localObject1).get(5);
      }
    }
    return (String)localObject1;
  }
  
  public final EducationType getEducation()
  {
    if (z != null) {
      return z.getEducation();
    }
    return null;
  }
  
  public final EthnicityType getEthnicity()
  {
    if (z != null) {
      return z.getEthnicity();
    }
    return null;
  }
  
  public final GenderType getGender()
  {
    if (z != null) {
      return z.getGender();
    }
    return null;
  }
  
  public final long getGeoTS()
  {
    return D;
  }
  
  public final HasChildren getHasChildren()
  {
    if (z != null) {
      return z.getHasChildren();
    }
    return null;
  }
  
  public final int getIncome()
  {
    if (z != null) {
      return z.getIncome();
    }
    return 0;
  }
  
  public final String getInterests()
  {
    if (z != null) {
      return z.getInterests();
    }
    return null;
  }
  
  public final String getKeywords()
  {
    if (z != null) {
      return z.getKeywords();
    }
    return null;
  }
  
  public final String getLanguage()
  {
    if (z != null) {
      return z.getLanguage();
    }
    return null;
  }
  
  public final double getLat()
  {
    return n;
  }
  
  public final double getLocAccuracy()
  {
    return p;
  }
  
  public final String getLocalization()
  {
    return j;
  }
  
  public final String getLocationWithCityStateCountry()
  {
    if (z != null) {
      return z.getLocationWithCityStateCountry();
    }
    return null;
  }
  
  public final double getLon()
  {
    return o;
  }
  
  public final MaritalStatus getMaritalStatus()
  {
    if (z != null) {
      return z.getMaritalStatus();
    }
    return null;
  }
  
  public final String getNetworkType()
  {
    return e;
  }
  
  public final String getODINId()
  {
    return f;
  }
  
  public final int getOrientation()
  {
    return C;
  }
  
  public final String getPhoneDefaultUserAgent()
  {
    if (s == null) {
      return "";
    }
    return s;
  }
  
  public final String getPlainUidMap()
  {
    return i;
  }
  
  public final String getPostalCode()
  {
    if (z != null) {
      return z.getPostalCode();
    }
    return null;
  }
  
  public final String getRandomKey()
  {
    return g;
  }
  
  public final String getRefTagKey()
  {
    return t;
  }
  
  public final String getRefTagValue()
  {
    return u;
  }
  
  public final Map<String, String> getRequestParams()
  {
    if (z != null) {
      return z.getRequestParams();
    }
    return null;
  }
  
  public final String getRsakeyVersion()
  {
    return UIDHelper.getRSAKeyVersion();
  }
  
  public final String getScreenDensity()
  {
    return y;
  }
  
  public final String getScreenSize()
  {
    return x;
  }
  
  public final String getSearchString()
  {
    if (z != null) {
      return z.getSearchString();
    }
    return null;
  }
  
  public final SexualOrientation getSexualOrientation()
  {
    if (z != null) {
      return z.getSexualOrientation();
    }
    return null;
  }
  
  public final String getSiteId()
  {
    return l;
  }
  
  public final String getSlotId()
  {
    return w;
  }
  
  public final String getUIDMapEncrypted()
  {
    return h;
  }
  
  public final boolean isValidGeoInfo()
  {
    return q;
  }
  
  public final void setAdUnitSlot(String paramString)
  {
    v = paramString;
  }
  
  public final void setPhoneDefaultUserAgent(String paramString)
  {
    s = paramString;
  }
  
  public final void setRefTagKey(String paramString)
  {
    t = paramString;
  }
  
  public final void setRefTagValue(String paramString)
  {
    u = paramString;
  }
  
  public final void setScreenDensity(String paramString)
  {
    y = paramString;
  }
  
  public final void setScreenSize(String paramString)
  {
    x = paramString;
  }
  
  public final void setSlotId(String paramString)
  {
    w = paramString;
  }
  
  public final void updateInfo(String paramString, AdRequest paramAdRequest)
  {
    label78:
    for (;;)
    {
      try
      {
        z = paramAdRequest;
        h();
        l = paramString;
        if (paramAdRequest != null)
        {
          q = false;
          if (!c()) {
            break label78;
          }
          if (paramAdRequest.getCurrentLocation() != null)
          {
            a(paramAdRequest.getCurrentLocation());
            q = true;
          }
        }
        else
        {
          return;
        }
        g();
        if (!d())
        {
          e();
          continue;
          a = true;
        }
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.UserInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */