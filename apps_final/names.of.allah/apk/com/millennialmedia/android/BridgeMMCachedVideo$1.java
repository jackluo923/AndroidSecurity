package com.millennialmedia.android;

import android.content.Context;
import org.json.JSONArray;

class BridgeMMCachedVideo$1
  extends AdCache.Iterator
{
  BridgeMMCachedVideo$1(BridgeMMCachedVideo paramBridgeMMCachedVideo, Context paramContext, JSONArray paramJSONArray) {}
  
  boolean callback(CachedAd paramCachedAd)
  {
    if (((paramCachedAd instanceof VideoAd)) && (paramCachedAd.isOnDisk(val$context)) && (!paramCachedAd.isExpired())) {
      val$array.put(paramCachedAd.getId());
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMCachedVideo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */