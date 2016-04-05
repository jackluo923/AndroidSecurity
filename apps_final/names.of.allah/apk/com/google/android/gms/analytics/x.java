package com.google.android.gms.analytics;

import android.text.TextUtils;

class x
{
  private String ws;
  private final long wt;
  private final long wu;
  private String wv = "https:";
  
  x(String paramString, long paramLong1, long paramLong2)
  {
    ws = paramString;
    wt = paramLong1;
    wu = paramLong2;
  }
  
  void Q(String paramString)
  {
    ws = paramString;
  }
  
  void R(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {}
    while (!paramString.toLowerCase().startsWith("http:")) {
      return;
    }
    wv = "http:";
  }
  
  String df()
  {
    return ws;
  }
  
  long dg()
  {
    return wt;
  }
  
  long dh()
  {
    return wu;
  }
  
  String di()
  {
    return wv;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */