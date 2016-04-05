package com.millennialmedia.android;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

class MMAdImplController
  implements AdCache.AdCacheTaskListener
{
  static final long NO_ID_RETURNED = -4L;
  private static final Map<Long, MMAdImplController> saveableControllers = new ConcurrentHashMap();
  private static final Map<Long, WeakReference<MMAdImplController>> weakUnsaveableAdRef = new ConcurrentHashMap();
  volatile WeakReference<MMAdImpl> adImplRef;
  volatile long linkedAdImplId;
  MMAdImplController.RequestAdRunnable requestAdRunnable;
  volatile MMWebView webView;
  
  private MMAdImplController(MMAdImpl paramMMAdImpl)
  {
    MMSDK.Log.d("**************** creating new controller.");
    adImplRef = new WeakReference(paramMMAdImpl);
    if (linkForExpansionId != 0L)
    {
      linkForExpansion(paramMMAdImpl);
      webView = getWebViewFromExistingAdImpl(paramMMAdImpl);
      return;
    }
    if (paramMMAdImpl.isBanner())
    {
      webView = new MMWebView(paramMMAdImpl.getContext().getApplicationContext(), internalId);
      webView.requiresPreAdSizeFix = true;
      return;
    }
    webView = new MMWebView(paramMMAdImpl.getContext(), internalId);
  }
  
  static void assignAdViewController(MMAdImpl paramMMAdImpl)
  {
    try
    {
      if (controller != null)
      {
        if (!saveableControllers.containsValue(controller))
        {
          if (!paramMMAdImpl.isLifecycleObservable()) {
            break label112;
          }
          saveableControllers.put(Long.valueOf(internalId), controller);
          if (weakUnsaveableAdRef.containsKey(Long.valueOf(internalId))) {
            weakUnsaveableAdRef.remove(Long.valueOf(internalId));
          }
        }
        for (;;)
        {
          MMSDK.Log.d(paramMMAdImpl + " - Has a controller");
          return;
          label112:
          if (!weakUnsaveableAdRef.containsKey(Long.valueOf(internalId))) {
            weakUnsaveableAdRef.put(Long.valueOf(internalId), new WeakReference(controller));
          }
        }
      }
      MMSDK.Log.d("*****************************************assignAdViewController for " + paramMMAdImpl);
    }
    finally {}
    MMAdImplController localMMAdImplController = (MMAdImplController)saveableControllers.get(Long.valueOf(internalId));
    Object localObject = localMMAdImplController;
    if (localMMAdImplController == null)
    {
      localObject = (WeakReference)weakUnsaveableAdRef.get(Long.valueOf(internalId));
      if (localObject != null) {
        localMMAdImplController = (MMAdImplController)((WeakReference)localObject).get();
      }
      localObject = localMMAdImplController;
      if (localMMAdImplController == null)
      {
        localObject = new MMAdImplController(paramMMAdImpl);
        if (!paramMMAdImpl.isLifecycleObservable()) {
          break label311;
        }
        saveableControllers.put(Long.valueOf(internalId), localObject);
      }
    }
    for (;;)
    {
      controller = ((MMAdImplController)localObject);
      adImplRef = new WeakReference(paramMMAdImpl);
      if (webView == null) {
        break;
      }
      setupWebView(paramMMAdImpl);
      break;
      label311:
      weakUnsaveableAdRef.put(Long.valueOf(internalId), new WeakReference(localObject));
    }
  }
  
  static void attachWebViewFromOverlay(MMAdImpl paramMMAdImpl)
  {
    try
    {
      MMSDK.Log.d("attachWebViewFromOverlay with " + paramMMAdImpl);
      MMAdImpl localMMAdImpl = getAdImplWithId(linkForExpansionId);
      if ((localMMAdImpl != null) && (controller != null))
      {
        if (controller.webView == null)
        {
          controller.webView = controller.webView;
          paramMMAdImpl.removeView(controller.webView);
          controller.webView = null;
        }
        controller.webView.setMraidDefault();
        controller.webView.setWebViewClient(localMMAdImpl.getMMWebViewClient());
      }
      return;
    }
    finally {}
  }
  
  static void clearControllers()
  {
    if (saveableControllers != null) {
      saveableControllers.clear();
    }
    if (weakUnsaveableAdRef != null) {
      weakUnsaveableAdRef.clear();
    }
  }
  
  static String controllersToString()
  {
    return weakUnsaveableAdRef.toString() + " SAVED:" + saveableControllers.toString();
  }
  
  static void destroyOtherInlineVideo(Context paramContext)
  {
    paramContext = saveableControllers.entrySet().iterator();
    while (paramContext.hasNext())
    {
      Object localObject = (MMAdImplController)((Map.Entry)paramContext.next()).getValue();
      if (localObject != null)
      {
        localObject = (MMAdImpl)adImplRef.get();
        if (localObject != null)
        {
          localObject = ((MMAdImpl)localObject).getCallingAd();
          if ((localObject != null) && ((localObject instanceof MMLayout))) {
            ((MMLayout)localObject).removeVideo();
          }
        }
      }
    }
  }
  
  static MMAdImpl getAdImplWithId(long paramLong)
  {
    Object localObject1;
    if (paramLong == -4L) {
      localObject1 = null;
    }
    for (;;)
    {
      return (MMAdImpl)localObject1;
      try
      {
        MMAdImplController localMMAdImplController = (MMAdImplController)saveableControllers.get(Long.valueOf(paramLong));
        localObject1 = localMMAdImplController;
        if (localMMAdImplController == null)
        {
          WeakReference localWeakReference = (WeakReference)weakUnsaveableAdRef.get(Long.valueOf(paramLong));
          localObject1 = localMMAdImplController;
          if (localWeakReference != null) {
            localObject1 = (MMAdImplController)localWeakReference.get();
          }
        }
        if (localObject1 != null)
        {
          localObject1 = (MMAdImpl)adImplRef.get();
          continue;
        }
        localObject1 = null;
      }
      finally {}
    }
  }
  
  static MMWebView getWebViewFromExistingAdImpl(MMAdImpl paramMMAdImpl)
  {
    Object localObject = null;
    try
    {
      MMSDK.Log.i("getWebViewFromExistingLayout(" + internalId + " taking from " + linkForExpansionId + ")");
      MMAdImpl localMMAdImpl = getAdImplWithId(linkForExpansionId);
      paramMMAdImpl = (MMAdImpl)localObject;
      if (localMMAdImpl != null)
      {
        paramMMAdImpl = (MMAdImpl)localObject;
        if (controller != null)
        {
          paramMMAdImpl = controller.webView;
          controller.webView = null;
        }
      }
      return paramMMAdImpl;
    }
    finally {}
  }
  
  private boolean isDownloadingCachedAd(MMAdImpl paramMMAdImpl)
  {
    boolean bool = true;
    for (;;)
    {
      try
      {
        Context localContext = paramMMAdImpl.getContext();
        if (HandShake.sharedHandShake(localContext).isAdTypeDownloading(adType))
        {
          MMSDK.Log.i("There is a download in progress. Defering call for new ad");
          MMSDK.Event.requestFailed(paramMMAdImpl, new MMException(12));
          return bool;
        }
        MMSDK.Log.d("No download in progress.");
        CachedAd localCachedAd = AdCache.loadIncompleteDownload(localContext, paramMMAdImpl.getCachedName());
        if (localCachedAd != null)
        {
          MMSDK.Log.i("Last ad wasn't fully downloaded. Download again.");
          MMSDK.Event.fetchStartedCaching(paramMMAdImpl);
          AdCache.startDownloadTask(localContext, paramMMAdImpl.getCachedName(), localCachedAd, this);
          continue;
        }
        MMSDK.Log.i("No incomplete downloads.");
      }
      finally {}
      bool = false;
    }
  }
  
  static void removeAdViewController(MMAdImpl paramMMAdImpl)
  {
    for (;;)
    {
      try
      {
        MMAdImplController localMMAdImplController = controller;
        if (localMMAdImplController == null) {
          return;
        }
        if (paramMMAdImpl.isLifecycleObservable())
        {
          saveableControllers.put(Long.valueOf(internalId), controller);
          if (weakUnsaveableAdRef.get(Long.valueOf(internalId)) != null) {
            weakUnsaveableAdRef.remove(Long.valueOf(internalId));
          }
          MMSDK.Log.d("****************RemoveAdviewcontroller - " + paramMMAdImpl);
          if (isFinishing)
          {
            saveableControllers.remove(Long.valueOf(internalId));
            weakUnsaveableAdRef.remove(Long.valueOf(internalId));
          }
          localMMAdImplController = controller;
          controller = null;
          MMSDK.Log.d("****************RemoveAdviewcontroller - controllers " + controllersToString());
          if (webView != null)
          {
            MMSDK.Log.d("****************RemoveAdviewcontroller - controller!=null, expanding=" + webView.isExpanding);
            paramMMAdImpl.removeView(webView);
            webView.isExpanding = false;
            if ((isFinishing) && (linkForExpansionId == 0L)) {
              webView = null;
            }
          }
        }
        else
        {
          weakUnsaveableAdRef.put(Long.valueOf(internalId), new WeakReference(controller));
        }
      }
      finally {}
    }
  }
  
  private void requestAdInternal(MMAdImpl paramMMAdImpl)
  {
    if (apid == null)
    {
      localMMException = new MMException("MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned.", 1);
      MMSDK.Log.e(localMMException);
      MMSDK.Event.requestFailed(paramMMAdImpl, localMMException);
    }
    while ((!paramMMAdImpl.isBanner()) && (isDownloadingCachedAd(paramMMAdImpl)))
    {
      MMException localMMException;
      return;
    }
    try
    {
      if (requestAdRunnable != null)
      {
        MMSDK.Log.i(MMException.getErrorCodeMessage(12));
        MMSDK.Event.requestFailed(paramMMAdImpl, new MMException(12));
        return;
      }
    }
    finally {}
    requestAdRunnable = new MMAdImplController.RequestAdRunnable(this, null);
    Utils.ThreadUtils.execute(requestAdRunnable);
  }
  
  /* Error */
  private static void setupWebView(MMAdImpl paramMMAdImpl)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 96	com/millennialmedia/android/MMAdImpl:controller	Lcom/millennialmedia/android/MMAdImplController;
    //   7: astore_3
    //   8: aload_3
    //   9: getfield 66	com/millennialmedia/android/MMAdImplController:webView	Lcom/millennialmedia/android/MMWebView;
    //   12: aload_0
    //   13: invokevirtual 171	com/millennialmedia/android/MMAdImpl:getMMWebViewClient	()Lcom/millennialmedia/android/MMWebViewClient;
    //   16: invokevirtual 175	com/millennialmedia/android/MMWebView:setWebViewClient	(Landroid/webkit/WebViewClient;)V
    //   19: aload_3
    //   20: getfield 66	com/millennialmedia/android/MMAdImplController:webView	Lcom/millennialmedia/android/MMWebView;
    //   23: aload_0
    //   24: getfield 84	com/millennialmedia/android/MMAdImpl:internalId	J
    //   27: invokevirtual 334	com/millennialmedia/android/MMWebView:isCurrentParent	(J)Z
    //   30: ifne +60 -> 90
    //   33: aload_0
    //   34: invokevirtual 70	com/millennialmedia/android/MMAdImpl:isBanner	()Z
    //   37: ifeq +57 -> 94
    //   40: new 336	android/widget/RelativeLayout$LayoutParams
    //   43: dup
    //   44: bipush -2
    //   46: bipush -2
    //   48: invokespecial 339	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   51: astore_2
    //   52: aload_2
    //   53: astore_1
    //   54: aload_3
    //   55: getfield 66	com/millennialmedia/android/MMAdImplController:webView	Lcom/millennialmedia/android/MMWebView;
    //   58: invokevirtual 342	com/millennialmedia/android/MMWebView:isMraidResized	()Z
    //   61: ifeq +13 -> 74
    //   64: aload_3
    //   65: getfield 66	com/millennialmedia/android/MMAdImplController:webView	Lcom/millennialmedia/android/MMWebView;
    //   68: aload_0
    //   69: invokevirtual 345	com/millennialmedia/android/MMWebView:unresizeToDefault	(Lcom/millennialmedia/android/MMAdImpl;)V
    //   72: aload_2
    //   73: astore_1
    //   74: aload_3
    //   75: getfield 66	com/millennialmedia/android/MMAdImplController:webView	Lcom/millennialmedia/android/MMWebView;
    //   78: invokevirtual 348	com/millennialmedia/android/MMWebView:removeFromParent	()V
    //   81: aload_0
    //   82: aload_3
    //   83: getfield 66	com/millennialmedia/android/MMAdImplController:webView	Lcom/millennialmedia/android/MMWebView;
    //   86: aload_1
    //   87: invokevirtual 352	com/millennialmedia/android/MMAdImpl:addView	(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    //   90: ldc 2
    //   92: monitorexit
    //   93: return
    //   94: new 336	android/widget/RelativeLayout$LayoutParams
    //   97: dup
    //   98: bipush -2
    //   100: iconst_m1
    //   101: invokespecial 339	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   104: astore_1
    //   105: goto -31 -> 74
    //   108: astore_0
    //   109: ldc 2
    //   111: monitorexit
    //   112: aload_0
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	paramMMAdImpl	MMAdImpl
    //   53	52	1	localLayoutParams1	android.widget.RelativeLayout.LayoutParams
    //   51	22	2	localLayoutParams2	android.widget.RelativeLayout.LayoutParams
    //   7	76	3	localMMAdImplController	MMAdImplController
    // Exception table:
    //   from	to	target	type
    //   3	52	108	finally
    //   54	72	108	finally
    //   74	90	108	finally
    //   94	105	108	finally
  }
  
  int checkReason(MMAdImpl paramMMAdImpl, CachedAd paramCachedAd)
  {
    if (paramCachedAd.isExpired())
    {
      MMSDK.Log.d("%s is expired.", new Object[] { paramCachedAd.getId() });
      return 21;
    }
    if (!paramCachedAd.isOnDisk(paramMMAdImpl.getContext()))
    {
      MMSDK.Log.d("%s is not on disk.", new Object[] { paramCachedAd.getId() });
      return 22;
    }
    if (!HandShake.sharedHandShake(paramMMAdImpl.getContext()).canDisplayCachedAd(adType, deferredViewStart))
    {
      MMSDK.Log.d("%s cannot be shown at this time.", new Object[] { paramCachedAd.getId() });
      return 24;
    }
    return 100;
  }
  
  int display(MMAdImpl paramMMAdImpl)
  {
    CachedAd localCachedAd = AdCache.loadNextCachedAd(paramMMAdImpl.getContext(), paramMMAdImpl.getCachedName());
    if (localCachedAd != null)
    {
      if (localCachedAd.canShow(paramMMAdImpl.getContext(), paramMMAdImpl, true))
      {
        MMSDK.Event.displayStarted(paramMMAdImpl);
        AdCache.setNextCachedAd(paramMMAdImpl.getContext(), paramMMAdImpl.getCachedName(), null);
        localCachedAd.show(paramMMAdImpl.getContext(), internalId);
        HandShake.sharedHandShake(paramMMAdImpl.getContext()).updateLastVideoViewedTime(paramMMAdImpl.getContext(), adType);
        return 0;
      }
      return checkReason(paramMMAdImpl, localCachedAd);
    }
    return 20;
  }
  
  public void downloadCompleted(CachedAd paramCachedAd, boolean paramBoolean)
  {
    MMAdImpl localMMAdImpl = (MMAdImpl)adImplRef.get();
    if (localMMAdImpl == null)
    {
      MMSDK.Log.e(MMException.getErrorCodeMessage(25));
      return;
    }
    if (paramBoolean) {
      AdCache.setNextCachedAd(localMMAdImpl.getContext(), localMMAdImpl.getCachedName(), paramCachedAd.getId());
    }
    if (paramBoolean)
    {
      MMSDK.Event.requestCompleted(localMMAdImpl);
      return;
    }
    MMSDK.Event.requestFailed(localMMAdImpl, new MMException(15));
  }
  
  public void downloadStart(CachedAd paramCachedAd) {}
  
  String getUserAgent()
  {
    if (webView != null) {
      return webView.getUserAgent();
    }
    return Build.MODEL;
  }
  
  int isAdAvailable(MMAdImpl paramMMAdImpl)
  {
    CachedAd localCachedAd = AdCache.loadNextCachedAd(paramMMAdImpl.getContext(), paramMMAdImpl.getCachedName());
    if (localCachedAd != null)
    {
      if (localCachedAd.canShow(paramMMAdImpl.getContext(), paramMMAdImpl, true)) {
        return 0;
      }
      return checkReason(paramMMAdImpl, localCachedAd);
    }
    MMSDK.Log.i("No next ad.");
    return 20;
  }
  
  void linkForExpansion(MMAdImpl paramMMAdImpl)
  {
    MMAdImpl localMMAdImpl = getAdImplWithId(linkForExpansionId);
    if (localMMAdImpl != null)
    {
      linkedAdImplId = linkForExpansionId;
      controller.linkedAdImplId = internalId;
      linkForExpansionId = internalId;
    }
  }
  
  void loadUrl(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (webView != null)) {
      webView.loadUrl(paramString);
    }
  }
  
  void loadWebContent(String paramString1, String paramString2)
  {
    MMAdImpl localMMAdImpl = (MMAdImpl)adImplRef.get();
    if ((localMMAdImpl != null) && (webView != null)) {
      webView.setWebViewContent(paramString1, paramString2, localMMAdImpl);
    }
  }
  
  void pauseWebViewVideo()
  {
    if (webView != null) {
      webView.onPauseWebViewVideo();
    }
  }
  
  void requestAd()
  {
    MMAdImpl localMMAdImpl = (MMAdImpl)adImplRef.get();
    if (localMMAdImpl == null)
    {
      MMSDK.Log.e(MMException.getErrorCodeMessage(25));
      MMSDK.Event.requestFailed(localMMAdImpl, new MMException(25));
      return;
    }
    if (!localMMAdImpl.isRefreshable())
    {
      MMSDK.Event.requestFailed(localMMAdImpl, new MMException(16));
      return;
    }
    if (!MMSDK.isUiThread())
    {
      MMSDK.Log.e(MMException.getErrorCodeMessage(3));
      MMSDK.Event.requestFailed(localMMAdImpl, new MMException(3));
      return;
    }
    if (sharedHandShakegetContextkill)
    {
      MMSDK.Log.i("The server is no longer allowing ads.");
      MMSDK.Event.requestFailed(localMMAdImpl, new MMException(16));
      return;
    }
    try
    {
      MMSDK.Log.d("adLayout - requestAd");
      requestAdInternal(localMMAdImpl);
      return;
    }
    catch (Exception localException)
    {
      MMSDK.Log.e("There was an exception with the ad request. %s", new Object[] { localException.getMessage() });
      localException.printStackTrace();
    }
  }
  
  void resumeWebViewVideo()
  {
    if (webView != null) {
      webView.onResumeWebViewVideo();
    }
  }
  
  void setWebViewContent(String paramString1, String paramString2)
  {
    webView.setWebViewContent(paramString1, paramString2, (MMAdImpl)adImplRef.get());
  }
  
  public String toString()
  {
    MMAdImpl localMMAdImpl = (MMAdImpl)adImplRef.get();
    StringBuilder localStringBuilder = new StringBuilder();
    if (localMMAdImpl != null) {
      localStringBuilder.append(localMMAdImpl + "-LinkInC=" + linkedAdImplId);
    }
    return localStringBuilder.toString() + " w/" + webView;
  }
  
  void unresizeToDefault()
  {
    if (webView != null) {
      webView.unresizeToDefault((MMAdImpl)adImplRef.get());
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdImplController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */