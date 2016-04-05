package com.inmobi.commons.network;

import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.data.AppInfo;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.data.LocationInfo;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDHelper;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class RequestBuilder
{
  private String a(Calendar paramCalendar)
  {
    String str = null;
    if (paramCalendar != null) {
      str = paramCalendar.get(1) + "-" + (paramCalendar.get(2) + 1) + "-" + paramCalendar.get(5);
    }
    return str;
  }
  
  public static String currentLocationStr()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (LocationInfo.isValidGeoInfo())
    {
      localStringBuilder.append(LocationInfo.getLat());
      localStringBuilder.append(",");
      localStringBuilder.append(LocationInfo.getLon());
      localStringBuilder.append(",");
      localStringBuilder.append((int)LocationInfo.getLocAccuracy());
      return localStringBuilder.toString();
    }
    return "";
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
  
  public String buildPostBody()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      try
      {
        String str1 = getSDKDelegatePostBody();
        str2 = getDevicePostBody();
        String str3 = getApplicationPostBody();
        String str4 = getPublisherPostBody();
        String str5 = getAdFormatPostBody();
        String str6 = getUidMapPostBody();
        if ((str1 != null) && (!"".equals(str1.trim()))) {
          localStringBuffer.append(str1);
        }
        if ((str2 != null) && (!"".equals(str2.trim())))
        {
          if ((str1 != null) && (!"".equals(str1.trim()))) {
            continue;
          }
          localStringBuffer.append(str2);
        }
        if ((str3 != null) && (!"".equals(str3.trim()))) {
          localStringBuffer.append("&" + str3);
        }
        if ((str4 != null) && (!"".equals(str4.trim()))) {
          localStringBuffer.append("&" + str4);
        }
        if ((str5 != null) && (!"".equals(str5.trim()))) {
          localStringBuffer.append("&" + str5);
        }
        if ((str6 != null) && (!"".equals(str6.trim()))) {
          localStringBuffer.append("&" + str6);
        }
      }
      catch (Exception localException)
      {
        String str2;
        Log.internal("[InMobi]-4.4.1", "Exception occured in an ad request" + localException);
        continue;
      }
      return localStringBuffer.toString();
      localStringBuffer.append("&" + str2);
    }
  }
  
  public String getAdFormatPostBody()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("format=imai");
    localStringBuilder.append("&mk-ads=1");
    return localStringBuilder.toString();
  }
  
  public String getApplicationPostBody()
  {
    for (;;)
    {
      try
      {
        localObject1 = new StringBuilder();
        if (AppInfo.getAppId() != null)
        {
          ((StringBuilder)localObject1).append("mk-siteid=");
          ((StringBuilder)localObject1).append(getURLEncoded(AppInfo.getAppId()));
          ((StringBuilder)localObject1).append("&mk-version=");
          localObject2 = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion("4.4.1") + "-20140613";
          ((StringBuilder)localObject1).append(getURLEncoded((String)localObject2));
          ((StringBuilder)localObject1).append("&mk-rel-version=");
          ((StringBuilder)localObject1).append(getURLEncoded((String)localObject2));
          ((StringBuilder)localObject1).append("&h-user-agent=");
          ((StringBuilder)localObject1).append(getURLEncoded(DeviceInfo.getPhoneDefaultUserAgent()));
          ((StringBuilder)localObject1).append("&u-appbid=");
          ((StringBuilder)localObject1).append(getURLEncoded(AppInfo.getAppBId()));
          ((StringBuilder)localObject1).append("&u-appDNM=");
          ((StringBuilder)localObject1).append(getURLEncoded(AppInfo.getAppDisplayName()));
          ((StringBuilder)localObject1).append("&u-appver=");
          ((StringBuilder)localObject1).append(getURLEncoded(AppInfo.getAppVer()));
          localObject1 = ((StringBuilder)localObject1).toString();
          localObject2 = localObject1;
        }
      }
      catch (Exception localException1)
      {
        Object localObject1;
        Object localObject2;
        Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException1);
        return null;
      }
      try
      {
        if (((String)localObject1).charAt(0) == '&') {
          localObject2 = ((String)localObject1).substring(1);
        }
        return (String)localObject2;
      }
      catch (Exception localException2)
      {
        Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException2);
      }
      ((StringBuilder)localObject1).append("mk-siteid=");
      ((StringBuilder)localObject1).append(getURLEncoded(InMobi.getAppId()));
    }
    return localException1;
  }
  
  public String getDevicePostBody()
  {
    try
    {
      Object localObject3 = new StringBuilder();
      if (DeviceInfo.getScreenDensity() != null) {
        ((StringBuilder)localObject3).append("d-device-screen-density=").append(getURLEncoded(DeviceInfo.getScreenDensity()));
      }
      if (DeviceInfo.getScreenSize() != null) {
        ((StringBuilder)localObject3).append("&d-device-screen-size=").append(getURLEncoded(DeviceInfo.getScreenSize()));
      }
      if (DeviceInfo.getOrientation() != 0)
      {
        ((StringBuilder)localObject3).append("&d-orientation=");
        ((StringBuilder)localObject3).append(DeviceInfo.getOrientation());
      }
      if (DeviceInfo.getAid() != null)
      {
        ((StringBuilder)localObject3).append("&aid=");
        ((StringBuilder)localObject3).append(getURLEncoded(DeviceInfo.getAid()));
      }
      if (DeviceInfo.getNetworkType() != null)
      {
        ((StringBuilder)localObject3).append("&d-netType=");
        ((StringBuilder)localObject3).append(getURLEncoded(DeviceInfo.getNetworkType()));
      }
      ((StringBuilder)localObject3).append("&d-localization=");
      ((StringBuilder)localObject3).append(getURLEncoded(DeviceInfo.getLocalization()));
      Object localObject1 = Calendar.getInstance();
      System.currentTimeMillis();
      ((StringBuilder)localObject3).append("&ts=" + ((Calendar)localObject1).getTimeInMillis());
      StringBuilder localStringBuilder = ((StringBuilder)localObject3).append("&tz=");
      int i = ((Calendar)localObject1).get(15);
      localStringBuilder.append(((Calendar)localObject1).get(16) + i);
      try
      {
        localObject1 = IceDataCollector.getConnectedWifiInfo(InternalSDKUtil.getContext());
        if (localObject1 != null) {
          ((StringBuilder)localObject3).append("&c-ap-bssid=" + bssid);
        }
        try
        {
          localObject1 = getCurrentCellTowergetContextid;
          if ((localObject1 != null) && (!"".equals(localObject1))) {
            ((StringBuilder)localObject3).append("&c-sid=" + (String)localObject1);
          }
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            Object localObject2;
            Log.internal("[InMobi]-4.4.1", "Couldn't get cell tower info in Request Builder", localException2);
          }
        }
        localObject1 = ((StringBuilder)localObject3).toString();
        localObject3 = localObject1;
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          try
          {
            if (((String)localObject1).charAt(0) == '&') {
              localObject3 = ((String)localObject1).substring(1);
            }
            return (String)localObject3;
          }
          catch (Exception localException4)
          {
            Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException4);
          }
          localException1 = localException1;
          Log.internal("[InMobi]-4.4.1", "No wifi permissions set, unable to send wifi data");
          localObject2 = null;
        }
      }
      return localException3;
    }
    catch (Exception localException3)
    {
      Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException3);
      return null;
    }
  }
  
  protected String getPublisherPostBody()
  {
    return null;
  }
  
  public String getSDKDelegatePostBody()
  {
    try
    {
      Object localObject1 = new StringBuilder();
      Object localObject2 = UserInfo.getInstance();
      if (((UserInfo)localObject2).getPostalCode() != null)
      {
        ((StringBuilder)localObject1).append("u-postalCode=");
        ((StringBuilder)localObject1).append(getURLEncoded(((UserInfo)localObject2).getPostalCode()));
      }
      if (((UserInfo)localObject2).getAreaCode() != null)
      {
        ((StringBuilder)localObject1).append("&u-areaCode=");
        ((StringBuilder)localObject1).append(getURLEncoded(((UserInfo)localObject2).getAreaCode()));
      }
      String str = a(((UserInfo)localObject2).getDateOfBirth());
      if (str != null)
      {
        ((StringBuilder)localObject1).append("&u-dateOfBirth=");
        ((StringBuilder)localObject1).append(getURLEncoded(str));
      }
      if (((UserInfo)localObject2).getGender() != null)
      {
        ((StringBuilder)localObject1).append("&u-gender=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getGender().toString().toLowerCase());
      }
      if (((UserInfo)localObject2).getSearchString() != null)
      {
        ((StringBuilder)localObject1).append("&p-type=");
        ((StringBuilder)localObject1).append(getURLEncoded(((UserInfo)localObject2).getSearchString()));
      }
      if (((UserInfo)localObject2).getIncome().intValue() > 0)
      {
        ((StringBuilder)localObject1).append("&u-income=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getIncome());
      }
      if (((UserInfo)localObject2).getEducation() != null)
      {
        ((StringBuilder)localObject1).append("&u-education=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getEducation().toString().toLowerCase());
      }
      if (((UserInfo)localObject2).getEthnicity() != null)
      {
        ((StringBuilder)localObject1).append("&u-ethnicity=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getEthnicity().toString().toLowerCase());
      }
      if (((UserInfo)localObject2).getAge().intValue() > 0)
      {
        ((StringBuilder)localObject1).append("&u-age=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getAge());
      }
      if (((UserInfo)localObject2).getInterests() != null)
      {
        ((StringBuilder)localObject1).append("&u-interests=");
        ((StringBuilder)localObject1).append(getURLEncoded(((UserInfo)localObject2).getInterests()));
      }
      if (((UserInfo)localObject2).getLocationWithCityStateCountry() != null)
      {
        ((StringBuilder)localObject1).append("&u-location=");
        ((StringBuilder)localObject1).append(getURLEncoded(((UserInfo)localObject2).getLocationWithCityStateCountry()));
      }
      if (((UserInfo)localObject2).getMaritalStatus() != null)
      {
        ((StringBuilder)localObject1).append("&u-marital=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getMaritalStatus().toString().toLowerCase());
      }
      if (((UserInfo)localObject2).getHasChildren() != null)
      {
        ((StringBuilder)localObject1).append("&u-haschildren=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getHasChildren().toString().toLowerCase());
      }
      if (((UserInfo)localObject2).getLanguage() != null)
      {
        ((StringBuilder)localObject1).append("&u-language=");
        ((StringBuilder)localObject1).append(getURLEncoded(((UserInfo)localObject2).getLanguage()));
      }
      if (((UserInfo)localObject2).getSexualOrientation() != null)
      {
        ((StringBuilder)localObject1).append("&u-sexualorientation=");
        ((StringBuilder)localObject1).append(((UserInfo)localObject2).getSexualOrientation().toString().toLowerCase());
      }
      if (LocationInfo.isValidGeoInfo())
      {
        ((StringBuilder)localObject1).append("&u-latlong-accu=");
        ((StringBuilder)localObject1).append(getURLEncoded(currentLocationStr()));
        ((StringBuilder)localObject1).append("&u-ll-ts=");
        ((StringBuilder)localObject1).append(LocationInfo.getGeoTS());
      }
      localObject1 = ((StringBuilder)localObject1).toString();
      localObject2 = localObject1;
      try
      {
        if (((String)localObject1).charAt(0) == '&') {
          localObject2 = ((String)localObject1).substring(1);
        }
        return (String)localObject2;
      }
      catch (Exception localException2)
      {
        Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException2);
        return (String)localObject1;
      }
      return null;
    }
    catch (Exception localException1)
    {
      Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException1);
    }
  }
  
  public String getUidMapPostBody()
  {
    String str1 = null;
    Object localObject3 = new HashMap();
    try
    {
      localObject1 = AnalyticsInitializer.getConfigParams().getLTVId();
      if (localObject1 != null) {
        ((Map)localObject3).put("LTVID", localObject1);
      }
      String str2 = Integer.toString(new Random().nextInt());
      localObject3 = UID.getCommonsUid().getUidMap(UserInfo.getInstance().getDeviceIDMask(), str2, (Map)localObject3);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("u-id-adt=");
      if (InternalSDKUtil.isLimitAdTrackingEnabled())
      {
        localStringBuilder.append(1);
        localObject1 = str1;
        if (localObject3 != null)
        {
          localStringBuilder.append("&u-id-map=");
          localStringBuilder.append(getURLEncoded((String)localObject3));
          localStringBuilder.append("&u-id-key=");
          localStringBuilder.append(str2);
          localStringBuilder.append("&u-key-ver=");
          localStringBuilder.append(UIDHelper.getRSAKeyVersion());
          str1 = localStringBuilder.toString();
          localObject1 = str1;
        }
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          Object localObject1;
          if (str1.charAt(0) == '&') {
            localObject1 = str1.substring(1);
          }
          return (String)localObject1;
        }
        catch (Exception localException2)
        {
          StringBuilder localStringBuilder;
          Object localObject2;
          Log.internal("[InMobi]-4.4.1", "Couldn't build post string in Request Builder", localException2);
        }
        localException1 = localException1;
        Log.internal("[InMobi]-4.4.1", "LTVID not available yet in configs");
        localObject2 = null;
        continue;
        localStringBuilder.append(0);
      }
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.network.RequestBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */