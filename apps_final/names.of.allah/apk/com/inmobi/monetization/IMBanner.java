package com.inmobi.monetization;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.AdRequest;
import com.inmobi.androidsdk.BannerView;
import com.inmobi.androidsdk.BannerViewListener;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.commons.AnimationType;
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
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class IMBanner
  extends RelativeLayout
{
  public static final int INMOBI_AD_UNIT_120X600 = 13;
  public static final int INMOBI_AD_UNIT_300X250 = 10;
  public static final int INMOBI_AD_UNIT_320X48 = 9;
  public static final int INMOBI_AD_UNIT_320X50 = 15;
  public static final int INMOBI_AD_UNIT_468X60 = 12;
  public static final int INMOBI_AD_UNIT_728X90 = 11;
  public static final int REFRESH_INTERVAL_MINIMUM = 0;
  public static final int REFRESH_INTERVAL_OFF = -1;
  private static LtvpRuleProcessor.ActionsRule j = null;
  BannerView a = null;
  LtvpRuleProcessor.ActionsRule b = LtvpRuleProcessor.ActionsRule.MEDIATION;
  BannerViewListener c = null;
  Activity d;
  long e = -1L;
  int f = 15;
  AnimationType g = null;
  boolean h = false;
  private AtomicBoolean i = new AtomicBoolean(false);
  private IMBannerListener k;
  private AtomicBoolean l = new AtomicBoolean(false);
  private String m = null;
  private String n = null;
  private String o = null;
  private Map<String, String> p = null;
  private String q = null;
  private int r = 0;
  private int s = 0;
  private IMBanner.a t = new IMBanner.a(this);
  
  public IMBanner(Activity paramActivity, long paramLong)
  {
    super(paramActivity);
    d = paramActivity;
    e = paramLong;
    a();
  }
  
  public IMBanner(Activity paramActivity, String paramString, int paramInt)
  {
    super(paramActivity);
    d = paramActivity;
    f = paramInt;
    q = paramString;
    a();
  }
  
  public IMBanner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d = ((Activity)paramContext);
    try
    {
      e = Long.parseLong(paramAttributeSet.getAttributeValue(null, "slotId"));
      try
      {
        f = Integer.parseInt(paramAttributeSet.getAttributeValue(null, "adSize"));
        try
        {
          q = paramAttributeSet.getAttributeValue(null, "appId");
          if ((e == -1L) && (q == null)) {
            Log.debug("[InMobi]-[Monetization]", "slotId and appId is missing in IMBanner xml layout. Please integrate using appId or slotId. Refer integration guidelines for more details.");
          }
          a();
          return;
        }
        catch (Exception paramContext)
        {
          for (;;) {}
        }
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  private void a()
  {
    setRefreshInterval(Initializer.getConfigParams().getDefaultRefreshRate());
    if (!InternalSDKUtil.isInitializedSuccessfully()) {}
    for (;;)
    {
      return;
      try
      {
        ThinICE.start(d);
        if (e == -1L) {
          continue;
        }
        b();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Cannot start ice. Activity is null");
        }
      }
    }
  }
  
  private void a(int paramInt)
  {
    r = paramInt;
    if (paramInt == -1)
    {
      t.removeMessages(100);
      return;
    }
    int i1 = Initializer.getConfigParams().getMinimumRefreshRate();
    if (paramInt < i1) {
      Log.debug("[InMobi]-[Network]-4.4.1", "Refresh Interval cannot be less than " + i1 + " seconds. Setting refresh rate to " + i1);
    }
    h();
  }
  
  private void a(boolean paramBoolean)
  {
    if (!InternalSDKUtil.isInitializedSuccessfully()) {
      return;
    }
    c();
    Object localObject2;
    Object localObject1;
    if ((i.get()) || (l.get()))
    {
      localObject2 = IMErrorCode.INVALID_REQUEST;
      if (i.get()) {}
      for (localObject1 = "Banner load is already in progress.";; localObject1 = "Banner click in progress.")
      {
        ((IMErrorCode)localObject2).setMessage((String)localObject1);
        t.post(new IMBanner.d(this, (IMErrorCode)localObject2));
        Log.verbose("[InMobi]-[Monetization]", (String)localObject1);
        h();
        return;
      }
    }
    i.set(true);
    t.removeMessages(100);
    if (a != null)
    {
      localObject2 = a.getIMAdRequest().getRequestParams();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new HashMap();
      }
      if (paramBoolean) {
        ((Map)localObject1).put("u-rt", "0");
      }
      for (;;)
      {
        a.getIMAdRequest().setRequestParams((Map)localObject1);
        if ((q == null) && (e == -1L)) {
          break;
        }
        a.loadNewAd();
        return;
        ((Map)localObject1).put("u-rt", "1");
      }
      i.set(false);
      t.post(new IMBanner.e(this));
      return;
    }
    i.set(false);
  }
  
  private LtvpRuleProcessor.ActionsRule b()
  {
    return LtvpRuleProcessor.getInstance().getLtvpRuleConfig(e);
  }
  
  private void c()
  {
    if (!InternalSDKUtil.isInitializedSuccessfully(false)) {}
    while ((i.get()) || (l.get())) {
      return;
    }
    e();
    if (e != -1L)
    {
      b = b();
      if (j != null) {
        b = j;
      }
      switch (IMBanner.f.a[b.ordinal()])
      {
      default: 
        g();
        t.post(new IMBanner.g(this));
      }
    }
    while (a != null)
    {
      MonetizationUtils.updateIMAdRequest(a.getIMAdRequest());
      if ((n != null) && (o != null)) {
        a.setRefTagParam(n, o);
      }
      if (p != null) {
        a.getIMAdRequest().setRequestParams(p);
      }
      if (m != null) {
        a.getIMAdRequest().setKeywords(m);
      }
      a.setAdSize(f);
      if (g != null) {
        a.setAnimationType(g);
      }
      if (!h) {
        break;
      }
      a.disableHardwareAcceleration();
      return;
      d();
      continue;
      g();
      t.post(new IMBanner.b(this));
      continue;
      g();
      t.post(new IMBanner.c(this));
    }
  }
  
  private void d()
  {
    a.setAdServerUrl(AnalyticsInitializer.getConfigParams().getEndPoints().getHouseUrl());
    a.setSlotId(e);
    Map localMap = MonetizationUtils.buildLtvpRequestMap(this);
    a.getIMAdRequest().setRequestParams(localMap);
    a.setAppId(InMobi.getAppId());
  }
  
  private void e()
  {
    if (a == null) {
      f();
    }
    if (q != null) {
      a.setAppId(q);
    }
  }
  
  private void f()
  {
    a = new BannerView(d, f, InMobi.getAppId(), -1L);
    MonetizationUtils.updateIMAdRequest(a.getIMAdRequest());
    c = new IMBanner.h(this);
    a.setIMAdListener(c);
    addView(a);
  }
  
  private void g()
  {
    if (a != null)
    {
      a.destroy();
      removeView(a);
      a = null;
      c = null;
    }
  }
  
  private void h()
  {
    t.removeMessages(100);
    if (r == -1) {
      return;
    }
    int i1 = Initializer.getConfigParams().getMinimumRefreshRate();
    if (r < i1)
    {
      t.sendEmptyMessageDelayed(100, i1 * 1000);
      return;
    }
    t.sendEmptyMessageDelayed(100, r * 1000);
  }
  
  public final void destroy()
  {
    if (a != null) {
      a.destroy();
    }
  }
  
  public final void disableHardwareAcceleration()
  {
    h = true;
  }
  
  public final void loadBanner()
  {
    a(true);
  }
  
  protected final void onWindowVisibilityChanged(int paramInt)
  {
    if (paramInt == 0) {
      try
      {
        ThinICE.start(d);
        a(s);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.internal("[InMobi]-[Network]-4.4.1", "Cannot start ice. Activity is null");
        }
      }
    }
    a(-1);
  }
  
  public final void setAdSize(int paramInt)
  {
    f = paramInt;
  }
  
  public final void setAnimationType(AnimationType paramAnimationType)
  {
    g = paramAnimationType;
  }
  
  public final void setAppId(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "AppId cannot be null or blank.");
      return;
    }
    if (e != -1L)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "A new appId cannot be set if a slotId is already set.");
      return;
    }
    q = paramString;
  }
  
  public final void setIMBannerListener(IMBannerListener paramIMBannerListener)
  {
    k = paramIMBannerListener;
  }
  
  public final void setKeywords(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Keywords cannot be null or blank.");
      return;
    }
    m = paramString;
  }
  
  public final void setRefTagParam(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || ("".equals(paramString1.trim())))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Ref tag key cannot be null or blank.");
      return;
    }
    if ((paramString2 == null) || ("".equals(paramString2.trim())))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "RefTag value cannot be null or blank.");
      return;
    }
    n = paramString1;
    o = paramString2;
  }
  
  public final void setRefreshInterval(int paramInt)
  {
    s = paramInt;
    a(paramInt);
  }
  
  public final void setRequestParams(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Request params cannot be null or empty.");
      return;
    }
    p = paramMap;
  }
  
  public final void setSlotId(long paramLong)
  {
    if (paramLong == -1L) {
      Log.debug("[InMobi]-[Network]-4.4.1", "Invalid slotId : -1");
    }
    do
    {
      return;
      if ((e == -1L) && (q != null))
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "A new slotId can be set only if a valid slotId is provided during object construction.");
        return;
      }
      e = paramLong;
    } while (a == null);
    a.setSlotId(e);
  }
  
  public final void stopLoading()
  {
    if (a != null) {
      a.stopLoading();
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */