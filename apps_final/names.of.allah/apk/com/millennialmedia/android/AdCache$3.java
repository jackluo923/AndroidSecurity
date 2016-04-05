package com.millennialmedia.android;

import android.content.Context;

final class AdCache$3
  implements Runnable
{
  AdCache$3(Context paramContext) {}
  
  public final void run()
  {
    MMSDK.Log.d("AdCache");
    AdCache.cleanUpExpiredAds(val$context);
    AdCache.cleanupCache(val$context);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCache.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */