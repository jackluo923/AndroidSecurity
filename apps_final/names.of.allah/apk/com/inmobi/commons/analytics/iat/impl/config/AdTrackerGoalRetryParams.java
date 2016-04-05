package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AdTrackerGoalRetryParams
{
  private int a = 1000;
  private int b = 900;
  
  public int getMaxRetry()
  {
    return a;
  }
  
  public int getMaxWaitTime()
  {
    return b * 1000;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getIntFromMap(paramMap, "mr", 0, 2147483647L);
    b = InternalSDKUtil.getIntFromMap(paramMap, "mw", 0, 2147483647L);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.config.AdTrackerGoalRetryParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */