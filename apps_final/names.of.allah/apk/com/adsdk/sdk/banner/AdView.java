package com.adsdk.sdk.banner;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.location.Location;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.adsdk.sdk.AdListener;
import com.adsdk.sdk.AdRequest;
import com.adsdk.sdk.AdResponse;
import com.adsdk.sdk.Gender;
import com.adsdk.sdk.Log;
import com.adsdk.sdk.Util;
import com.adsdk.sdk.customevents.CustomEvent;
import com.adsdk.sdk.customevents.CustomEventBanner;
import com.adsdk.sdk.customevents.CustomEventBanner.CustomEventBannerListener;
import com.adsdk.sdk.customevents.CustomEventBannerFactory;
import com.adsdk.sdk.mraid.MraidView;
import com.adsdk.sdk.mraid.MraidView.MraidListener;
import java.io.InputStream;
import java.util.List;
import java.util.Timer;

public class AdView
  extends FrameLayout
{
  private static final int CUSTOM_EVENT_RELOAD_INTERVAL = 30;
  public static final int LIVE = 0;
  public static final int TEST = 1;
  private FrameLayout MRAIDFrame;
  private AdListener adListener;
  private int adspaceHeight;
  private boolean adspaceStrict;
  private int adspaceWidth;
  private boolean animation;
  private CustomEventBanner.CustomEventBannerListener customAdListener;
  private CustomEventBanner customEventBanner;
  private View customEventBannerView;
  private boolean includeLocation = false;
  private boolean isInternalBrowser = false;
  private List<String> keywords;
  private Thread loadContentThread;
  private BannerAdView mBannerView;
  private Context mContext = null;
  protected boolean mIsInForeground;
  private MraidView mMRAIDView;
  private BroadcastReceiver mScreenStateReceiver;
  private String publisherId;
  private Timer reloadTimer;
  private AdRequest request;
  private String requestURL = null;
  private AdResponse response;
  private final Runnable showContent = new AdView.1(this);
  private int telephonyPermission;
  private final Handler updateHandler = new Handler();
  private int userAge;
  private Gender userGender;
  private InputStream xml;
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mContext = paramContext;
    int i;
    if (paramAttributeSet != null)
    {
      int j = paramAttributeSet.getAttributeCount();
      i = 0;
      if (i < j) {}
    }
    else
    {
      initialize(paramContext);
      return;
    }
    String str = paramAttributeSet.getAttributeName(i);
    if (str.equals("publisherId")) {
      publisherId = paramAttributeSet.getAttributeValue(i);
    }
    for (;;)
    {
      i += 1;
      break;
      if (str.equals("request_url")) {
        requestURL = paramAttributeSet.getAttributeValue(i);
      } else if (str.equals("animation")) {
        animation = paramAttributeSet.getAttributeBooleanValue(i, false);
      } else if (str.equals("location")) {
        includeLocation = paramAttributeSet.getAttributeBooleanValue(i, false);
      } else if (str.equals("adspaceStrict")) {
        adspaceStrict = paramAttributeSet.getAttributeBooleanValue(i, false);
      } else if (str.equals("adspaceWidth")) {
        adspaceWidth = paramAttributeSet.getAttributeIntValue(i, 0);
      } else if (str.equals("adspaceHeight")) {
        adspaceHeight = paramAttributeSet.getAttributeIntValue(i, 0);
      }
    }
  }
  
  public AdView(Context paramContext, InputStream paramInputStream, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext);
    xml = paramInputStream;
    requestURL = paramString1;
    mContext = paramContext;
    publisherId = paramString2;
    includeLocation = paramBoolean1;
    animation = paramBoolean2;
    initialize(paramContext);
  }
  
  public AdView(Context paramContext, String paramString1, InputStream paramInputStream, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramContext, paramInputStream, paramString1, paramString2, paramBoolean1, paramBoolean2);
  }
  
  public AdView(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, false, false);
  }
  
  public AdView(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramContext, paramString1, paramString2, paramBoolean1, paramBoolean2, null);
  }
  
  public AdView(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, AdListener paramAdListener)
  {
    super(paramContext);
    requestURL = paramString1;
    mContext = paramContext;
    publisherId = paramString2;
    includeLocation = paramBoolean1;
    animation = paramBoolean2;
    adListener = paramAdListener;
    paramString1 = new StringBuilder("AdListener: ");
    paramBoolean1 = bool;
    if (adListener == null) {
      paramBoolean1 = true;
    }
    Log.d(paramBoolean1);
    initialize(paramContext);
  }
  
  private void addMRAIDBannerView()
  {
    float f = mContext.getResources().getDisplayMetrics().density;
    if ((adspaceHeight != 0) && (adspaceWidth != 0))
    {
      addView(MRAIDFrame, new FrameLayout.LayoutParams((int)(adspaceWidth * f + 0.5F), (int)(f * adspaceHeight + 0.5F)));
      return;
    }
    addView(MRAIDFrame, new FrameLayout.LayoutParams(-2, (int)(f * 50.0F + 0.5F)));
  }
  
  private CustomEventBanner.CustomEventBannerListener createCustomAdListener(AdListener paramAdListener)
  {
    return new AdView.7(this, paramAdListener);
  }
  
  private MraidView.MraidListener createMraidListener(AdListener paramAdListener)
  {
    return new AdView.8(this, paramAdListener);
  }
  
  private AdRequest getRequest()
  {
    Object localObject;
    if (request == null)
    {
      request = new AdRequest();
      if (telephonyPermission == 0)
      {
        localObject = (TelephonyManager)getContext().getSystemService("phone");
        request.setDeviceId(((TelephonyManager)localObject).getDeviceId());
        request.setAndroidIMEI(((TelephonyManager)localObject).getDeviceId());
        request.setAndroidID(Util.getDeviceId(mContext));
        request.setAndroidAdId(Util.getAndroidAdId());
        request.setPublisherId(publisherId);
        request.setUserAgent(Util.getDefaultUserAgentString(mContext));
        request.setUserAgent2(Util.buildUserAgent());
        Log.d("ADSDK", "WebKit UserAgent:" + request.getUserAgent());
        Log.d("ADSDK", "SDK built UserAgent:" + request.getUserAgent2());
      }
    }
    else
    {
      request.setGender(userGender);
      request.setUserAge(userAge);
      request.setKeywords(keywords);
      localObject = null;
      if (includeLocation) {
        localObject = Util.getLocation(mContext);
      }
      if (localObject == null) {
        break label359;
      }
      Log.d("ADSDK", "location is longitude: " + ((Location)localObject).getLongitude() + ", latitude: " + ((Location)localObject).getLatitude());
      request.setLatitude(((Location)localObject).getLatitude());
      request.setLongitude(((Location)localObject).getLongitude());
    }
    for (;;)
    {
      request.setAdspaceHeight(adspaceHeight);
      request.setAdspaceWidth(adspaceWidth);
      request.setAdspaceStrict(adspaceStrict);
      request.setRequestURL(requestURL);
      return request;
      request.setDeviceId(Util.getDeviceId(mContext));
      break;
      label359:
      request.setLatitude(0.0D);
      request.setLongitude(0.0D);
    }
  }
  
  private void initialize(Context paramContext)
  {
    Log.LOGGING_ENABLED = Log.isLoggingEnabled(mContext);
    Log.d("ADSDK", "SDK Version:5.2.0");
    registerScreenStateBroadcastReceiver();
    telephonyPermission = paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE");
    Util.prepareAndroidAdId(paramContext);
  }
  
  private void loadContent()
  {
    Log.d("ADSDK", "load content");
    if (loadContentThread == null)
    {
      loadContentThread = new Thread(new AdView.3(this));
      loadContentThread.setUncaughtExceptionHandler(new AdView.4(this));
      loadContentThread.start();
    }
  }
  
  private void loadCustomEventBanner()
  {
    customEventBanner = null;
    for (;;)
    {
      if ((response.getCustomEvents().isEmpty()) || (customEventBanner != null)) {
        return;
      }
      try
      {
        CustomEvent localCustomEvent = (CustomEvent)response.getCustomEvents().get(0);
        response.getCustomEvents().remove(localCustomEvent);
        customEventBanner = CustomEventBannerFactory.create(localCustomEvent.getClassName());
        if ((adspaceHeight == 0) || (adspaceWidth == 0)) {
          break label133;
        }
        customEventBanner.loadBanner(mContext, customAdListener, localCustomEvent.getOptionalParameter(), localCustomEvent.getPixelUrl(), adspaceWidth, adspaceHeight);
      }
      catch (Exception localException)
      {
        customEventBanner = null;
        Log.d("Failed to create Custom Event Banner.");
      }
      continue;
      label133:
      customEventBanner.loadBanner(mContext, customAdListener, localException.getOptionalParameter(), localException.getPixelUrl(), 300, 50);
    }
  }
  
  private void notifyLoadAdFailed(Throwable paramThrowable)
  {
    updateHandler.post(new AdView.6(this, paramThrowable));
  }
  
  private void notifyNoAd()
  {
    updateHandler.post(new AdView.5(this));
  }
  
  private void registerScreenStateBroadcastReceiver()
  {
    mScreenStateReceiver = new AdView.2(this);
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    mContext.registerReceiver(mScreenStateReceiver, localIntentFilter);
  }
  
  private void showContent()
  {
    if (mBannerView != null)
    {
      removeView(mBannerView);
      mBannerView = null;
    }
    if (mMRAIDView != null)
    {
      mMRAIDView.destroy();
      removeView(mMRAIDView);
      mMRAIDView = null;
    }
    if (MRAIDFrame != null)
    {
      removeView(MRAIDFrame);
      MRAIDFrame = null;
    }
    if (customEventBannerView != null) {
      removeView(customEventBannerView);
    }
    if ((response.getType() == 1) || (response.getType() == 0))
    {
      mBannerView = new BannerAdView(mContext, response, adspaceWidth, adspaceHeight, animation, adListener);
      if (response.getCustomEvents().isEmpty()) {
        addView(mBannerView);
      }
    }
    if (response.getType() == 4)
    {
      mMRAIDView = new MraidView(mContext);
      MRAIDFrame = new FrameLayout(mContext);
      MRAIDFrame.addView(mMRAIDView);
      if (response.getCustomEvents().isEmpty()) {
        addMRAIDBannerView();
      }
      mMRAIDView.setMraidListener(createMraidListener(adListener));
      mMRAIDView.loadHtmlData(response.getText());
    }
    if ((response.getType() == 2) && (response.getCustomEvents().isEmpty())) {
      notifyNoAd();
    }
    if (!response.getCustomEvents().isEmpty())
    {
      loadCustomEventBanner();
      if (customEventBanner != null) {
        break label343;
      }
      response.getCustomEvents().clear();
      customAdListener.onBannerFailed();
    }
    for (;;)
    {
      startReloadTimer();
      return;
      label343:
      response.setRefresh(30);
    }
  }
  
  private void startReloadTimer()
  {
    Log.d("ADSDK", "start reload timer");
    if ((reloadTimer == null) || (response.getRefresh() <= 0)) {
      return;
    }
    int i = response.getRefresh() * 1000;
    Log.d("ADSDK", "set timer: " + i);
    ReloadTask localReloadTask = new ReloadTask(this);
    reloadTimer.schedule(localReloadTask, i);
  }
  
  private void unregisterScreenStateBroadcastReceiver()
  {
    try
    {
      mContext.unregisterReceiver(mScreenStateReceiver);
      return;
    }
    catch (Exception localException)
    {
      Log.d("Failed to unregister screen state broadcast receiver (never registered).");
    }
  }
  
  protected void finalize()
  {
    unregisterScreenStateBroadcastReceiver();
    super.finalize();
  }
  
  public int getRefreshRate()
  {
    if (response != null) {
      return response.getRefresh();
    }
    return -1;
  }
  
  public boolean isInternalBrowser()
  {
    return isInternalBrowser;
  }
  
  public void loadNextAd()
  {
    Log.d("ADSDK", "load next ad");
    loadContent();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    mContext.registerReceiver(mScreenStateReceiver, localIntentFilter);
    Log.v("ADSDK", "onAttachedToWindow");
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    unregisterScreenStateBroadcastReceiver();
    Log.v("ADSDK", "onDetachedFromWindow");
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 0)
    {
      mIsInForeground = true;
      resume();
    }
    for (;;)
    {
      Log.d("ADSDK", "onWindowVisibilityChanged: " + paramInt);
      return;
      mIsInForeground = false;
      pause();
    }
  }
  
  public void pause()
  {
    if (reloadTimer != null) {}
    try
    {
      Log.d("ADSDK", "cancel reload timer");
      reloadTimer.cancel();
      reloadTimer = null;
      return;
    }
    catch (Exception localException)
    {
      Log.e("ADSDK", "unable to cancel reloadTimer", localException);
    }
  }
  
  public void release()
  {
    unregisterScreenStateBroadcastReceiver();
    if (mMRAIDView != null) {
      mMRAIDView.destroy();
    }
  }
  
  public void resume()
  {
    if (reloadTimer != null)
    {
      reloadTimer.cancel();
      reloadTimer = null;
    }
    reloadTimer = new Timer();
    Log.d("ADSDK", "response: " + response);
    if ((response != null) && (response.getRefresh() > 0)) {
      startReloadTimer();
    }
    while ((response != null) && ((mMRAIDView != null) || (mBannerView != null))) {
      return;
    }
    loadContent();
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    adListener = paramAdListener;
    if (mMRAIDView != null) {
      mMRAIDView.setMraidListener(createMraidListener(paramAdListener));
    }
    if (mBannerView != null) {
      mBannerView.setAdListener(paramAdListener);
    }
    customAdListener = createCustomAdListener(adListener);
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
  
  public void setInternalBrowser(boolean paramBoolean)
  {
    isInternalBrowser = paramBoolean;
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
 * Qualified Name:     com.adsdk.sdk.banner.AdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */