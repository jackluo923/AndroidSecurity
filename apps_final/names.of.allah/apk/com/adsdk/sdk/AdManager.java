package com.adsdk.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.os.Handler;
import com.adsdk.sdk.customevents.CustomEvent;
import com.adsdk.sdk.customevents.CustomEventFullscreen;
import com.adsdk.sdk.customevents.CustomEventFullscreen.CustomEventFullscreenListener;
import com.adsdk.sdk.customevents.CustomEventFullscreenFactory;
import com.adsdk.sdk.video.ResourceManager;
import com.adsdk.sdk.video.TrackerService;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

public class AdManager
{
  private static Context mContext;
  private static HashMap<Long, AdManager> sRunningAds = new HashMap();
  private boolean alreadyRequestedInterstitial;
  private boolean alreadyRequestedVideo;
  private String androidAdId;
  private String androidID = "";
  private String androidIMEI = "";
  private CustomEventFullscreen customEventFullscreen;
  private CustomEventFullscreen.CustomEventFullscreenListener customFullscreenListener;
  private String interstitialRequestURL;
  private boolean isInterstitialAdsEnabled = true;
  private boolean isVideoAdsEnabled;
  private List<String> keywords;
  private boolean mEnabled = true;
  private Handler mHandler;
  private boolean mIncludeLocation;
  private AdListener mListener;
  private String mPublisherId;
  private Thread mRequestThread;
  private AdResponse mResponse;
  private String mUniqueId1;
  private String mUniqueId2;
  private boolean prioritizeVideoAds;
  private AdRequest request = null;
  private boolean requestedHorizontalAd;
  private int userAge;
  private Gender userGender;
  private int videoMaxDuration;
  private int videoMinimalDuration;
  
  public AdManager(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    Util.prepareAndroidAdId(paramContext);
    setmContext(paramContext);
    interstitialRequestURL = paramString1;
    mPublisherId = paramString2;
    mIncludeLocation = paramBoolean;
    mRequestThread = null;
    mHandler = new Handler();
    initialize();
  }
  
  public static void closeRunningAd(AdResponse paramAdResponse, boolean paramBoolean)
  {
    AdManager localAdManager = (AdManager)sRunningAds.remove(Long.valueOf(paramAdResponse.getTimestamp()));
    if (localAdManager == null)
    {
      Log.d("Cannot find AdManager with running ad:" + paramAdResponse.getTimestamp());
      return;
    }
    Log.d("Notify closing event to AdManager with running ad:" + paramAdResponse.getTimestamp());
    localAdManager.notifyAdClose(paramAdResponse, paramBoolean);
  }
  
  private CustomEventFullscreen.CustomEventFullscreenListener createCustomFullscreenListener()
  {
    return new AdManager.6(this);
  }
  
  public static AdManager getAdManager(AdResponse paramAdResponse)
  {
    AdManager localAdManager = (AdManager)sRunningAds.remove(Long.valueOf(paramAdResponse.getTimestamp()));
    if (localAdManager == null) {
      Log.d("Cannot find AdManager with running ad:" + paramAdResponse.getTimestamp());
    }
    return localAdManager;
  }
  
  private Context getContext()
  {
    return getmContext();
  }
  
  private AdRequest getInterstitialRequest()
  {
    if (request == null)
    {
      request = new AdRequest();
      request.setDeviceId(mUniqueId1);
      request.setDeviceId2(mUniqueId2);
      request.setAndroidID(androidID);
      request.setAndroidIMEI(androidIMEI);
      request.setAndroidAdId(androidAdId);
      request.setPublisherId(mPublisherId);
      request.setUserAgent(Util.getDefaultUserAgentString(mContext));
      request.setUserAgent2(Util.buildUserAgent());
    }
    Location localLocation = null;
    request.setVideoRequest(false);
    request.setGender(userGender);
    request.setUserAge(userAge);
    request.setKeywords(keywords);
    if (mIncludeLocation) {
      localLocation = Util.getLocation(mContext);
    }
    if (localLocation != null)
    {
      Log.d("location is longitude: " + localLocation.getLongitude() + ", latitude: " + localLocation.getLatitude());
      request.setLatitude(localLocation.getLatitude());
      request.setLongitude(localLocation.getLongitude());
      if (mContextgetResourcesgetConfigurationorientation != 2) {
        break label344;
      }
      requestedHorizontalAd = true;
      request.setAdspaceHeight(320);
      request.setAdspaceWidth(480);
    }
    for (;;)
    {
      request.setAdspaceStrict(false);
      request.setConnectionType(Util.getConnectionType(getContext()));
      request.setIpAddress(Util.getLocalIpAddress());
      request.setTimestamp(System.currentTimeMillis());
      request.setRequestURL(interstitialRequestURL);
      return request;
      request.setLatitude(0.0D);
      request.setLongitude(0.0D);
      break;
      label344:
      requestedHorizontalAd = false;
      request.setAdspaceHeight(480);
      request.setAdspaceWidth(320);
    }
  }
  
  private AdRequest getVideoRequest()
  {
    if (request == null)
    {
      request = new AdRequest();
      request.setDeviceId(mUniqueId1);
      request.setDeviceId2(mUniqueId2);
      request.setAndroidID(androidID);
      request.setAndroidIMEI(androidIMEI);
      request.setAndroidAdId(androidAdId);
      request.setPublisherId(mPublisherId);
      request.setUserAgent(Util.getDefaultUserAgentString(mContext));
      request.setUserAgent2(Util.buildUserAgent());
    }
    request.setGender(userGender);
    request.setUserAge(userAge);
    request.setKeywords(keywords);
    request.setVideoRequest(true);
    request.setVideoMaxDuration(videoMaxDuration);
    request.setVideoMinDuration(videoMinimalDuration);
    Location localLocation = null;
    if (mIncludeLocation) {
      localLocation = Util.getLocation(mContext);
    }
    if (localLocation != null)
    {
      Log.d("location is longitude: " + localLocation.getLongitude() + ", latitude: " + localLocation.getLatitude());
      request.setLatitude(localLocation.getLatitude());
      request.setLongitude(localLocation.getLongitude());
    }
    for (;;)
    {
      request.setAdspaceHeight(480);
      request.setAdspaceWidth(320);
      request.setAdspaceStrict(false);
      request.setConnectionType(Util.getConnectionType(getContext()));
      request.setIpAddress(Util.getLocalIpAddress());
      request.setTimestamp(System.currentTimeMillis());
      request.setRequestURL(interstitialRequestURL);
      return request;
      request.setLatitude(0.0D);
      request.setLongitude(0.0D);
    }
  }
  
  private static Context getmContext()
  {
    return mContext;
  }
  
  private void initialize()
  {
    Log.LOGGING_ENABLED = Log.isLoggingEnabled(getmContext());
    Log.d("Ad SDK Version:5.2.0");
    mUniqueId1 = Util.getTelephonyDeviceId(getContext());
    mUniqueId2 = Util.getDeviceId(getContext());
    androidID = Util.getDeviceId(getContext());
    androidIMEI = Util.getTelephonyDeviceId(getContext());
    androidAdId = Util.getAndroidAdId();
    if ((mPublisherId == null) || (mPublisherId.length() == 0))
    {
      Log.e("Publisher Id cannot be null or empty");
      throw new IllegalArgumentException("User Id cannot be null or empty");
    }
    if (mUniqueId2 == null)
    {
      Log.e("Cannot get system device Id");
      throw new IllegalArgumentException("System Device Id cannot be null");
    }
    Log.d("AdManager Publisher Id:" + mPublisherId + " Device Id:" + mUniqueId1 + " DeviceId2:" + mUniqueId2);
    if (Util.getMemoryClass(getContext()) > 16) {}
    for (boolean bool = true;; bool = false)
    {
      mEnabled = bool;
      customFullscreenListener = createCustomFullscreenListener();
      return;
    }
  }
  
  private void loadCustomEventFullscreen()
  {
    customEventFullscreen = null;
    for (;;)
    {
      if ((mResponse.getCustomEvents().isEmpty()) || (customEventFullscreen != null)) {
        return;
      }
      try
      {
        CustomEvent localCustomEvent = (CustomEvent)mResponse.getCustomEvents().get(0);
        mResponse.getCustomEvents().remove(localCustomEvent);
        customEventFullscreen = CustomEventFullscreenFactory.create(localCustomEvent.getClassName());
        mHandler.post(new AdManager.5(this, localCustomEvent));
      }
      catch (Exception localException)
      {
        customEventFullscreen = null;
        Log.d("Failed to create Custom Event Fullscreen.");
      }
    }
  }
  
  public static void notifyAdClick(AdResponse paramAdResponse)
  {
    paramAdResponse = (AdManager)sRunningAds.get(Long.valueOf(paramAdResponse.getTimestamp()));
    if (paramAdResponse != null) {
      paramAdResponse.notifyAdClicked();
    }
  }
  
  private void notifyAdClicked()
  {
    if (mListener != null) {
      mHandler.post(new AdManager.9(this));
    }
  }
  
  private void notifyAdClose(AdResponse paramAdResponse, boolean paramBoolean)
  {
    if (mListener != null)
    {
      Log.d("Ad Close. Result:" + paramBoolean);
      mHandler.post(new AdManager.11(this, paramAdResponse, paramBoolean));
    }
  }
  
  private void notifyAdLoaded(AdResponse paramAdResponse)
  {
    if (mListener != null) {
      mHandler.post(new AdManager.8(this, paramAdResponse));
    }
  }
  
  private void notifyAdShown(AdResponse paramAdResponse, boolean paramBoolean)
  {
    if (mListener != null)
    {
      Log.d("Ad Shown. Result:" + paramBoolean);
      mHandler.post(new AdManager.10(this, paramAdResponse, paramBoolean));
    }
    mResponse = null;
  }
  
  private void notifyNoAdFound()
  {
    if (mListener != null)
    {
      Log.d("No ad found.");
      mHandler.post(new AdManager.7(this));
    }
    mResponse = null;
  }
  
  private void requestAdInternal(boolean paramBoolean)
  {
    if (!mEnabled)
    {
      Log.w("Cannot request rich adds on low memory devices");
      return;
    }
    if (!paramBoolean)
    {
      alreadyRequestedInterstitial = false;
      alreadyRequestedVideo = false;
    }
    if (mRequestThread == null)
    {
      Log.d("Requesting Ad (v5.2.0-3.0)");
      mResponse = null;
      if (!isVideoAdsEnabled) {
        prioritizeVideoAds = false;
      }
      mRequestThread = new Thread(new AdManager.1(this));
      mRequestThread.setUncaughtExceptionHandler(new AdManager.2(this));
      mRequestThread.start();
      return;
    }
    Log.w("Request thread already running");
  }
  
  private static void setmContext(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public int getVideoMaxDuration()
  {
    return videoMaxDuration;
  }
  
  public int getVideoMinimalDuration()
  {
    return videoMinimalDuration;
  }
  
  public boolean isAdLoaded()
  {
    return mResponse != null;
  }
  
  public boolean isPrioritizeVideoAds()
  {
    return prioritizeVideoAds;
  }
  
  public void release()
  {
    TrackerService.release();
    ResourceManager.cancel();
  }
  
  public void requestAd()
  {
    requestAdInternal(false);
  }
  
  public void requestAd(InputStream paramInputStream)
  {
    if (!mEnabled)
    {
      Log.w("Cannot request rich adds on low memory devices");
      return;
    }
    alreadyRequestedInterstitial = false;
    alreadyRequestedVideo = false;
    if (mRequestThread == null)
    {
      Log.d("Requesting Ad (v5.2.0-3.0)");
      mResponse = null;
      mRequestThread = new Thread(new AdManager.3(this, paramInputStream));
      mRequestThread.setUncaughtExceptionHandler(new AdManager.4(this));
      mRequestThread.start();
      return;
    }
    Log.w("Request thread already running");
  }
  
  public void requestAdAndShow(long paramLong)
  {
    AdListener localAdListener = mListener;
    mListener = null;
    requestAd();
    long l2 = System.currentTimeMillis();
    long l1 = l2;
    for (;;)
    {
      if ((isAdLoaded()) || (l1 >= l2 + paramLong))
      {
        mListener = localAdListener;
        showAd();
        return;
      }
      try
      {
        Thread.sleep(200L);
        l1 = System.currentTimeMillis();
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
    }
  }
  
  public void setInterstitialAdsEnabled(boolean paramBoolean)
  {
    isInterstitialAdsEnabled = paramBoolean;
  }
  
  public void setInterstitialRequestURL(String paramString)
  {
    interstitialRequestURL = paramString;
  }
  
  public void setKeywords(List<String> paramList)
  {
    keywords = paramList;
  }
  
  public void setListener(AdListener paramAdListener)
  {
    mListener = paramAdListener;
  }
  
  public void setPrioritizeVideoAds(boolean paramBoolean)
  {
    prioritizeVideoAds = paramBoolean;
  }
  
  public void setUserAge(int paramInt)
  {
    userAge = paramInt;
  }
  
  public void setUserGender(Gender paramGender)
  {
    userGender = paramGender;
  }
  
  public void setVideoAdsEnabled(boolean paramBoolean)
  {
    isVideoAdsEnabled = paramBoolean;
  }
  
  public void setVideoMaxDuration(int paramInt)
  {
    videoMaxDuration = paramInt;
  }
  
  public void setVideoMinimalDuration(int paramInt)
  {
    videoMinimalDuration = paramInt;
  }
  
  /* Error */
  public void showAd()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: iconst_0
    //   4: istore 5
    //   6: aload_0
    //   7: invokespecial 355	com/adsdk/sdk/AdManager:getContext	()Landroid/content/Context;
    //   10: checkcast 588	android/app/Activity
    //   13: astore_1
    //   14: aload_0
    //   15: getfield 116	com/adsdk/sdk/AdManager:mResponse	Lcom/adsdk/sdk/AdResponse;
    //   18: ifnull +25 -> 43
    //   21: aload_0
    //   22: getfield 116	com/adsdk/sdk/AdManager:mResponse	Lcom/adsdk/sdk/AdResponse;
    //   25: invokevirtual 591	com/adsdk/sdk/AdResponse:getType	()I
    //   28: iconst_2
    //   29: if_icmpeq +14 -> 43
    //   32: aload_0
    //   33: getfield 116	com/adsdk/sdk/AdManager:mResponse	Lcom/adsdk/sdk/AdResponse;
    //   36: invokevirtual 591	com/adsdk/sdk/AdResponse:getType	()I
    //   39: iconst_m1
    //   40: if_icmpne +20 -> 60
    //   43: aload_0
    //   44: getfield 131	com/adsdk/sdk/AdManager:customEventFullscreen	Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
    //   47: ifnonnull +13 -> 60
    //   50: aload_0
    //   51: aload_0
    //   52: getfield 116	com/adsdk/sdk/AdManager:mResponse	Lcom/adsdk/sdk/AdResponse;
    //   55: iconst_0
    //   56: invokespecial 593	com/adsdk/sdk/AdManager:notifyAdShown	(Lcom/adsdk/sdk/AdResponse;Z)V
    //   59: return
    //   60: aload_0
    //   61: getfield 116	com/adsdk/sdk/AdManager:mResponse	Lcom/adsdk/sdk/AdResponse;
    //   64: astore_2
    //   65: iload 6
    //   67: istore 4
    //   69: aload_0
    //   70: invokespecial 355	com/adsdk/sdk/AdManager:getContext	()Landroid/content/Context;
    //   73: invokestatic 596	com/adsdk/sdk/Util:isNetworkAvailable	(Landroid/content/Context;)Z
    //   76: ifeq +160 -> 236
    //   79: iload 6
    //   81: istore 4
    //   83: aload_2
    //   84: invokestatic 372	java/lang/System:currentTimeMillis	()J
    //   87: invokevirtual 597	com/adsdk/sdk/AdResponse:setTimestamp	(J)V
    //   90: iload 6
    //   92: istore 4
    //   94: aload_2
    //   95: aload_0
    //   96: getfield 344	com/adsdk/sdk/AdManager:requestedHorizontalAd	Z
    //   99: invokevirtual 600	com/adsdk/sdk/AdResponse:setHorizontalOrientationRequested	(Z)V
    //   102: iload 6
    //   104: istore 4
    //   106: new 202	java/lang/StringBuilder
    //   109: dup
    //   110: ldc_w 602
    //   113: invokespecial 207	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   116: aload_2
    //   117: invokevirtual 605	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 215	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokestatic 608	com/adsdk/sdk/Log:v	(Ljava/lang/String;)V
    //   126: iload 6
    //   128: istore 4
    //   130: aload_0
    //   131: getfield 131	com/adsdk/sdk/AdManager:customEventFullscreen	Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
    //   134: ifnonnull +68 -> 202
    //   137: iload 6
    //   139: istore 4
    //   141: new 610	android/content/Intent
    //   144: dup
    //   145: aload_1
    //   146: ldc_w 612
    //   149: invokespecial 615	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   152: astore_3
    //   153: iload 6
    //   155: istore 4
    //   157: aload_3
    //   158: ldc_w 617
    //   161: aload_2
    //   162: invokevirtual 621	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   165: pop
    //   166: iload 6
    //   168: istore 4
    //   170: aload_1
    //   171: aload_3
    //   172: iconst_0
    //   173: invokevirtual 625	android/app/Activity:startActivityForResult	(Landroid/content/Intent;I)V
    //   176: iconst_1
    //   177: istore 4
    //   179: getstatic 58	com/adsdk/sdk/AdManager:sRunningAds	Ljava/util/HashMap;
    //   182: aload_2
    //   183: invokevirtual 190	com/adsdk/sdk/AdResponse:getTimestamp	()J
    //   186: invokestatic 196	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   189: aload_0
    //   190: invokevirtual 629	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   193: pop
    //   194: aload_0
    //   195: aload_2
    //   196: iload 4
    //   198: invokespecial 593	com/adsdk/sdk/AdManager:notifyAdShown	(Lcom/adsdk/sdk/AdResponse;Z)V
    //   201: return
    //   202: iload 6
    //   204: istore 4
    //   206: aload_0
    //   207: getfield 131	com/adsdk/sdk/AdManager:customEventFullscreen	Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
    //   210: invokevirtual 634	com/adsdk/sdk/customevents/CustomEventFullscreen:showFullscreen	()V
    //   213: goto -37 -> 176
    //   216: astore_1
    //   217: iload 5
    //   219: istore 4
    //   221: ldc_w 636
    //   224: aload_1
    //   225: invokestatic 639	com/adsdk/sdk/Log:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   228: aload_0
    //   229: aload_2
    //   230: iload 5
    //   232: invokespecial 593	com/adsdk/sdk/AdManager:notifyAdShown	(Lcom/adsdk/sdk/AdResponse;Z)V
    //   235: return
    //   236: iload 6
    //   238: istore 4
    //   240: ldc_w 641
    //   243: invokestatic 220	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   246: iconst_0
    //   247: istore 4
    //   249: goto -55 -> 194
    //   252: astore_1
    //   253: aload_0
    //   254: aload_2
    //   255: iload 4
    //   257: invokespecial 593	com/adsdk/sdk/AdManager:notifyAdShown	(Lcom/adsdk/sdk/AdResponse;Z)V
    //   260: aload_1
    //   261: athrow
    //   262: astore_1
    //   263: iconst_1
    //   264: istore 4
    //   266: goto -13 -> 253
    //   269: astore_1
    //   270: iconst_1
    //   271: istore 5
    //   273: goto -56 -> 217
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	276	0	this	AdManager
    //   13	158	1	localActivity	android.app.Activity
    //   216	9	1	localException1	Exception
    //   252	9	1	localObject1	Object
    //   262	1	1	localObject2	Object
    //   269	1	1	localException2	Exception
    //   64	191	2	localAdResponse	AdResponse
    //   152	20	3	localIntent	android.content.Intent
    //   67	198	4	bool1	boolean
    //   4	268	5	bool2	boolean
    //   1	236	6	bool3	boolean
    // Exception table:
    //   from	to	target	type
    //   69	79	216	java/lang/Exception
    //   83	90	216	java/lang/Exception
    //   94	102	216	java/lang/Exception
    //   106	126	216	java/lang/Exception
    //   130	137	216	java/lang/Exception
    //   141	153	216	java/lang/Exception
    //   157	166	216	java/lang/Exception
    //   170	176	216	java/lang/Exception
    //   206	213	216	java/lang/Exception
    //   240	246	216	java/lang/Exception
    //   69	79	252	finally
    //   83	90	252	finally
    //   94	102	252	finally
    //   106	126	252	finally
    //   130	137	252	finally
    //   141	153	252	finally
    //   157	166	252	finally
    //   170	176	252	finally
    //   206	213	252	finally
    //   221	228	252	finally
    //   240	246	252	finally
    //   179	194	262	finally
    //   179	194	269	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */