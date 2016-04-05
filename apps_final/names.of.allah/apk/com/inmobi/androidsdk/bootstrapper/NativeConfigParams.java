package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class NativeConfigParams
{
  int a = 100;
  int b = 3;
  int c = 10;
  
  public int getmFetchLimit()
  {
    return c;
  }
  
  public int getmMaxCacheSize()
  {
    return a;
  }
  
  public int getmMinLimit()
  {
    return b;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getIntFromMap(paramMap, "mcl", 1, 2147483647L);
    b = InternalSDKUtil.getIntFromMap(paramMap, "mt", 1, 2147483647L);
    c = InternalSDKUtil.getIntFromMap(paramMap, "fl", 1, 2147483647L);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.bootstrapper.NativeConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */