package com.google.analytics.tracking.android;

import android.text.TextUtils;

class Hit
{
  private final long mHitId;
  private String mHitString;
  private final long mHitTime;
  private String mHitUrlScheme = "https:";
  
  Hit(String paramString, long paramLong1, long paramLong2)
  {
    mHitString = paramString;
    mHitId = paramLong1;
    mHitTime = paramLong2;
  }
  
  long getHitId()
  {
    return mHitId;
  }
  
  String getHitParams()
  {
    return mHitString;
  }
  
  long getHitTime()
  {
    return mHitTime;
  }
  
  String getHitUrlScheme()
  {
    return mHitUrlScheme;
  }
  
  void setHitString(String paramString)
  {
    mHitString = paramString;
  }
  
  void setHitUrl(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {}
    while (!paramString.toLowerCase().startsWith("http:")) {
      return;
    }
    mHitUrlScheme = "http:";
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.Hit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */