package com.google.android.gms.tagmanager;

import android.text.TextUtils;

class ap
{
  private final long afC;
  private String afD;
  private final long wt;
  private final long wu;
  
  ap(long paramLong1, long paramLong2, long paramLong3)
  {
    wt = paramLong1;
    wu = paramLong2;
    afC = paramLong3;
  }
  
  void R(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {
      return;
    }
    afD = paramString;
  }
  
  long dg()
  {
    return wt;
  }
  
  long lI()
  {
    return afC;
  }
  
  String lJ()
  {
    return afD;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */