package com.millennialmedia.android;

class PreCacheWorker$1
  implements AdCache.AdCacheTaskListener
{
  PreCacheWorker$1(PreCacheWorker paramPreCacheWorker, DTOCachedVideo paramDTOCachedVideo) {}
  
  public void downloadCompleted(CachedAd paramCachedAd, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        AdCache.save(PreCacheWorker.access$000(this$0), paramCachedAd);
        PreCacheWorker.access$102(this$0, true);
        MMSDK.Event.logEvent(val$cachedVideo.preCacheCompleteURL);
        notify();
        return;
      }
      finally {}
      MMSDK.Event.logEvent(val$cachedVideo.preCacheFailedURL);
    }
  }
  
  public void downloadStart(CachedAd paramCachedAd)
  {
    MMSDK.Event.logEvent(val$cachedVideo.preCacheStartURL);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.PreCacheWorker.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */