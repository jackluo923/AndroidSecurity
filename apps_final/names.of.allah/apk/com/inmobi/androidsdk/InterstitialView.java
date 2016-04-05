package com.inmobi.androidsdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.inmobi.androidsdk.bootstrapper.AppGalleryConfigParams;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.carb.CARB;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.androidsdk.impl.ConnBroadcastReciever;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.metric.Logger;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;

public class InterstitialView
{
  private static ConnBroadcastReciever o = null;
  long a = 0L;
  boolean b = true;
  private InterstitialView.State c = InterstitialView.State.INIT;
  private AdRequest d = new AdRequest();
  private Activity e;
  private String f;
  private long g = -1L;
  private InterstitialViewListener h;
  private String i;
  private long j;
  private long k;
  private UserInfo l;
  private IMWebView m;
  private String n;
  private String p = "http://i.w.inmobi.com/showad.asm";
  private long q = 0L;
  private RequestResponseManager r;
  private Mode s = Mode.AD_NETWORK;
  private boolean t;
  private HttpRequestCallback u = new f(this);
  private InterstitialView.c v = new InterstitialView.c(this);
  private IMWebView.IMWebViewListener w = new e(this);
  
  public InterstitialView(Activity paramActivity, String paramString)
  {
    a(paramActivity, paramString);
  }
  
  public InterstitialView(Activity paramActivity, String paramString, long paramLong)
  {
    g = paramLong;
    a(paramActivity, paramString);
  }
  
  private void a()
  {
    Display localDisplay = ((WindowManager)e.getSystemService("window")).getDefaultDisplay();
    int i1;
    if (l == null)
    {
      l = new UserInfo(e);
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      e.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      float f1 = density;
      i1 = (int)(WrapperFunctions.getDisplayWidth(localDisplay) / f1);
      int i2 = (int)(WrapperFunctions.getDisplayHeight(localDisplay) / f1);
      l.setScreenDensity(String.valueOf(f1));
      l.setScreenSize(i1 + "X" + i2);
    }
    try
    {
      if (l.getPhoneDefaultUserAgent().equals("")) {
        l.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(e.getApplicationContext()));
      }
      l.updateInfo(f, d);
      i1 = 14;
      if (InternalSDKUtil.isTablet(e.getApplicationContext())) {
        i1 = 17;
      }
      l.setAdUnitSlot(String.valueOf(i1));
      if (g != -1L) {
        l.setSlotId(Long.toString(g));
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "Exception occured while setting user agent" + localException);
      }
    }
  }
  
  private void a(int paramInt, AdRequest.ErrorCode paramErrorCode)
  {
    if (h == null) {
      return;
    }
    e.runOnUiThread(new InterstitialView.a(this, paramInt, paramErrorCode));
  }
  
  private void a(Activity paramActivity, String paramString)
  {
    if (paramActivity == null)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Activity cannot be null");
      return;
    }
    InternalSDKUtil.getUserAgent(paramActivity.getApplicationContext());
    try
    {
      SDKUtil.validateAdConfiguration(paramActivity);
      e = SDKUtil.getRootActivity(paramActivity);
      IMWebView.setIMAIController(IMAIController.class);
      InternalSDKUtil.printPublisherTestId();
      f = paramString;
      a();
      try
      {
        if (o == null) {
          o = new ConnBroadcastReciever();
        }
        e.getApplicationContext().registerReceiver(o, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        return;
      }
      catch (Exception paramActivity)
      {
        Log.internal("[InMobi]-[Network]-4.4.1", "Cannot register network receiver", paramActivity);
        return;
      }
    }
    catch (ConfigException localConfigException)
    {
      for (;;)
      {
        Log.internal("[InMobi]-[Network]-4.4.1", "IMConfigException occured while initializing interstitial while validating adConfig", localConfigException);
      }
    }
  }
  
  private void a(String paramString)
  {
    if (paramString != null)
    {
      if (Build.VERSION.SDK_INT <= 8) {
        paramString.replaceAll("%", "%25");
      }
      m.requestOnPageFinishedCallback(v.obtainMessage(303));
      j = System.currentTimeMillis();
      v.sendEmptyMessageDelayed(307, Initializer.getConfigParams().getRenderTimeOut());
      m.loadDataWithBaseURL("", paramString, "text/html", null, null);
      return;
    }
    c = InterstitialView.State.INIT;
    Log.debug("[InMobi]-[Network]-4.4.1", "Cannot load Ad. Invalid Ad Response");
    a(101, AdRequest.ErrorCode.INTERNAL_ERROR);
  }
  
  public void destroy()
  {
    try
    {
      if (m != null) {
        m.destroy();
      }
      m = null;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "Unable to destroy webview, or it has been destroyed already.");
      }
    }
  }
  
  public void disableHardwareAcceleration()
  {
    b = false;
    if (m != null) {
      m.disableHardwareAcceleration();
    }
  }
  
  public String getAppId()
  {
    return f;
  }
  
  public InterstitialViewListener getIMAdInterstitialListener()
  {
    return h;
  }
  
  public AdRequest getIMAdRequest()
  {
    return d;
  }
  
  public long getSlotId()
  {
    return g;
  }
  
  public InterstitialView.State getState()
  {
    return c;
  }
  
  public void loadNewAd()
  {
    Object localObject = Initializer.getConfigParams();
    t = Initializer.getLogger().startNewSample();
    Log.debug("[InMobi]-[Network]-4.4.1", " >>>> Start loading new Interstitial Ad <<<<");
    InternalSDKUtil.printPublisherTestId();
    if (!InternalSDKUtil.checkNetworkAvailibility(e.getApplicationContext()))
    {
      a(101, AdRequest.ErrorCode.NETWORK_ERROR);
      return;
    }
    if (c == InterstitialView.State.LOADING)
    {
      a(101, AdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
      return;
    }
    if (c == InterstitialView.State.ACTIVE)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Interstitial ad is in ACTIVE state. Try again after sometime.");
      a(101, AdRequest.ErrorCode.INVALID_REQUEST);
      return;
    }
    c = InterstitialView.State.LOADING;
    CARB.getInstance().startCarb();
    a();
    a = System.currentTimeMillis();
    k = System.currentTimeMillis();
    v.sendEmptyMessageDelayed(306, ((ConfigParams)localObject).getFetchTimeOut());
    r = new RequestResponseManager();
    if (s == Mode.APP_GALLERY) {}
    for (localObject = ((ConfigParams)localObject).getAppAppGalleryConfigParams().getUrl();; localObject = p)
    {
      r.asyncRequestSecuredAd(l, RequestResponseManager.ActionType.AdRequest_Interstitial, (String)localObject, u);
      return;
    }
  }
  
  public void loadNewAd(AdRequest paramAdRequest)
  {
    d = paramAdRequest;
    loadNewAd();
  }
  
  public void setAdServerUrl(String paramString)
  {
    p = paramString;
  }
  
  public void setAppId(String paramString)
  {
    f = paramString;
  }
  
  public void setIMAdInterstitialListener(InterstitialViewListener paramInterstitialViewListener)
  {
    h = paramInterstitialViewListener;
  }
  
  public void setIMAdRequest(AdRequest paramAdRequest)
  {
    d = paramAdRequest;
  }
  
  public void setMode(Mode paramMode)
  {
    s = paramMode;
  }
  
  public void setSlotId(long paramLong)
  {
    g = paramLong;
  }
  
  public void show()
  {
    try
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Showing the Interstitial Ad. ");
      if (c != InterstitialView.State.READY)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "Interstitial ad is not in the 'READY' state. Current state: " + c);
        return;
      }
      if (i != null)
      {
        a(102, null);
        m.requestOnInterstitialClosed(v.obtainMessage(304));
        m.requestOnInterstitialShown(v.obtainMessage(305));
        Intent localIntent = new Intent(e, IMBrowserActivity.class);
        localIntent.putExtra("extra_browser_type", 101);
        localIntent.putExtra("isAnimationEnabledOnDimiss", q);
        IMBrowserActivity.setWebview(m);
        IMBrowserActivity.setOriginalActivity(e);
        e.startActivity(localIntent);
        return;
      }
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Error showing ad ", localException);
    }
  }
  
  public void show(long paramLong)
  {
    q = paramLong;
    show();
  }
  
  public void stopLoading()
  {
    if (v.hasMessages(306))
    {
      v.removeMessages(306);
      v.sendEmptyMessage(306);
    }
    while (!v.hasMessages(307)) {
      return;
    }
    v.removeMessages(307);
    v.sendEmptyMessage(307);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.InterstitialView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */