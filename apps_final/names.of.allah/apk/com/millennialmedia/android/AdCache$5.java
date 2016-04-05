package com.millennialmedia.android;

import android.content.Context;

final class AdCache$5
  extends AdCache.Iterator
{
  AdCache$5(Context paramContext) {}
  
  final boolean callback(CachedAd paramCachedAd)
  {
    MMSDK.Log.d("Deleting ad %s.", new Object[] { paramCachedAd.getId() });
    paramCachedAd.delete(val$context);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCache.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */