package com.millennialmedia.android;

import android.content.Context;

final class MMSDK$2
  extends AdCache.Iterator
{
  MMSDK$2(Context paramContext) {}
  
  final boolean callback(CachedAd paramCachedAd)
  {
    String str2 = paramCachedAd.getTypeString();
    String str3 = paramCachedAd.getId();
    String str1;
    if (paramCachedAd.isOnDisk(val$context))
    {
      str1 = "";
      if (!paramCachedAd.isExpired()) {
        break label69;
      }
    }
    label69:
    for (paramCachedAd = "";; paramCachedAd = "not ")
    {
      MMSDK.Log.i("%s %s is %son disk. Is %sexpired.", new Object[] { str2, str3, str1, paramCachedAd });
      return true;
      str1 = "not ";
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMSDK.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */