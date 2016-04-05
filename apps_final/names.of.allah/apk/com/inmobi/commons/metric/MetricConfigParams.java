package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class MetricConfigParams
{
  private int a = 432000;
  private int b = 1000;
  private int c = 1000;
  private int d = 10;
  private String e = "https://sdkm.w.inmobi.com/metrics/e.asm";
  
  public int getDumpThreshhold()
  {
    return d;
  }
  
  public int getMaxInQueue()
  {
    return b;
  }
  
  public int getNextRetryInterval()
  {
    return a;
  }
  
  public int getSamplingFactor()
  {
    return c;
  }
  
  public String getUrl()
  {
    return e;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    c = InternalSDKUtil.getIntFromMap(paramMap, "sf", 1, 2147483647L);
    d = InternalSDKUtil.getIntFromMap(paramMap, "dt", 1, 2147483647L);
    b = InternalSDKUtil.getIntFromMap(paramMap, "max", 1, 2147483647L);
    a = InternalSDKUtil.getIntFromMap(paramMap, "nri", 1, 2147483647L);
    e = InternalSDKUtil.getStringFromMap(paramMap, "url");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.metric.MetricConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */