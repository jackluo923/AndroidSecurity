package com.adsdk.sdk.mraid;

import android.os.Build.VERSION;

public enum VersionCode
{
  BASE(1),  BASE_1_1(2),  CUPCAKE(3),  DONUT(4),  ECLAIR(5),  ECLAIR_0_1(6),  ECLAIR_MR1(7),  FROYO(8),  GINGERBREAD(9),  GINGERBREAD_MR1(10),  HONEYCOMB(11),  HONEYCOMB_MR1(12),  HONEYCOMB_MR2(13),  ICE_CREAM_SANDWICH(14),  ICE_CREAM_SANDWICH_MR1(15),  JELLY_BEAN(16),  JELLY_BEAN_MR1(17),  JELLY_BEAN_MR2(18),  CUR_DEVELOPMENT(10000);
  
  private int mApiLevel;
  
  private VersionCode(int paramInt1)
  {
    mApiLevel = paramInt1;
  }
  
  public static VersionCode currentApiLevel()
  {
    return forApiLevel(Build.VERSION.SDK_INT);
  }
  
  private static VersionCode forApiLevel(int paramInt)
  {
    VersionCode[] arrayOfVersionCode = values();
    int j = arrayOfVersionCode.length;
    int i = 0;
    for (;;)
    {
      Object localObject;
      if (i >= j) {
        localObject = CUR_DEVELOPMENT;
      }
      VersionCode localVersionCode;
      do
      {
        return (VersionCode)localObject;
        localVersionCode = arrayOfVersionCode[i];
        localObject = localVersionCode;
      } while (localVersionCode.getApiLevel() == paramInt);
      i += 1;
    }
  }
  
  public final int getApiLevel()
  {
    return mApiLevel;
  }
  
  public final boolean isAtLeast(VersionCode paramVersionCode)
  {
    return getApiLevel() >= paramVersionCode.getApiLevel();
  }
  
  public final boolean isAtMost(VersionCode paramVersionCode)
  {
    return getApiLevel() <= paramVersionCode.getApiLevel();
  }
  
  public final boolean isBelow(VersionCode paramVersionCode)
  {
    return getApiLevel() < paramVersionCode.getApiLevel();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.VersionCode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */