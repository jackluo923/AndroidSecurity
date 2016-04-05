package com.inmobi.monetization.internal;

import java.util.List;

public class NativeAdResponse
{
  public static final String KEY_ADS = "ads";
  public static final String KEY_CONTEXTCODE = "contextCode";
  public static final String KEY_NAMESPACE = "namespace";
  public static final String KEY_PUBCONTENT = "pubContent";
  private List<String> a;
  
  NativeAdResponse(List<String> paramList)
  {
    if (paramList != null) {
      a = paramList;
    }
  }
  
  List<String> a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.NativeAdResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */