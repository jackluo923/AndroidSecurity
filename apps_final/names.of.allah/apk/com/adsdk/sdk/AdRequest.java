package com.adsdk.sdk;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.List;
import java.util.Random;

public class AdRequest
{
  private static final String REQUEST_TYPE_ANDROID = "android_app";
  private int adspaceHeight;
  private boolean adspaceStrict;
  private int adspaceWidth;
  private String androidAdId = "";
  private String androidID = "";
  private String androidIMEI = "";
  private String connectionType;
  private String deviceId;
  private String deviceId2;
  private Gender gender;
  private String headers;
  private String ipAddress;
  private boolean isVideoRequest;
  private List<String> keywords;
  private double latitude = 0.0D;
  private String listAds;
  private double longitude = 0.0D;
  private String protocolVersion;
  private String publisherId;
  private String requestURL;
  private long timestamp;
  private int userAge;
  private String userAgent;
  private String userAgent2;
  private int videoMaxDuration;
  private int videoMinDuration;
  
  public int getAdspaceHeight()
  {
    return adspaceHeight;
  }
  
  public int getAdspaceWidth()
  {
    return adspaceWidth;
  }
  
  public String getAndroidAdId()
  {
    return androidAdId;
  }
  
  public String getAndroidID()
  {
    return androidID;
  }
  
  public String getAndroidIMEI()
  {
    return androidIMEI;
  }
  
  public String getAndroidVersion()
  {
    return Build.VERSION.RELEASE;
  }
  
  public String getConnectionType()
  {
    return connectionType;
  }
  
  public String getDeviceId()
  {
    if (deviceId == null) {
      return "";
    }
    return deviceId;
  }
  
  public String getDeviceId2()
  {
    return deviceId2;
  }
  
  public String getDeviceMode()
  {
    return Build.MODEL;
  }
  
  public String getHeaders()
  {
    if (headers == null) {
      return "";
    }
    return headers;
  }
  
  public String getIpAddress()
  {
    if (ipAddress == null) {
      return "";
    }
    return ipAddress;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public String getListAds()
  {
    if (listAds != null) {
      return listAds;
    }
    return "";
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public String getProtocolVersion()
  {
    if (protocolVersion == null) {
      return "5.2.0";
    }
    return protocolVersion;
  }
  
  public String getPublisherId()
  {
    if (publisherId == null) {
      return "";
    }
    return publisherId;
  }
  
  public String getRequestType()
  {
    return "android_app";
  }
  
  public String getRequestURL()
  {
    return requestURL;
  }
  
  public long getTimestamp()
  {
    return timestamp;
  }
  
  public String getUserAgent()
  {
    if (userAgent == null) {
      return "";
    }
    return userAgent;
  }
  
  public String getUserAgent2()
  {
    if (userAgent2 == null) {
      return "";
    }
    return userAgent2;
  }
  
  public int getVideoMaxDuration()
  {
    return videoMaxDuration;
  }
  
  public int getVideoMinDuration()
  {
    return videoMinDuration;
  }
  
  public boolean isAdspaceStrict()
  {
    return adspaceStrict;
  }
  
  public boolean isVideoRequest()
  {
    return isVideoRequest;
  }
  
  public void setAdspaceHeight(int paramInt)
  {
    adspaceHeight = paramInt;
  }
  
  public void setAdspaceStrict(boolean paramBoolean)
  {
    adspaceStrict = paramBoolean;
  }
  
  public void setAdspaceWidth(int paramInt)
  {
    adspaceWidth = paramInt;
  }
  
  public void setAndroidAdId(String paramString)
  {
    androidAdId = paramString;
  }
  
  public void setAndroidID(String paramString)
  {
    androidID = paramString;
  }
  
  public void setAndroidIMEI(String paramString)
  {
    androidIMEI = paramString;
  }
  
  public void setConnectionType(String paramString)
  {
    connectionType = paramString;
  }
  
  public void setDeviceId(String paramString)
  {
    deviceId = paramString;
  }
  
  public void setDeviceId2(String paramString)
  {
    deviceId2 = paramString;
  }
  
  public void setGender(Gender paramGender)
  {
    gender = paramGender;
  }
  
  public void setHeaders(String paramString)
  {
    headers = paramString;
  }
  
  public void setIpAddress(String paramString)
  {
    ipAddress = paramString;
  }
  
  public void setKeywords(List<String> paramList)
  {
    keywords = paramList;
  }
  
  public void setLatitude(double paramDouble)
  {
    latitude = paramDouble;
  }
  
  public void setListAds(String paramString)
  {
    listAds = paramString;
  }
  
  public void setLongitude(double paramDouble)
  {
    longitude = paramDouble;
  }
  
  public void setProtocolVersion(String paramString)
  {
    protocolVersion = paramString;
  }
  
  public void setPublisherId(String paramString)
  {
    publisherId = paramString;
  }
  
  public void setRequestURL(String paramString)
  {
    requestURL = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    timestamp = paramLong;
  }
  
  public void setUserAge(int paramInt)
  {
    userAge = paramInt;
  }
  
  public void setUserAgent(String paramString)
  {
    userAgent = paramString;
  }
  
  public void setUserAgent2(String paramString)
  {
    userAgent2 = paramString;
  }
  
  public void setVideoMaxDuration(int paramInt)
  {
    videoMaxDuration = paramInt;
  }
  
  public void setVideoMinDuration(int paramInt)
  {
    videoMinDuration = paramInt;
  }
  
  public void setVideoRequest(boolean paramBoolean)
  {
    isVideoRequest = paramBoolean;
  }
  
  public String toString()
  {
    return toUri().toString();
  }
  
  public Uri toUri()
  {
    Uri.Builder localBuilder = Uri.parse(getRequestURL()).buildUpon();
    int i = new Random().nextInt(50000);
    localBuilder.appendQueryParameter("rt", getRequestType());
    localBuilder.appendQueryParameter("v", getProtocolVersion());
    localBuilder.appendQueryParameter("i", getIpAddress());
    localBuilder.appendQueryParameter("u", getUserAgent());
    localBuilder.appendQueryParameter("u2", getUserAgent2());
    localBuilder.appendQueryParameter("s", getPublisherId());
    localBuilder.appendQueryParameter("o", getDeviceId());
    localBuilder.appendQueryParameter("o_androidimei", androidIMEI);
    localBuilder.appendQueryParameter("o_androidid", androidID);
    localBuilder.appendQueryParameter("o_andadvid", androidAdId);
    localBuilder.appendQueryParameter("r_random", Integer.toString(i));
    localBuilder.appendQueryParameter("o2", getDeviceId2());
    localBuilder.appendQueryParameter("t", Long.toString(getTimestamp()));
    localBuilder.appendQueryParameter("connection_type", getConnectionType());
    localBuilder.appendQueryParameter("listads", getListAds());
    localBuilder.appendQueryParameter("c_customevents", "1");
    localBuilder.appendQueryParameter("c.mraid", "1");
    if (isVideoRequest)
    {
      localBuilder.appendQueryParameter("r_type", "video");
      localBuilder.appendQueryParameter("r_resp", "vast20");
      if (videoMaxDuration != 0) {
        localBuilder.appendQueryParameter("v_dur_max", Integer.toString(videoMaxDuration));
      }
      if (videoMinDuration != 0) {
        localBuilder.appendQueryParameter("v_dur_min", Integer.toString(videoMinDuration));
      }
      if (userAge != 0) {
        localBuilder.appendQueryParameter("demo.age", Integer.toString(userAge));
      }
      if (gender != null) {
        localBuilder.appendQueryParameter("demo.gender", gender.getServerParam());
      }
      if ((keywords != null) && (!keywords.isEmpty())) {
        localBuilder.appendQueryParameter("demo.keywords", TextUtils.join(", ", keywords));
      }
      localBuilder.appendQueryParameter("u_wv", getUserAgent());
      localBuilder.appendQueryParameter("u_br", getUserAgent());
      if ((longitude != 0.0D) && (latitude != 0.0D))
      {
        localBuilder.appendQueryParameter("longitude", Double.toString(longitude));
        localBuilder.appendQueryParameter("latitude", Double.toString(latitude));
      }
      if ((adspaceHeight != 0) && (adspaceWidth != 0))
      {
        if (!adspaceStrict) {
          break label524;
        }
        localBuilder.appendQueryParameter("adspace.strict", "1");
      }
    }
    for (;;)
    {
      localBuilder.appendQueryParameter("adspace.width", Integer.toString(adspaceWidth));
      localBuilder.appendQueryParameter("adspace.height", Integer.toString(adspaceHeight));
      return localBuilder.build();
      localBuilder.appendQueryParameter("r_type", "banner");
      break;
      label524:
      localBuilder.appendQueryParameter("adspace.strict", "0");
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */