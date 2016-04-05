package com.millennialmedia.android;

import android.content.Context;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

class MMAdImplController$RequestAdRunnable
  implements Runnable
{
  String adUrl;
  HttpMMHeaders mmHeaders;
  
  private MMAdImplController$RequestAdRunnable(MMAdImplController paramMMAdImplController) {}
  
  private boolean isAdUrlBuildable()
  {
    Object localObject1 = null;
    adUrl = null;
    if (this$0.adImplRef != null) {
      localObject1 = (MMAdImpl)this$0.adImplRef.get();
    }
    if (localObject1 != null)
    {
      try
      {
        Object localObject2 = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        ((MMAdImpl)localObject1).insertUrlAdMetaValues((Map)localObject2);
        MMSDK.insertUrlCommonValues(((MMAdImpl)localObject1).getContext(), (Map)localObject2);
        ((Map)localObject2).put("ua", controller.getUserAgent());
        localObject1 = new StringBuilder(HandShake.getAdUrl());
        MMSDK.Log.d(((Map)localObject2).entrySet().toString());
        localObject2 = ((Map)localObject2).entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
          ((StringBuilder)localObject1).append(String.format("%s=%s&", new Object[] { localEntry.getKey(), URLEncoder.encode((String)localEntry.getValue(), "UTF-8") }));
        }
        localUnsupportedEncodingException.delete(localUnsupportedEncodingException.length() - 1, localUnsupportedEncodingException.length());
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        return failWithErrorMessage(new MMException(localUnsupportedEncodingException));
      }
      adUrl = localUnsupportedEncodingException.toString();
      MMSDK.Log.d("Calling for an advertisement: %s", new Object[] { adUrl });
    }
    else
    {
      failWithInfoMessage(new MMException(25));
    }
    return true;
  }
  
  private boolean isHandledHtmlResponse(HttpEntity paramHttpEntity)
  {
    MMAdImpl localMMAdImpl = null;
    try
    {
      if (this$0.adImplRef != null) {
        localMMAdImpl = (MMAdImpl)this$0.adImplRef.get();
      }
      if (localMMAdImpl != null) {
        if (!localMMAdImpl.isBanner())
        {
          InterstitialAd localInterstitialAd = new InterstitialAd();
          content = HttpGetRequest.convertStreamToString(paramHttpEntity.getContent());
          localInterstitialAd.setId(adType);
          adUrl = adUrl;
          mmHeaders = mmHeaders;
          if (MMSDK.logLevel >= 5)
          {
            MMSDK.Log.v("Received interstitial ad with url %s.", new Object[] { adUrl });
            MMSDK.Log.v(content);
          }
          AdCache.save(localMMAdImpl.getContext(), localInterstitialAd);
          AdCache.setNextCachedAd(localMMAdImpl.getContext(), localMMAdImpl.getCachedName(), localInterstitialAd.getId());
          MMSDK.Event.fetchStartedCaching(localMMAdImpl);
          MMSDK.Event.requestCompleted(localMMAdImpl);
        }
        else
        {
          if (controller != null) {
            controller.setWebViewContent(HttpGetRequest.convertStreamToString(paramHttpEntity.getContent()), adUrl);
          }
          MMSDK.Event.requestCompleted(localMMAdImpl);
        }
      }
    }
    catch (IOException paramHttpEntity)
    {
      return failWithErrorMessage(new MMException("Exception raised in HTTP stream: " + paramHttpEntity.getMessage(), paramHttpEntity));
    }
    return true;
  }
  
  private boolean isHandledJsonResponse(HttpEntity paramHttpEntity)
  {
    if (this$0.adImplRef != null) {}
    for (MMAdImpl localMMAdImpl = (MMAdImpl)this$0.adImplRef.get();; localMMAdImpl = null)
    {
      if (localMMAdImpl != null) {
        if (localMMAdImpl.isBanner()) {
          return failWithErrorMessage(new MMException("Millennial ad return unsupported format.", 15));
        }
      }
      for (;;)
      {
        try
        {
          paramHttpEntity = (VideoAd)CachedAd.parseJSON(HttpGetRequest.convertStreamToString(paramHttpEntity.getContent()));
          if ((paramHttpEntity != null) && (paramHttpEntity.isValid()))
          {
            MMSDK.Log.i("Cached video ad JSON received: " + paramHttpEntity.getId());
            if (paramHttpEntity.isExpired())
            {
              MMSDK.Log.i("New ad has expiration date in the past. Not downloading ad content.");
              paramHttpEntity.delete(localMMAdImpl.getContext());
              MMSDK.Event.requestFailed(localMMAdImpl, new MMException(15));
            }
          }
          else
          {
            return true;
          }
        }
        catch (IllegalStateException paramHttpEntity)
        {
          paramHttpEntity.printStackTrace();
          return failWithInfoMessage(new MMException("Millennial ad return failed. Invalid response data.", paramHttpEntity));
        }
        catch (IOException paramHttpEntity)
        {
          paramHttpEntity.printStackTrace();
          return failWithInfoMessage(new MMException("Millennial ad return failed. " + paramHttpEntity.getMessage(), paramHttpEntity));
        }
        if (AdCache.loadNextCachedAd(localMMAdImpl.getContext(), localMMAdImpl.getCachedName()) != null)
        {
          MMSDK.Log.i("Previously fetched ad exists in the playback queue. Not downloading ad content.");
          paramHttpEntity.delete(localMMAdImpl.getContext());
          MMSDK.Event.requestFailed(localMMAdImpl, new MMException(17));
        }
        else
        {
          AdCache.save(localMMAdImpl.getContext(), paramHttpEntity);
          if (!paramHttpEntity.isOnDisk(localMMAdImpl.getContext()))
          {
            MMSDK.Event.logEvent(cacheMissURL);
            MMSDK.Log.d("Downloading ad...");
            MMSDK.Event.fetchStartedCaching(localMMAdImpl);
            downloadPriority = 3;
            AdCache.startDownloadTask(localMMAdImpl.getContext(), localMMAdImpl.getCachedName(), paramHttpEntity, controller);
          }
          else
          {
            MMSDK.Log.d("Cached ad is valid. Moving it to the front of the queue.");
            AdCache.setNextCachedAd(localMMAdImpl.getContext(), localMMAdImpl.getCachedName(), paramHttpEntity.getId());
            MMSDK.Event.fetchStartedCaching(localMMAdImpl);
            MMSDK.Event.requestCompleted(localMMAdImpl);
          }
        }
      }
    }
  }
  
  private boolean isHandledResponse(HttpResponse paramHttpResponse)
  {
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if (localHttpEntity == null)
    {
      failWithInfoMessage(new MMException("Null HTTP entity", 14));
      return false;
    }
    if (localHttpEntity.getContentLength() == 0L)
    {
      failWithInfoMessage(new MMException("Millennial ad return failed. Zero content length returned.", 14));
      return false;
    }
    saveMacId(paramHttpResponse);
    Object localObject = localHttpEntity.getContentType();
    if ((localObject != null) && (((Header)localObject).getValue() != null))
    {
      if (((Header)localObject).getValue().toLowerCase().startsWith("application/json")) {
        isHandledJsonResponse(localHttpEntity);
      }
      for (;;)
      {
        return true;
        if (!((Header)localObject).getValue().toLowerCase().startsWith("text/html")) {
          break;
        }
        localObject = paramHttpResponse.getFirstHeader("X-MM-Video");
        mmHeaders = new HttpMMHeaders(paramHttpResponse.getAllHeaders());
        if ((localObject != null) && (((Header)localObject).getValue().equalsIgnoreCase("true")))
        {
          paramHttpResponse = null;
          if (this$0.adImplRef != null) {
            paramHttpResponse = (MMAdImpl)this$0.adImplRef.get();
          }
          if (paramHttpResponse != null)
          {
            localObject = paramHttpResponse.getContext();
            HandShake.sharedHandShake((Context)localObject).updateLastVideoViewedTime((Context)localObject, adType);
          }
        }
        isHandledHtmlResponse(localHttpEntity);
      }
      failWithInfoMessage(new MMException("Millennial ad return failed. Invalid (JSON/HTML expected) mime type returned.", 15));
      return false;
    }
    failWithInfoMessage(new MMException("Millennial ad return failed. HTTP Header value null.", 15));
    return false;
  }
  
  private void saveMacId(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = paramHttpResponse.getHeaders("Set-Cookie");
    int j = paramHttpResponse.length;
    int i = 0;
    while (i < j)
    {
      String str = paramHttpResponse[i].getValue();
      int k = str.indexOf("MAC-ID=");
      if (k >= 0)
      {
        int m = str.indexOf(';', k);
        if (m > k) {
          MMSDK.macId = str.substring(k + 7, m);
        }
      }
      i += 1;
    }
  }
  
  boolean fail(MMException paramMMException)
  {
    MMAdImpl localMMAdImpl = null;
    if (this$0.adImplRef != null) {
      localMMAdImpl = (MMAdImpl)this$0.adImplRef.get();
    }
    MMSDK.Event.requestFailed(localMMAdImpl, paramMMException);
    return false;
  }
  
  boolean failWithErrorMessage(MMException paramMMException)
  {
    MMSDK.Log.e(paramMMException.getMessage());
    return fail(paramMMException);
  }
  
  boolean failWithInfoMessage(MMException paramMMException)
  {
    MMSDK.Log.i(paramMMException.getMessage());
    return fail(paramMMException);
  }
  
  public void run()
  {
    try
    {
      if (this$0.adImplRef != null)
      {
        Object localObject1 = (MMAdImpl)this$0.adImplRef.get();
        if ((localObject1 != null) && (MMSDK.isConnected(((MMAdImpl)localObject1).getContext())))
        {
          boolean bool = isAdUrlBuildable();
          if (!bool) {
            return;
          }
          try
          {
            localObject1 = new HttpGetRequest().get(adUrl);
            if (localObject1 == null)
            {
              failWithErrorMessage(new MMException("HTTP response is null.", 14));
              return;
            }
          }
          catch (Exception localException1)
          {
            failWithErrorMessage(new MMException("Ad request HTTP error. " + localException1.getMessage(), 14));
            return;
          }
          bool = isHandledResponse(localException1);
          if (bool) {}
        }
        else
        {
          failWithInfoMessage(new MMException("No network available, can't call for ads.", 11));
          return;
        }
      }
      return;
    }
    catch (Exception localException2)
    {
      failWithInfoMessage(new MMException("Request not filled, can't call for ads.", 14));
      return;
    }
    finally
    {
      this$0.requestAdRunnable = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdImplController.RequestAdRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */