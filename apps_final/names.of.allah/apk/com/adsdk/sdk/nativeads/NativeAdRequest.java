package com.adsdk.sdk.nativeads;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.adsdk.sdk.Gender;
import java.util.List;
import java.util.Random;

public class NativeAdRequest
{
  private static final String IMAGE_TYPES = "icon,main";
  private static final String REQUEST_TYPE = "native";
  private static final String REQUEST_TYPE_ANDROID = "android_app";
  private static final String RESPONSE_TYPE = "json";
  private static final String TEXT_TYPES = "headline,description,cta,advertiser,rating";
  private List<String> adTypes;
  private String androidAdId = "";
  private String androidID = "";
  private String androidIMEI = "";
  private Gender gender;
  private List<String> keywords;
  private double latitude = 0.0D;
  private double longitude = 0.0D;
  private String protocolVersion;
  private String publisherId;
  private String request_url;
  private int userAge;
  private String userAgent;
  private String userAgent2;
  
  public List<String> getAdTypes()
  {
    return adTypes;
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
  
  public Gender getGender()
  {
    return gender;
  }
  
  public List<String> getKeywords()
  {
    return keywords;
  }
  
  public double getLatitude()
  {
    return latitude;
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
    return publisherId;
  }
  
  public int getUserAge()
  {
    return userAge;
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
  
  public void setAdTypes(List<String> paramList)
  {
    adTypes = paramList;
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
  
  public void setGender(Gender paramGender)
  {
    gender = paramGender;
  }
  
  public void setKeywords(List<String> paramList)
  {
    keywords = paramList;
  }
  
  public void setLatitude(double paramDouble)
  {
    latitude = paramDouble;
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
  
  public void setRequestUrl(String paramString)
  {
    request_url = paramString;
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
  
  public String toString()
  {
    return toUri().toString();
  }
  
  public Uri toUri()
  {
    Uri.Builder localBuilder = Uri.parse(request_url).buildUpon();
    int i = new Random().nextInt(50000);
    localBuilder.appendQueryParameter("rt", "android_app");
    localBuilder.appendQueryParameter("r_type", "native");
    localBuilder.appendQueryParameter("r_resp", "json");
    localBuilder.appendQueryParameter("n_img", "icon,main");
    localBuilder.appendQueryParameter("n_txt", "headline,description,cta,advertiser,rating");
    if ((adTypes != null) && (!adTypes.isEmpty())) {
      localBuilder.appendQueryParameter("n_type", TextUtils.join(", ", adTypes));
    }
    localBuilder.appendQueryParameter("s", getPublisherId());
    localBuilder.appendQueryParameter("u", getUserAgent());
    localBuilder.appendQueryParameter("u2", getUserAgent2());
    localBuilder.appendQueryParameter("r_random", Integer.toString(i));
    localBuilder.appendQueryParameter("o_androidid", androidID);
    localBuilder.appendQueryParameter("o_androidimei", androidIMEI);
    localBuilder.appendQueryParameter("o_andadvid", androidAdId);
    localBuilder.appendQueryParameter("v", getProtocolVersion());
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
    return localBuilder.build();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */