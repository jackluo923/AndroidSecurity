package com.millennialmedia.android;

import android.content.Context;
import java.util.Set;

final class AdCache$1
  extends AdCache.Iterator
{
  AdCache$1(Context paramContext, Set paramSet) {}
  
  final boolean callback(CachedAd paramCachedAd)
  {
    if ((acid != null) && (paramCachedAd.getType() == 1) && (paramCachedAd.isOnDisk(val$context))) {
      val$hashSet.add(acid);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */