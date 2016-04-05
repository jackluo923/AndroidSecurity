package com.millennialmedia.android;

import android.content.Context;
import android.graphics.Paint;
import android.os.Build;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.millennialmedia.google.gson.Gson;
import java.lang.reflect.Method;
import java.util.Map;
import org.json.JSONObject;

class MMWebView
  extends WebView
{
  static final String JS_INTERFACE_NAME = "interface";
  static final String PROPERTY_BANNER_TYPE = "PROPERTY_BANNER_TYPE";
  static final String PROPERTY_EXPANDING = "PROPERTY_EXPANDING";
  static final String PROPERTY_STATE = "PROPERTY_STATE";
  long creatorAdImplId;
  String currentUrl;
  volatile boolean isExpanding;
  volatile boolean isUserClosedResize;
  private MMWebView.MyWebChromeClient mWebChromeClient = new MMWebView.MyWebChromeClient(this, null);
  volatile String mraidState;
  int oldHeight = -50;
  int oldWidth = -50;
  volatile boolean requiresPreAdSizeFix;
  final GestureDetector tapDetector;
  final String userAgent;
  
  public MMWebView(Context paramContext, long paramLong)
  {
    super(paramContext);
    MMSDK.Log.d("Setting isExpanding in constructor to " + isExpanding);
    setWillNotDraw(false);
    setHorizontalScrollBarEnabled(false);
    setVerticalScrollBarEnabled(false);
    setOnTouchListener(new MMWebView.1(this));
    mraidState = "loading";
    creatorAdImplId = paramLong;
    MMSDK.Log.v("Assigning WebView internal id: %d", new Object[] { Long.valueOf(creatorAdImplId) });
    setId((int)(15063L + creatorAdImplId));
    if (sharedHandShakegetContexthardwareAccelerationEnabled) {
      enableHardwareAcceleration();
    }
    for (;;)
    {
      setMediaPlaybackRequiresUserGesture(false);
      setWebChromeClient(mWebChromeClient);
      WebSettings localWebSettings = getSettings();
      userAgent = (localWebSettings.getUserAgentString() + Build.MODEL);
      localWebSettings.setJavaScriptEnabled(true);
      localWebSettings.setCacheMode(-1);
      localWebSettings.setDefaultTextEncodingName("UTF-8");
      localWebSettings.setLoadWithOverviewMode(true);
      localWebSettings.setGeolocationEnabled(true);
      localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
      tapDetector = new GestureDetector(paramContext, new MMWebView.2(this, paramContext));
      return;
      disableAllAcceleration();
    }
  }
  
  private boolean canScroll()
  {
    return getParent() instanceof MMAdView;
  }
  
  private boolean hasDefaultResizeParams()
  {
    return (oldWidth == -50) && (oldHeight == -50);
  }
  
  void animateTransition(MMAdImpl arg1)
  {
    try
    {
      synchronized (new MMWebView.5(this, ???))
      {
        MMSDK.runOnUiThread(???);
        ???.wait();
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      ???.notify();
    }
  }
  
  void disableAllAcceleration()
  {
    try
    {
      WebView.class.getMethod("setLayerType", new Class[] { Integer.TYPE, Paint.class }).invoke(this, new Object[] { Integer.valueOf(0), null });
      MMSDK.Log.d("Remove allAcceleration");
      return;
    }
    catch (Exception localException) {}
  }
  
  void enableHardwareAcceleration()
  {
    try
    {
      WebView.class.getMethod("setLayerType", new Class[] { Integer.TYPE, Paint.class }).invoke(this, new Object[] { Integer.valueOf(2), null });
      MMSDK.Log.d("Enabled hardwareAcceleration");
      return;
    }
    catch (Exception localException) {}
  }
  
  void enableSoftwareAcceleration()
  {
    try
    {
      WebView.class.getMethod("setLayerType", new Class[] { Integer.TYPE, Paint.class }).invoke(this, new Object[] { Integer.valueOf(1), null });
      MMSDK.Log.d("Remove allAcceleration");
      return;
    }
    catch (Exception localException) {}
  }
  
  /* Error */
  android.app.Activity getActivity()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 208	com/millennialmedia/android/MMWebView:getParent	()Landroid/view/ViewParent;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +38 -> 46
    //   11: aload_1
    //   12: instanceof 265
    //   15: ifeq +31 -> 46
    //   18: aload_1
    //   19: checkcast 265	android/view/ViewGroup
    //   22: invokevirtual 266	android/view/ViewGroup:getContext	()Landroid/content/Context;
    //   25: astore_1
    //   26: aload_1
    //   27: ifnull +19 -> 46
    //   30: aload_1
    //   31: instanceof 268
    //   34: ifeq +12 -> 46
    //   37: aload_1
    //   38: checkcast 268	com/millennialmedia/android/MMActivity
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: areturn
    //   46: aconst_null
    //   47: astore_1
    //   48: goto -6 -> 42
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	MMWebView
    //   6	42	1	localObject1	Object
    //   51	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	51	finally
    //   11	26	51	finally
    //   30	42	51	finally
  }
  
  /* Error */
  AdViewOverlayView getAdViewOverlayView()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 208	com/millennialmedia/android/MMWebView:getParent	()Landroid/view/ViewParent;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +19 -> 27
    //   11: aload_1
    //   12: instanceof 272
    //   15: ifeq +12 -> 27
    //   18: aload_1
    //   19: checkcast 272	com/millennialmedia/android/AdViewOverlayView
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: areturn
    //   27: aconst_null
    //   28: astore_1
    //   29: goto -6 -> 23
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	MMWebView
    //   6	23	1	localObject1	Object
    //   32	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	32	finally
    //   11	23	32	finally
  }
  
  /* Error */
  MMAdView getBanner()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 208	com/millennialmedia/android/MMWebView:getParent	()Landroid/view/ViewParent;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +19 -> 27
    //   11: aload_1
    //   12: instanceof 210
    //   15: ifeq +12 -> 27
    //   18: aload_1
    //   19: checkcast 210	com/millennialmedia/android/MMAdView
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: areturn
    //   27: aconst_null
    //   28: astore_1
    //   29: goto -6 -> 23
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	MMWebView
    //   6	23	1	localObject1	Object
    //   32	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	32	finally
    //   11	23	32	finally
  }
  
  MMAdView getMMAdView()
  {
    if ((getParent() instanceof MMAdView)) {
      return (MMAdView)getParent();
    }
    return null;
  }
  
  MMLayout getMMLayout()
  {
    if ((getParent() instanceof MMLayout)) {
      return (MMLayout)getParent();
    }
    return null;
  }
  
  String getUserAgent()
  {
    return userAgent;
  }
  
  boolean isCurrentParent(long paramLong)
  {
    ViewParent localViewParent = getParent();
    if (localViewParent == null) {
      return false;
    }
    MMSDK.Log.w("Id check for parent: " + paramLong + " versus " + adImpl.internalId);
    return paramLong == adImpl.internalId;
  }
  
  boolean isMraidResized()
  {
    return "resized".equals(mraidState);
  }
  
  boolean isOriginalUrl(String paramString)
  {
    return ((!TextUtils.isEmpty(currentUrl)) && (paramString.equals(currentUrl + "?"))) || (paramString.equals(currentUrl + "#"));
  }
  
  boolean isParentBannerAd()
  {
    if (getParent() != null) {
      return (ViewGroup)getParent() instanceof MMAdView;
    }
    return false;
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    currentUrl = paramString1;
    super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public void loadUrl(String paramString)
  {
    if (paramString.startsWith("http")) {
      currentUrl = paramString;
    }
    MMSDK.Log.v("loadUrl @@" + paramString);
    super.loadUrl(paramString);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = getMeasuredHeight();
    if (paramInt1 == 0) {
      paramInt1 = paramInt2;
    }
    for (;;)
    {
      if (requiresPreAdSizeFix)
      {
        setMeasuredDimension(1, 1);
        return;
      }
      setMeasuredDimension(i, paramInt1);
      return;
    }
  }
  
  public void onPauseWebViewVideo()
  {
    try
    {
      WebView.class.getMethod("onPause", new Class[0]).invoke(this, new Object[0]);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void onResumeWebViewVideo()
  {
    try
    {
      WebView.class.getMethod("onResume", new Class[0]).invoke(this, new Object[0]);
      return;
    }
    catch (Exception localException) {}
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = new int[2];
    getLocationInWindow((int[])localObject);
    localObject = new DTOAdViewLayout(localObject[0], localObject[1], getWidth(), getHeight());
    loadUrl("javascript:MMJS.sdk.setAdSize(" + new Gson().toJson(localObject) + ");");
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    requestFocus();
    tapDetector.onTouchEvent(paramMotionEvent);
    if (paramMotionEvent.getAction() == 1) {
      MMSDK.Log.v("Ad clicked: action=%d x=%f y=%f", new Object[] { Integer.valueOf(paramMotionEvent.getAction()), Float.valueOf(paramMotionEvent.getX()), Float.valueOf(paramMotionEvent.getY()) });
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  void removeFromParent()
  {
    ViewParent localViewParent = getParent();
    if ((localViewParent != null) && ((localViewParent instanceof ViewGroup))) {
      ((ViewGroup)localViewParent).removeView(this);
    }
  }
  
  void setAdProperties(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      loadUrl("javascript:MMJS.sdk.setAdProperties(" + paramJSONObject + ");");
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    if (paramInt == 0) {
      enableSoftwareAcceleration();
    }
    super.setBackgroundColor(paramInt);
  }
  
  void setMediaPlaybackRequiresUserGesture(boolean paramBoolean)
  {
    try
    {
      WebView.class.getMethod("setMediaPlaybackRequiresUserGesture", new Class[] { Boolean.TYPE }).invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException) {}
  }
  
  void setMraidDefault()
  {
    loadUrl("javascript:MMJS.sdk.setState('default')");
    mraidState = "default";
  }
  
  void setMraidExpanded()
  {
    MMSDK.Log.d("Changing state to EXPANDED for ---- " + toString() + "---- of creatorId ---" + creatorAdImplId + " ----");
    loadUrl("javascript:MMJS.sdk.setState('expanded');");
    mraidState = "expanded";
  }
  
  void setMraidHidden()
  {
    loadUrl("javascript:MMJS.sdk.setState('hidden')");
    mraidState = "hidden";
  }
  
  void setMraidPlacementTypeInline()
  {
    loadUrl("javascript:MMJS.sdk.setPlacementType('inline');");
  }
  
  void setMraidPlacementTypeInterstitial()
  {
    loadUrl("javascript:MMJS.sdk.setPlacementType('interstitial');");
  }
  
  void setMraidReady()
  {
    loadUrl("javascript:MMJS.sdk.ready();");
  }
  
  void setMraidResize(DTOResizeParameters paramDTOResizeParameters)
  {
    try
    {
      if (MMSDK.hasSetTranslationMethod())
      {
        MMAdView localMMAdView = getMMAdView();
        isUserClosedResize = false;
        MMSDK.Log.d("New DTOResizeParameters = " + paramDTOResizeParameters);
        if (localMMAdView != null) {
          MMSDK.runOnUiThread(new MMWebView.6(this, localMMAdView, paramDTOResizeParameters));
        }
      }
      return;
    }
    finally {}
  }
  
  void setMraidViewableHidden()
  {
    loadUrl("javascript:MMJS.sdk.setViewable(false)");
  }
  
  void setMraidViewableVisible()
  {
    loadUrl("javascript:MMJS.sdk.setViewable(true)");
  }
  
  void setWebViewContent(String paramString1, String paramString2, Context paramContext)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      return;
    }
    String str = paramString2.substring(0, paramString2.lastIndexOf("/") + 1);
    if (MMSDK.logLevel >= 5)
    {
      MMSDK.Log.v("Received ad with base url %s.", new Object[] { paramString2 });
      MMSDK.Log.v(paramString1);
    }
    if (MRaid.hasMraidLocally(paramContext)) {
      paramString1 = MRaid.injectMraidJs(paramContext, paramString1);
    }
    for (;;)
    {
      MMSDK.runOnUiThread(new MMWebView.4(this, str, paramString1));
      return;
      MMSDK.Log.e("MMJS is not downloaded");
    }
  }
  
  void setWebViewContent(String paramString1, String paramString2, MMAdImpl paramMMAdImpl)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramMMAdImpl == null)) {
      return;
    }
    unresizeToDefault(paramMMAdImpl);
    String str = paramString2.substring(0, paramString2.lastIndexOf("/") + 1);
    if (MMSDK.logLevel >= 5)
    {
      MMSDK.Log.v("Received ad with base url %s.", new Object[] { str });
      MMSDK.Log.v(paramString1);
    }
    if (paramMMAdImpl.isTransitionAnimated()) {
      animateTransition(paramMMAdImpl);
    }
    paramString2 = paramString1;
    if (ignoreDensityScaling) {
      paramString2 = "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>" + paramString1;
    }
    if (MRaid.hasMraidLocally(paramMMAdImpl.getContext())) {
      paramString2 = MRaid.injectMraidJs(paramMMAdImpl.getContext(), paramString2);
    }
    for (;;)
    {
      MMSDK.runOnUiThread(new MMWebView.3(this, paramMMAdImpl, str, paramString2));
      return;
      MMSDK.Log.e("MMJS is not downloaded");
    }
  }
  
  public String toString()
  {
    return "MMWebView originally from(" + creatorAdImplId + ") MRaidState(" + mraidState + ").";
  }
  
  void unresizeToDefault(MMAdImpl paramMMAdImpl)
  {
    try
    {
      if ((MMSDK.hasSetTranslationMethod()) && (isMraidResized()) && (paramMMAdImpl != null))
      {
        paramMMAdImpl = paramMMAdImpl.getCallingAd();
        if ((paramMMAdImpl instanceof MMAdView))
        {
          paramMMAdImpl = (MMAdView)paramMMAdImpl;
          isUserClosedResize = true;
          MMSDK.runOnUiThread(new MMWebView.7(this, paramMMAdImpl));
        }
      }
      return;
    }
    finally {}
  }
  
  void updateArgumentsWithSettings(Map<String, String> paramMap)
  {
    if (isParentBannerAd()) {}
    for (String str = "true";; str = "false")
    {
      paramMap.put("PROPERTY_BANNER_TYPE", str);
      paramMap.put("PROPERTY_STATE", mraidState);
      paramMap.put("PROPERTY_EXPANDING", String.valueOf(creatorAdImplId));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */