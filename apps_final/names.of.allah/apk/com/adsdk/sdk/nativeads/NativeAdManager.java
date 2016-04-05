package com.adsdk.sdk.nativeads;

import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.view.View.OnClickListener;
import com.adsdk.sdk.Gender;
import com.adsdk.sdk.Log;
import com.adsdk.sdk.Util;
import java.util.List;

public class NativeAdManager
{
  private List<String> adTypes;
  private Context context;
  private Handler handler;
  private boolean includeLocation = false;
  private List<String> keywords;
  private NativeAdListener listener;
  private NativeAd nativeAd;
  private String publisherId;
  private NativeAdRequest request;
  private String requestUrl;
  private int telephonyPermission;
  private int userAge;
  private Gender userGender;
  
  public NativeAdManager(Context paramContext, String paramString1, boolean paramBoolean, String paramString2, NativeAdListener paramNativeAdListener, List<String> paramList)
  {
    if ((paramString2 == null) || (paramString2.length() == 0))
    {
      Log.e("Publisher Id cannot be null or empty");
      throw new IllegalArgumentException("User Id cannot be null or empty");
    }
    context = paramContext;
    requestUrl = paramString1;
    includeLocation = paramBoolean;
    publisherId = paramString2;
    listener = paramNativeAdListener;
    adTypes = paramList;
    handler = new Handler();
    telephonyPermission = paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE");
    Util.prepareAndroidAdId(paramContext);
  }
  
  private View.OnClickListener createOnNativeAdClickListener(String paramString)
  {
    return new NativeAdManager.3(this, paramString);
  }
  
  private NativeAdRequest getRequest()
  {
    if (request == null)
    {
      request = new NativeAdRequest();
      if (telephonyPermission == 0)
      {
        localObject = (TelephonyManager)context.getSystemService("phone");
        request.setAndroidIMEI(((TelephonyManager)localObject).getDeviceId());
      }
      request.setAndroidID(Util.getDeviceId(context));
      request.setAndroidAdId(Util.getAndroidAdId());
      request.setPublisherId(publisherId);
      request.setUserAgent(Util.getDefaultUserAgentString(context));
      request.setUserAgent2(Util.buildUserAgent());
      Log.d("ADSDK", "WebKit UserAgent:" + request.getUserAgent());
    }
    request.setRequestUrl(requestUrl);
    request.setAdTypes(adTypes);
    request.setGender(userGender);
    request.setUserAge(userAge);
    request.setAdTypes(adTypes);
    request.setKeywords(keywords);
    Object localObject = null;
    if (includeLocation) {
      localObject = Util.getLocation(context);
    }
    if (localObject != null)
    {
      Log.d("ADSDK", "location is longitude: " + ((Location)localObject).getLongitude() + ", latitude: " + ((Location)localObject).getLatitude());
      request.setLatitude(((Location)localObject).getLatitude());
      request.setLongitude(((Location)localObject).getLongitude());
    }
    for (;;)
    {
      return request;
      request.setLatitude(0.0D);
      request.setLongitude(0.0D);
    }
  }
  
  private void notifyAdClicked()
  {
    if (listener != null) {
      handler.post(new NativeAdManager.6(this));
    }
  }
  
  private void notifyAdFailed()
  {
    if (listener != null) {
      handler.post(new NativeAdManager.5(this));
    }
  }
  
  private void notifyAdLoaded(NativeAd paramNativeAd)
  {
    if (listener != null) {
      handler.post(new NativeAdManager.4(this, paramNativeAd));
    }
  }
  
  public NativeAdView getNativeAdView(NativeAd paramNativeAd, NativeViewBinder paramNativeViewBinder)
  {
    paramNativeViewBinder = new NativeAdView(context, paramNativeAd, paramNativeViewBinder, listener);
    if (paramNativeAd != null) {
      paramNativeViewBinder.setOnClickListener(createOnNativeAdClickListener(paramNativeAd.getClickUrl()));
    }
    return paramNativeViewBinder;
  }
  
  public void requestAd()
  {
    Thread localThread = new Thread(new NativeAdManager.1(this));
    localThread.setUncaughtExceptionHandler(new NativeAdManager.2(this));
    localThread.start();
  }
  
  public void setKeywords(List<String> paramList)
  {
    keywords = paramList;
  }
  
  public void setUserAge(int paramInt)
  {
    userAge = paramInt;
  }
  
  public void setUserGender(Gender paramGender)
  {
    userGender = paramGender;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */