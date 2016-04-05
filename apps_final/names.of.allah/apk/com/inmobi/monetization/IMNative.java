package com.inmobi.monetization;

import android.os.Handler;
import android.view.ViewGroup;
import com.inmobi.androidsdk.carb.CARB;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.monetization.internal.NativeAdRequest;
import com.inmobi.monetization.internal.NativeAdsController;
import com.inmobi.monetization.internal.TrackerView;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;
import com.inmobi.monetization.internal.objects.NativeAd;
import java.util.HashMap;
import java.util.Map;

public class IMNative
{
  TrackerView a = null;
  private String b = null;
  private String c = null;
  private String d = null;
  private String e = null;
  private IMNativeListener f = null;
  private Handler g;
  private NativeAdRequest h = null;
  private boolean i = false;
  private IMNative.a j = IMNative.a.g;
  private INativeAdListener k = new a(this);
  
  public IMNative(IMNativeListener paramIMNativeListener)
  {
    a(InMobi.getAppId(), paramIMNativeListener);
    a(IMNative.a.a);
  }
  
  public IMNative(String paramString, IMNativeListener paramIMNativeListener)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please create an instance of native ad with valid appId");
      return;
    }
    a(paramString, paramIMNativeListener);
    a(IMNative.a.a);
  }
  
  public IMNative(String paramString1, String paramString2, String paramString3)
  {
    b = paramString1;
    c = paramString2;
    d = paramString3;
  }
  
  private IMNative.a a()
  {
    try
    {
      IMNative.a locala = j;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void a(IMNative.a parama)
  {
    try
    {
      j = parama;
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  private void a(String paramString, IMNativeListener paramIMNativeListener)
  {
    if (!InternalSDKUtil.isInitializedSuccessfully())
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please initialize inmobi before requesting for native ads");
      return;
    }
    new NativeAd(null, null, null);
    e = paramString.trim();
    f = paramIMNativeListener;
    h = new NativeAdRequest(e);
    try
    {
      g = new Handler();
      return;
    }
    catch (Throwable paramString)
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please create a native ad instance in the main thread");
    }
  }
  
  public void attachToView(ViewGroup paramViewGroup)
  {
    try
    {
      if (!InternalSDKUtil.isInitializedSuccessfully())
      {
        android.util.Log.e("[InMobi]-[Monetization]", "Please initialize inmobi before requesting for native ads");
        return;
      }
      if (!i)
      {
        android.util.Log.e("[InMobi]-[Monetization]", "Please load a native ad before attach");
        return;
      }
    }
    catch (Exception paramViewGroup)
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please pass a valid view to attach");
      return;
    }
    if (paramViewGroup == null)
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please pass a valid view to attach");
      return;
    }
    if (a() == IMNative.a.d)
    {
      com.inmobi.commons.internal.Log.debug("[InMobi]-[Monetization]", "Ad is already attached");
      return;
    }
    if (a() == IMNative.a.c)
    {
      if (g == null)
      {
        android.util.Log.e("[InMobi]-[Monetization]", "Please create a native ad instance in the main thread");
        return;
      }
      g.post(new IMNative.b(this, paramViewGroup));
      a(IMNative.a.d);
      return;
    }
    android.util.Log.e("[InMobi]-[Monetization]", "Cannot attach an ad which is not ready or detached from view");
  }
  
  public void detachFromView()
  {
    if (!InternalSDKUtil.isInitializedSuccessfully())
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please initialize inmobi before requesting for native ads");
      return;
    }
    if (!i)
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please load a native ad before detach");
      return;
    }
    if (a() == IMNative.a.d)
    {
      if (g == null)
      {
        android.util.Log.e("[InMobi]-[Monetization]", "Please create a native ad instance in the main thread");
        return;
      }
      g.post(new IMNative.c(this));
      i = false;
      a(IMNative.a.e);
      return;
    }
    com.inmobi.commons.internal.Log.debug("[InMobi]-[Monetization]", "Please attach the native ad view before calling detach");
  }
  
  public String getContent()
  {
    return b;
  }
  
  public void handleClick(HashMap<String, String> paramHashMap)
  {
    if (!InternalSDKUtil.isInitializedSuccessfully())
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please initialize inmobi before requesting for native ads");
      return;
    }
    if (!i)
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Cannot handle click, native ad not loaded or detached from view");
      return;
    }
    if (a() == IMNative.a.d)
    {
      if (g == null)
      {
        android.util.Log.e("[InMobi]-[Monetization]", "Please create a native ad instance in the main thread");
        return;
      }
      g.post(new IMNative.d(this, paramHashMap));
      return;
    }
    com.inmobi.commons.internal.Log.debug("[InMobi]-[Monetization]", "Please attach to view before handling any events");
  }
  
  public void loadAd()
  {
    if (!InternalSDKUtil.isInitializedSuccessfully()) {}
    do
    {
      android.util.Log.e("[InMobi]-[Monetization]", "Please initialize inmobi before requesting for native ads");
      do
      {
        return;
      } while ((e == null) || ("".equals(e)));
      if (g == null)
      {
        android.util.Log.e("[InMobi]-[Monetization]", "Please create a native ad instance in the main thread");
        return;
      }
      CARB.getInstance().startCarb();
      InternalSDKUtil.printPublisherTestId();
      if (a() == IMNative.a.a)
      {
        com.inmobi.commons.internal.Log.debug("[InMobi]-[Monetization]", "Loading Native Ad");
        a(IMNative.a.b);
        NativeAdsController.getInstance().getAd(e, h, k);
        return;
      }
      if (a() == IMNative.a.b)
      {
        android.util.Log.e("[InMobi]-[Monetization]", "Ad is already loading. Please wait");
        return;
      }
    } while (a() == IMNative.a.g);
    com.inmobi.commons.internal.Log.debug("[InMobi]-[Monetization]", "Loading native ad");
    if (a() == IMNative.a.d) {
      detachFromView();
    }
    b = null;
    c = null;
    d = null;
    a(IMNative.a.b);
    NativeAdsController.getInstance().getAd(e, h, k);
  }
  
  public void setKeywords(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      com.inmobi.commons.internal.Log.debug("[InMobi]-[Network]-4.4.1", "Keywords cannot be null or blank.");
      return;
    }
    h.setKeywords(paramString);
  }
  
  public void setRefTagParam(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || ("".equals(paramString1.trim())))
    {
      com.inmobi.commons.internal.Log.debug("[InMobi]-[Network]-4.4.1", "Ref tag key cannot be null or blank.");
      return;
    }
    if ((paramString2 == null) || ("".equals(paramString2.trim())))
    {
      com.inmobi.commons.internal.Log.debug("[InMobi]-[Network]-4.4.1", "RefTag value cannot be null or blank.");
      return;
    }
    h.setRefTagParam(paramString1, paramString2);
  }
  
  public void setRequestParams(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty()))
    {
      com.inmobi.commons.internal.Log.debug("[InMobi]-[Network]-4.4.1", "Request params cannot be null or empty.");
      return;
    }
    h.setRequestParams(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.IMNative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */