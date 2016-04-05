package com.admob.android.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Looper;
import android.provider.Settings.System;
import android.util.Log;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.GregorianCalendar;
import java.util.Locale;

public class AdManager
{
  private static final long LOCATION_UPDATE_INTERVAL = 900000L;
  static final String LOG = "AdMob SDK";
  static final String SDK_SITE_ID = "a1496ced2842262";
  public static final String SDK_VERSION = "20091123-ANDROID-3312276cc1406347";
  private static final String SDK_VERSION_CHECKSUM = "3312276cc1406347";
  static final String SDK_VERSION_DATE = "20091123";
  private static GregorianCalendar birthday;
  private static Location coordinates;
  private static long coordinatesTimestamp = 0L;
  private static AdManager.Gender gender;
  private static String publisherId;
  private static boolean testMode = false;
  private static String userAgent;
  private static String userId;
  
  static
  {
    String str1 = "AdMob SDK";
    String str2 = "AdMob SDK version is 20091123-ANDROID-3312276cc1406347";
    Log.i(str1, str2);
  }
  
  protected static void clientError(String paramString)
  {
    Object localObject = "AdMob SDK";
    Log.e((String)localObject, paramString);
    localObject = new java/lang/IllegalArgumentException;
    ((IllegalArgumentException)localObject).<init>(paramString);
    throw ((Throwable)localObject);
  }
  
  public static GregorianCalendar getBirthday()
  {
    GregorianCalendar localGregorianCalendar = birthday;
    return localGregorianCalendar;
  }
  
  static String getBirthdayAsString()
  {
    int i1 = 2;
    int n = 1;
    String str1 = null;
    GregorianCalendar localGregorianCalendar = getBirthday();
    if (localGregorianCalendar != null)
    {
      String str2 = "%04d%02d%02d";
      int i = 3;
      Object[] arrayOfObject = new Object[i];
      int j = 0;
      int m = localGregorianCalendar.get(n);
      Integer localInteger3 = Integer.valueOf(m);
      arrayOfObject[j] = localInteger3;
      j = localGregorianCalendar.get(i1);
      j += 1;
      Integer localInteger1 = Integer.valueOf(j);
      arrayOfObject[n] = localInteger1;
      int k = 5;
      k = localGregorianCalendar.get(k);
      Integer localInteger2 = Integer.valueOf(k);
      arrayOfObject[i1] = localInteger2;
      str1 = String.format(str2, arrayOfObject);
    }
    return str1;
  }
  
  public static Location getCoordinates(Context paramContext)
  {
    long l6 = 900000L;
    long l5;
    if (paramContext != null)
    {
      Location localLocation1 = coordinates;
      if (localLocation1 != null)
      {
        long l1 = System.currentTimeMillis();
        l5 = coordinatesTimestamp;
        l5 += l6;
        boolean bool1 = l1 < l5;
        if (!bool1) {
          break label338;
        }
      }
    }
    for (;;)
    {
      Object localObject1;
      String str1;
      try
      {
        Location localLocation2 = coordinates;
        if (localLocation2 != null)
        {
          long l2 = System.currentTimeMillis();
          l5 = coordinatesTimestamp;
          l5 += l6;
          boolean bool2 = l2 < l5;
          if (!bool2) {}
        }
        else
        {
          long l3 = System.currentTimeMillis();
          coordinatesTimestamp = l3;
          int i4 = 0;
          localObject1 = null;
          str1 = null;
          String str2 = "android.permission.ACCESS_COARSE_LOCATION";
          int i = paramContext.checkCallingOrSelfPermission(str2);
          Criteria localCriteria;
          if (i == 0)
          {
            String str3 = "AdMob SDK";
            int n = 3;
            boolean bool3 = Log.isLoggable(str3, n);
            if (bool3)
            {
              str4 = "AdMob SDK";
              String str11 = "Trying to get locations from the network.";
              Log.d(str4, str11);
            }
            i4 = 1;
            String str4 = "location";
            localObject1 = paramContext.getSystemService(str4);
            localObject1 = (LocationManager)localObject1;
            if (localObject1 != null)
            {
              localCriteria = new android/location/Criteria;
              localCriteria.<init>();
              int j = 2;
              localCriteria.setAccuracy(j);
              j = 0;
              localCriteria.setCostAllowed(j);
              boolean bool4 = true;
              str1 = ((LocationManager)localObject1).getBestProvider(localCriteria, bool4);
            }
          }
          if (str1 == null)
          {
            String str5 = "android.permission.ACCESS_FINE_LOCATION";
            int k = paramContext.checkCallingOrSelfPermission(str5);
            if (k == 0)
            {
              String str6 = "AdMob SDK";
              int i1 = 3;
              boolean bool5 = Log.isLoggable(str6, i1);
              if (bool5)
              {
                str7 = "AdMob SDK";
                String str12 = "Trying to get locations from GPS.";
                Log.d(str7, str12);
              }
              i4 = 1;
              String str7 = "location";
              localObject1 = paramContext.getSystemService(str7);
              localObject1 = (LocationManager)localObject1;
              if (localObject1 != null)
              {
                localCriteria = new android/location/Criteria;
                localCriteria.<init>();
                int m = 1;
                localCriteria.setAccuracy(m);
                m = 0;
                localCriteria.setCostAllowed(m);
                boolean bool6 = true;
                str1 = ((LocationManager)localObject1).getBestProvider(localCriteria, bool6);
              }
            }
          }
          if (i4 != 0) {
            continue;
          }
          String str8 = "AdMob SDK";
          int i2 = 3;
          boolean bool7 = Log.isLoggable(str8, i2);
          if (bool7)
          {
            localObject2 = "AdMob SDK";
            String str13 = "Cannot access user's location.  Permissions are not set.";
            Log.d((String)localObject2, str13);
          }
        }
        label338:
        Object localObject2 = coordinates;
        return (Location)localObject2;
        if (str1 == null)
        {
          localObject2 = "AdMob SDK";
          int i3 = 3;
          boolean bool8 = Log.isLoggable((String)localObject2, i3);
          if (!bool8) {
            continue;
          }
          String str9 = "AdMob SDK";
          str14 = "No location providers are available.  Ads will not be geotargeted.";
          Log.d(str9, str14);
          continue;
        }
        str10 = "AdMob SDK";
      }
      finally {}
      String str10;
      String str14 = "Location provider setup successfully.";
      Log.i(str10, str14);
      Object localObject4 = localObject1;
      long l4 = 0L;
      float f = 0.0F;
      AdManager.1 local1 = new com/admob/android/ads/AdManager$1;
      local1.<init>((LocationManager)localObject4);
      Looper localLooper = paramContext.getMainLooper();
      ((LocationManager)localObject1).requestLocationUpdates(str1, l4, f, local1, localLooper);
    }
  }
  
  static String getCoordinatesAsString(Context paramContext)
  {
    String str1 = null;
    Location localLocation = getCoordinates(paramContext);
    if (localLocation != null)
    {
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      double d1 = localLocation.getLatitude();
      localObject1 = ((StringBuilder)localObject1).append(d1);
      String str3 = ",";
      localObject1 = ((StringBuilder)localObject1).append(str3);
      double d2 = localLocation.getLongitude();
      localObject1 = ((StringBuilder)localObject1).append(d2);
      str1 = ((StringBuilder)localObject1).toString();
    }
    Object localObject1 = "AdMob SDK";
    int i = 3;
    boolean bool = Log.isLoggable((String)localObject1, i);
    if (bool)
    {
      String str2 = "AdMob SDK";
      Object localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str4 = "User coordinates are ";
      localObject2 = ((StringBuilder)localObject2).append(str4);
      localObject2 = ((StringBuilder)localObject2).append(str1);
      localObject2 = ((StringBuilder)localObject2).toString();
      Log.d(str2, (String)localObject2);
    }
    return str1;
  }
  
  public static AdManager.Gender getGender()
  {
    AdManager.Gender localGender = gender;
    return localGender;
  }
  
  static String getGenderAsString()
  {
    Object localObject = gender;
    AdManager.Gender localGender = AdManager.Gender.MALE;
    if (localObject == localGender) {
      localObject = "m";
    }
    for (;;)
    {
      return (String)localObject;
      localObject = gender;
      localGender = AdManager.Gender.FEMALE;
      if (localObject == localGender) {
        localObject = "f";
      } else {
        localObject = null;
      }
    }
  }
  
  public static String getPublisherId(Context paramContext)
  {
    Object localObject1 = publisherId;
    if (localObject1 == null) {}
    for (;;)
    {
      try
      {
        PackageManager localPackageManager = paramContext.getPackageManager();
        localObject1 = paramContext.getPackageName();
        int i = 128;
        ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo((String)localObject1, i);
        if (localApplicationInfo != null)
        {
          localObject1 = metaData;
          localObject2 = "ADMOB_PUBLISHER_ID";
          str1 = ((Bundle)localObject1).getString((String)localObject2);
          localObject1 = "AdMob SDK";
          localObject2 = new java/lang/StringBuilder;
          ((StringBuilder)localObject2).<init>();
          String str6 = "Publisher ID read from AndroidManifest.xml is ";
          localObject2 = ((StringBuilder)localObject2).append(str6);
          localObject2 = ((StringBuilder)localObject2).append(str1);
          localObject2 = ((StringBuilder)localObject2).toString();
          Log.d((String)localObject1, (String)localObject2);
          localObject1 = "a1496ced2842262";
          boolean bool1 = str1.equals(localObject1);
          if (!bool1) {
            continue;
          }
          String str2 = paramContext.getPackageName();
          localObject2 = "com.admob.android.test";
          boolean bool2 = str2.equals(localObject2);
          if (!bool2)
          {
            String str3 = paramContext.getPackageName();
            localObject2 = "com.example.admob.lunarlander";
            boolean bool3 = str3.equals(localObject2);
            if (!bool3) {
              continue;
            }
          }
          str4 = "AdMob SDK";
          localObject2 = "This is a sample application so allowing sample publisher ID.";
          Log.i(str4, (String)localObject2);
          publisherId = str1;
        }
      }
      catch (Exception localException2)
      {
        String str1;
        String str4;
        Exception localException1 = localException2;
        String str5 = "AdMob SDK";
        Object localObject2 = "Could not read ADMOB_PUBLISHER_ID meta-data from AndroidManifest.xml.";
        Log.e(str5, (String)localObject2, localException1);
        continue;
      }
      str4 = publisherId;
      return str4;
      setPublisherId(str1);
    }
  }
  
  static String getUserAgent()
  {
    String str7 = userAgent;
    StringBuffer localStringBuffer;
    if (str7 == null)
    {
      localStringBuffer = new java/lang/StringBuffer;
      localStringBuffer.<init>();
      String str6 = Build.VERSION.RELEASE;
      int i = str6.length();
      if (i <= 0) {
        break label327;
      }
      localStringBuffer.append(str6);
      String str8 = "; ";
      localStringBuffer.append(str8);
      Locale localLocale = Locale.getDefault();
      String str4 = localLocale.getLanguage();
      if (str4 == null) {
        break label341;
      }
      str8 = str4.toLowerCase();
      localStringBuffer.append(str8);
      String str2 = localLocale.getCountry();
      if (str2 != null)
      {
        str8 = "-";
        localStringBuffer.append(str8);
        str8 = str2.toLowerCase();
        localStringBuffer.append(str8);
      }
    }
    for (;;)
    {
      String str5 = Build.MODEL;
      int j = str5.length();
      if (j > 0)
      {
        String str9 = "; ";
        localStringBuffer.append(str9);
        localStringBuffer.append(str5);
      }
      String str3 = Build.ID;
      int k = str3.length();
      if (k > 0)
      {
        str10 = " Build/";
        localStringBuffer.append(str10);
        localStringBuffer.append(str3);
      }
      String str1 = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (AdMob-ANDROID-%s)";
      String str10 = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (AdMob-ANDROID-%s)";
      int m = 2;
      Object[] arrayOfObject = new Object[m];
      int i1 = 0;
      arrayOfObject[i1] = localStringBuffer;
      i1 = 1;
      String str13 = "20091123";
      arrayOfObject[i1] = str13;
      str10 = String.format(str10, arrayOfObject);
      userAgent = str10;
      str10 = "AdMob SDK";
      int n = 3;
      boolean bool = Log.isLoggable(str10, n);
      if (bool)
      {
        str11 = "AdMob SDK";
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str12 = "Phone's user-agent is:  ";
        localObject = ((StringBuilder)localObject).append(str12);
        str12 = userAgent;
        localObject = ((StringBuilder)localObject).append(str12);
        localObject = ((StringBuilder)localObject).toString();
        Log.d(str11, (String)localObject);
      }
      String str11 = userAgent;
      return str11;
      label327:
      str11 = "1.0";
      localStringBuffer.append(str11);
      break;
      label341:
      str11 = "en";
      localStringBuffer.append(str11);
    }
  }
  
  public static String getUserId(Context paramContext)
  {
    Object localObject1 = userId;
    if (localObject1 == null)
    {
      localObject1 = paramContext.getContentResolver();
      Object localObject2 = "android_id";
      localObject1 = Settings.System.getString((ContentResolver)localObject1, (String)localObject2);
      userId = (String)localObject1;
      localObject1 = userId;
      localObject1 = md5((String)localObject1);
      userId = (String)localObject1;
      localObject1 = "AdMob SDK";
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str = "The user ID is ";
      localObject2 = ((StringBuilder)localObject2).append(str);
      str = userId;
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject2 = ((StringBuilder)localObject2).toString();
      Log.i((String)localObject1, (String)localObject2);
    }
    localObject1 = userId;
    return (String)localObject1;
  }
  
  public static boolean isInTestMode()
  {
    boolean bool = testMode;
    return bool;
  }
  
  private static String md5(String paramString)
  {
    i1 = 0;
    String str1 = null;
    if (paramString != null)
    {
      int i = paramString.length();
      if (i <= 0) {}
    }
    try
    {
      Object localObject1 = "MD5";
      MessageDigest localMessageDigest = MessageDigest.getInstance((String)localObject1);
      localObject1 = paramString.getBytes();
      int j = 0;
      int m = paramString.length();
      localMessageDigest.update((byte[])localObject1, j, m);
      localObject1 = "%032X";
      j = 1;
      localObject2 = new Object[j];
      m = 0;
      BigInteger localBigInteger = new java/math/BigInteger;
      int n = 1;
      byte[] arrayOfByte = localMessageDigest.digest();
      localBigInteger.<init>(n, arrayOfByte);
      localObject2[m] = localBigInteger;
      str1 = String.format((String)localObject1, (Object[])localObject2);
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        Exception localException1 = localException2;
        String str2 = "AdMob SDK";
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str3 = "Could not generate hash of ";
        localObject2 = ((StringBuilder)localObject2).append(str3);
        localObject2 = ((StringBuilder)localObject2).append(paramString);
        localObject2 = ((StringBuilder)localObject2).toString();
        Log.d(str2, (String)localObject2, localException1);
        str2 = userId;
        int k = 32;
        str2 = str2.substring(i1, k);
        userId = str2;
      }
    }
    return str1;
  }
  
  public static void setBirthday(int paramInt1, int paramInt2, int paramInt3)
  {
    GregorianCalendar localGregorianCalendar = new java/util/GregorianCalendar;
    localGregorianCalendar.<init>();
    int i = 1;
    i = paramInt2 - i;
    localGregorianCalendar.set(paramInt1, i, paramInt3);
    setBirthday(localGregorianCalendar);
  }
  
  public static void setBirthday(GregorianCalendar paramGregorianCalendar)
  {
    birthday = paramGregorianCalendar;
  }
  
  public static void setGender(AdManager.Gender paramGender)
  {
    gender = paramGender;
  }
  
  public static void setInTestMode(boolean paramBoolean)
  {
    testMode = paramBoolean;
  }
  
  public static void setPublisherId(String paramString)
  {
    if (paramString != null)
    {
      int i = paramString.length();
      int j = 15;
      if (i == j) {}
    }
    else
    {
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      localObject2 = "SETUP ERROR:  Incorrect AdMob publisher ID.  Should 15 [a-f,0-9] characters:  ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = publisherId;
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).toString();
      clientError((String)localObject1);
    }
    Object localObject1 = "a1496ced2842262";
    boolean bool = paramString.equalsIgnoreCase((String)localObject1);
    if (bool)
    {
      str1 = "SETUP ERROR:  Cannot use the sample publisher ID (a1496ced2842262).  Yours is available on www.admob.com.";
      clientError(str1);
    }
    String str1 = "AdMob SDK";
    Object localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    String str2 = "Publisher ID set to ";
    localObject2 = ((StringBuilder)localObject2).append(str2);
    localObject2 = ((StringBuilder)localObject2).append(paramString);
    localObject2 = ((StringBuilder)localObject2).toString();
    Log.i(str1, (String)localObject2);
    publisherId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdManager
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */