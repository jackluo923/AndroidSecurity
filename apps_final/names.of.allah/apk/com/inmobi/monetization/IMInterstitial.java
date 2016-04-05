package com.inmobi.monetization;

import android.app.Activity;
import android.os.Handler;
import com.inmobi.androidsdk.AdRequest;
import com.inmobi.androidsdk.InterstitialView;
import com.inmobi.androidsdk.Mode;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsEndPointsConfig;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.ThinICE;
import com.inmobi.monetization.internal.LtvpRuleProcessor;
import com.inmobi.monetization.internal.LtvpRuleProcessor.ActionsRule;
import com.inmobi.monetization.internal.MonetizationUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class IMInterstitial
{
  private static LtvpRuleProcessor.ActionsRule g = null;
  InterstitialView a;
  LtvpRuleProcessor.ActionsRule b = LtvpRuleProcessor.ActionsRule.MEDIATION;
  IMInterstitial.AdMode c = IMInterstitial.AdMode.AD_NETWORK;
  boolean d = false;
  private IMInterstitialListener e;
  private IMIncentivisedListener f;
  private long h = -1L;
  private Activity i;
  private AtomicBoolean j = new AtomicBoolean(false);
  private IMInterstitial.State k = IMInterstitial.State.INIT;
  private Handler l = new Handler();
  private String m = null;
  private String n = null;
  private Map<String, String> o = null;
  
  public IMInterstitial(Activity paramActivity, long paramLong)
  {
    h = paramLong;
    a(paramActivity);
  }
  
  public IMInterstitial(Activity paramActivity, String paramString)
  {
    a(paramActivity);
    m = paramString;
  }
  
  private LtvpRuleProcessor.ActionsRule a()
  {
    return LtvpRuleProcessor.getInstance().getLtvpRuleConfig(h);
  }
  
  private void a(long paramLong)
  {
    a = new InterstitialView(i, InMobi.getAppId(), paramLong);
    a.setIMAdInterstitialListener(new IMInterstitial.e(this));
  }
  
  private void a(Activity paramActivity)
  {
    i = paramActivity;
    if (!InternalSDKUtil.isInitializedSuccessfully()) {}
    for (;;)
    {
      return;
      try
      {
        ThinICE.start(i);
        if (h == -1L) {
          continue;
        }
        a();
        return;
      }
      catch (Exception paramActivity)
      {
        for (;;)
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Cannot start ice. Activity is null");
        }
      }
    }
  }
  
  private void b()
  {
    if (!InternalSDKUtil.isInitializedSuccessfully(false)) {}
    label136:
    do
    {
      do
      {
        return;
      } while ((j.get()) || ((getState() != IMInterstitial.State.READY) && (getState() != IMInterstitial.State.INIT)));
      d();
      if (h != -1L)
      {
        b = a();
        if (g != null) {
          b = g;
        }
        switch (IMInterstitial.a.a[b.ordinal()])
        {
        default: 
          e();
          l.post(new IMInterstitial.b(this));
        }
      }
    } while (a == null);
    MonetizationUtils.updateIMAdRequest(a.getIMAdRequest());
    if (o != null) {
      a.getIMAdRequest().setRequestParams(o);
    }
    if (n != null) {
      a.getIMAdRequest().setKeywords(n);
    }
    if (c == IMInterstitial.AdMode.AD_NETWORK) {}
    for (Mode localMode = Mode.AD_NETWORK;; localMode = Mode.APP_GALLERY)
    {
      a.setMode(localMode);
      if (!d) {
        break;
      }
      a.disableHardwareAcceleration();
      return;
      c();
      break label136;
      e();
      l.post(new IMInterstitial.d(this));
      break label136;
      e();
      l.post(new IMInterstitial.c(this));
      break label136;
    }
  }
  
  private void c()
  {
    d();
    a.setAdServerUrl(AnalyticsInitializer.getConfigParams().getEndPoints().getHouseUrl());
    a.setSlotId(h);
    Map localMap = MonetizationUtils.buildLtvpRequestMap(null);
    a.getIMAdRequest().setRequestParams(localMap);
    a.setAppId(InMobi.getAppId());
  }
  
  private void d()
  {
    if (a == null) {
      a(h);
    }
    if (m != null) {
      a.setAppId(m);
    }
  }
  
  private void e()
  {
    if (a != null)
    {
      a.setIMAdInterstitialListener(null);
      a = null;
    }
  }
  
  public void destroy()
  {
    if (a != null) {
      a.destroy();
    }
  }
  
  public void disableHardwareAcceleration()
  {
    d = true;
  }
  
  public IMInterstitial.State getState()
  {
    return k;
  }
  
  public void loadInterstitial()
  {
    if (!InternalSDKUtil.isInitializedSuccessfully()) {
      return;
    }
    b();
    if ((j.get()) || ((getState() != IMInterstitial.State.READY) && (getState() != IMInterstitial.State.INIT)))
    {
      IMErrorCode localIMErrorCode = IMErrorCode.INVALID_REQUEST;
      if (j.get()) {}
      for (String str = "Interstitial load is already in progress.";; str = "Interstitial can only be loaded in init or ready state.")
      {
        localIMErrorCode.setMessage(str);
        l.post(new IMInterstitial.g(this, localIMErrorCode));
        Log.verbose("[InMobi]-[Monetization]", str);
        return;
      }
    }
    j.set(true);
    k = IMInterstitial.State.LOADING;
    Log.debug("[InMobi]-[Monetization]", "loading");
    if (a != null)
    {
      if ((m != null) || (h != -1L))
      {
        a.loadNewAd();
        return;
      }
      j.set(false);
      k = IMInterstitial.State.INIT;
      l.post(new IMInterstitial.f(this));
      return;
    }
    j.set(false);
  }
  
  public void setAppId(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "AppId cannot be null or blank.");
      return;
    }
    if (h != -1L)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "A new appId cannot be set if a slotId is already set.");
      return;
    }
    m = paramString;
  }
  
  public void setIMIncentivisedListener(IMIncentivisedListener paramIMIncentivisedListener)
  {
    f = paramIMIncentivisedListener;
  }
  
  public void setIMInterstitialListener(IMInterstitialListener paramIMInterstitialListener)
  {
    e = paramIMInterstitialListener;
  }
  
  public void setKeywords(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Keywords cannot be null or blank.");
      return;
    }
    n = paramString;
  }
  
  public void setMode(IMInterstitial.AdMode paramAdMode)
  {
    if (paramAdMode != null)
    {
      c = paramAdMode;
      return;
    }
    Log.debug("[InMobi]-[Network]-4.4.1", "AdMode cannot be null.");
  }
  
  public void setRequestParams(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Request params cannot be null or empty.");
      return;
    }
    o = paramMap;
  }
  
  public void setSlotId(long paramLong)
  {
    if (paramLong == -1L) {
      Log.debug("[InMobi]-[Network]-4.4.1", "Invalid slotId : -1");
    }
    do
    {
      return;
      if ((h == -1L) && (m != null))
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "A new slotId can be set only if a valid slotId is provided during object construction.");
        return;
      }
      h = paramLong;
    } while (a == null);
    a.setSlotId(h);
  }
  
  public void show()
  {
    if (a != null) {
      a.show();
    }
    try
    {
      ThinICE.start(i);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Cannot start ice. Activity is null");
    }
  }
  
  @Deprecated
  public void show(long paramLong)
  {
    if (a != null) {
      a.show(paramLong);
    }
    try
    {
      ThinICE.start(i);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Cannot start ice. Activity is null");
    }
  }
  
  public void stopLoading()
  {
    if (a != null) {
      a.stopLoading();
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMInterstitial
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */