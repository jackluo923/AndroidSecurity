package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;

class AdCacheThreadPool$AdCacheTask
  implements Comparable<AdCacheTask>, Runnable
{
  private CachedAd ad;
  private String adName;
  private WeakReference<Context> contextRef;
  private WeakReference<AdCache.AdCacheTaskListener> listenerRef;
  
  AdCacheThreadPool$AdCacheTask(AdCacheThreadPool paramAdCacheThreadPool, Context paramContext, String paramString, CachedAd paramCachedAd, AdCache.AdCacheTaskListener paramAdCacheTaskListener)
  {
    contextRef = new WeakReference(paramContext.getApplicationContext());
    adName = paramString;
    ad = paramCachedAd;
    if (paramAdCacheTaskListener != null) {
      listenerRef = new WeakReference(paramAdCacheTaskListener);
    }
  }
  
  public int compareTo(AdCacheTask paramAdCacheTask)
  {
    return ad.downloadPriority - ad.downloadPriority;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof AdCacheTask)) {
      return false;
    }
    paramObject = (AdCacheTask)paramObject;
    return ad.equals(ad);
  }
  
  public void run()
  {
    if (listenerRef != null) {}
    for (AdCache.AdCacheTaskListener localAdCacheTaskListener = (AdCache.AdCacheTaskListener)listenerRef.get();; localAdCacheTaskListener = null)
    {
      if (localAdCacheTaskListener != null) {
        localAdCacheTaskListener.downloadStart(ad);
      }
      HandShake.sharedHandShake((Context)contextRef.get()).lockAdTypeDownload(adName);
      boolean bool = ad.download((Context)contextRef.get());
      HandShake.sharedHandShake((Context)contextRef.get()).unlockAdTypeDownload(adName);
      String str1;
      Context localContext;
      if (!bool)
      {
        str1 = AdCache.getIncompleteDownload((Context)contextRef.get(), adName);
        if ((str1 != null) && (ad.getId().equals(str1)))
        {
          ad.delete((Context)contextRef.get());
          localContext = (Context)contextRef.get();
          str1 = adName;
        }
      }
      label251:
      for (;;)
      {
        String str2 = null;
        AdCache.setIncompleteDownload(localContext, str1, str2);
        for (;;)
        {
          if (localAdCacheTaskListener != null) {
            localAdCacheTaskListener.downloadCompleted(ad, bool);
          }
          return;
          localContext = (Context)contextRef.get();
          str1 = adName;
          if (ad.downloadAllOrNothing) {
            break label251;
          }
          str2 = ad.getId();
          break;
          AdCache.setIncompleteDownload((Context)contextRef.get(), adName, null);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCacheThreadPool.AdCacheTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */