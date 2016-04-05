package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AnalyticsEndPointsConfig
{
  private String a = "http://a.ai.inmobi.com/v2/ad.html";
  private String b = "https://rules-ltvp.inmobi.com/v2/rules.json";
  private String c = "https://e-ltvp.inmobi.com/storm/v1/event";
  
  public String getEventsUrl()
  {
    return c;
  }
  
  public String getHouseUrl()
  {
    return a;
  }
  
  public String getRulesUrl()
  {
    return b;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getStringFromMap(paramMap, "house");
    b = InternalSDKUtil.getStringFromMap(paramMap, "rules");
    c = InternalSDKUtil.getStringFromMap(paramMap, "events");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.bootstrapper.AnalyticsEndPointsConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */