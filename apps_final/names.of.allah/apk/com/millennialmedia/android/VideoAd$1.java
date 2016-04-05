package com.millennialmedia.android;

import android.content.Context;

class VideoAd$1
  extends AdCache.Iterator
{
  boolean hasSharedVideoFile = false;
  
  VideoAd$1(VideoAd paramVideoAd, Context paramContext) {}
  
  boolean callback(CachedAd paramCachedAd)
  {
    if ((paramCachedAd != null) && ((paramCachedAd instanceof VideoAd)) && (VideoAd.access$000((VideoAd)paramCachedAd).equals(VideoAd.access$000(this$0)))) {
      hasSharedVideoFile = true;
    }
    return super.callback(paramCachedAd);
  }
  
  void done()
  {
    if (!hasSharedVideoFile) {
      VideoAd.access$100(this$0, val$context);
    }
    super.done();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoAd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */