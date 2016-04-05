package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class IMAIConfigParams
{
  int a = 3;
  int b = 10;
  int c = 120;
  int d = 10;
  int e = 1000;
  
  public int getMaxRetry()
  {
    return a;
  }
  
  public int getPingTimeOut()
  {
    return c * 1000;
  }
  
  public int getRetryInterval()
  {
    return b * 1000;
  }
  
  public int getmDefaultEventsBatch()
  {
    return d;
  }
  
  public int getmMaxDb()
  {
    return e;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getIntFromMap(paramMap, "mr", 0, 2147483647L);
    b = InternalSDKUtil.getIntFromMap(paramMap, "pint", 1, 2147483647L);
    c = InternalSDKUtil.getIntFromMap(paramMap, "pto", 1, 2147483647L);
    d = InternalSDKUtil.getIntFromMap(paramMap, "eb", 1, 2147483647L);
    e = InternalSDKUtil.getIntFromMap(paramMap, "mdb", 1, 2147483647L);
  }
  
  public void setmDefaultEventsBatch(int paramInt)
  {
    d = paramInt;
  }
  
  public void setmMaxDb(int paramInt)
  {
    e = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.bootstrapper.IMAIConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */