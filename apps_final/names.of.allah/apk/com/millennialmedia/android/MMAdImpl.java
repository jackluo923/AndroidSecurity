package com.millennialmedia.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RelativeLayout.LayoutParams;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

abstract class MMAdImpl
  implements MMAd
{
  private static long nextAdViewId = 1L;
  AdProperties adProperties;
  String adType;
  String apid = "28911";
  WeakReference<Context> contextRef;
  MMAdImplController controller;
  boolean ignoreDensityScaling = false;
  long internalId;
  boolean isFinishing;
  long lastAdRequest;
  long linkForExpansionId;
  protected MMRequest mmRequest;
  MMWebViewClient mmWebViewClient;
  MMWebViewClient.MMWebViewClientListener mmWebViewClientListener;
  JSONObject obj;
  RequestListener requestListener;
  String userData;
  boolean xmlLayout = false;
  
  public MMAdImpl(Context paramContext)
  {
    contextRef = new WeakReference(paramContext);
    mmWebViewClientListener = new MMAdImpl.BasicMMWebViewClientListener(this);
    try
    {
      internalId = nextAdViewId;
      nextAdViewId += 1L;
      MMSDK.Log.v("Assigning MMAdImpl internal id: %d", new Object[] { Long.valueOf(internalId) });
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  static String[] getAdTypes()
  {
    return new String[] { "b", "i" };
  }
  
  void addView(MMWebView paramMMWebView, RelativeLayout.LayoutParams paramLayoutParams) {}
  
  void animateTransition() {}
  
  JSONObject getAdProperties()
  {
    if (adProperties != null) {
      return adProperties.getAdProperties();
    }
    return null;
  }
  
  public String getApid()
  {
    return apid;
  }
  
  String getCachedName()
  {
    if ((adType != null) && (apid != null)) {
      return adType + "_" + apid;
    }
    return null;
  }
  
  abstract MMAd getCallingAd();
  
  Context getContext()
  {
    if (contextRef != null) {
      return (Context)contextRef.get();
    }
    return null;
  }
  
  int getId()
  {
    return -1;
  }
  
  public boolean getIgnoresDensityScaling()
  {
    return ignoreDensityScaling;
  }
  
  public RequestListener getListener()
  {
    return requestListener;
  }
  
  public MMRequest getMMRequest()
  {
    return mmRequest;
  }
  
  MMWebViewClient getMMWebViewClient()
  {
    MMSDK.Log.d("Returning a client for user: DefaultWebViewClient, adimpl=" + this);
    return new BannerWebViewClient(mmWebViewClientListener, new MMAdImpl.MMAdImplRedirectionListenerImpl(this));
  }
  
  String getReqType()
  {
    return "fetch";
  }
  
  String getRequestCompletedAction()
  {
    return "millennialmedia.action.ACTION_FETCH_SUCCEEDED";
  }
  
  String getRequestFailedAction()
  {
    return "millennialmedia.action.ACTION_FETCH_FAILED";
  }
  
  public boolean hasCachedVideoSupport()
  {
    return true;
  }
  
  void insertUrlAdMetaValues(Map<String, String> paramMap)
  {
    Context localContext = getContext();
    paramMap.put("ar", "manual");
    paramMap.put("sdkapid", apid);
    paramMap.put("do", MMSDK.getOrientation(localContext));
    paramMap.put("olock", MMSDK.getOrientationLocked(localContext));
    if (!hasCachedVideoSupport()) {
      paramMap.put("cachedvideo", "false");
    }
    paramMap.put("reqtype", getReqType());
    if (mmRequest != null) {
      mmRequest.getUrlParams(paramMap);
    }
    if (HandShake.sharedHandShake(localContext).canRequestVideo(localContext, adType)) {
      paramMap.put("video", "true");
    }
    while (adType != null) {
      if ((adType.equals("b")) || (adType.equals("i")))
      {
        paramMap.put("at", adType);
        return;
        paramMap.put("video", "false");
      }
      else
      {
        MMSDK.Log.e("******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS (" + adType + ") **********");
        return;
      }
    }
    MMSDK.Log.e("******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********");
    paramMap.put("at", "b");
  }
  
  public boolean isBanner()
  {
    return false;
  }
  
  boolean isLifecycleObservable()
  {
    return false;
  }
  
  boolean isRefreshable()
  {
    if (MMSDK.disableAdMinRefresh)
    {
      MMSDK.Log.d("Requesting of ads disabled by server");
      return false;
    }
    long l = System.currentTimeMillis();
    int i = (int)((l - lastAdRequest) / 1000L);
    if (i >= sharedHandShakegetContextadRefreshSecs)
    {
      lastAdRequest = l;
      return true;
    }
    MMSDK.Log.d("Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds.", new Object[] { Integer.valueOf(i), Integer.valueOf(15 - i) });
    return false;
  }
  
  boolean isTransitionAnimated()
  {
    return false;
  }
  
  boolean isUpdatingMraid()
  {
    return (controller != null) && (controller.webView != null) && (!controller.webView.isExpanding);
  }
  
  void prepareTransition(Bitmap paramBitmap) {}
  
  void removeView(MMWebView paramMMWebView) {}
  
  void requestAd()
  {
    MMAdImplController.assignAdViewController(this);
    if (controller != null) {
      controller.requestAd();
    }
  }
  
  public void setApid(String paramString)
  {
    if ((HandShake.apid == null) || (HandShake.apid.equals("28911"))) {
      HandShake.apid = apid;
    }
    apid = paramString;
  }
  
  void setBackgroundColor(int paramInt) {}
  
  void setClickable(boolean paramBoolean) {}
  
  public void setIgnoresDensityScaling(boolean paramBoolean)
  {
    ignoreDensityScaling = paramBoolean;
  }
  
  public void setListener(RequestListener paramRequestListener)
  {
    requestListener = paramRequestListener;
  }
  
  public void setMMRequest(MMRequest paramMMRequest)
  {
    mmRequest = paramMMRequest;
  }
  
  public String toString()
  {
    return "AdType[(" + adType + ") InternalId(" + internalId + ") LinkedId(" + linkForExpansionId + ") isFinishing(" + isFinishing + ")]";
  }
  
  void unresizeToDefault()
  {
    if (controller != null) {
      controller.unresizeToDefault();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */