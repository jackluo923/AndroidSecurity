package com.inmobi.commons.analytics.iat.impl.config;

import android.content.Context;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class AdTrackerConfigParams
{
  private static final String a = "Starting.*: Intent.*(?:http://market.android.com/details|market://details|play.google.com).*(?:id=" + InternalSDKUtil.getContext().getPackageName() + ").*referrer=([^&\\s]+)";
  private int b = 60;
  private int c = 300;
  private String d = a;
  private AdTrackerGoalRetryParams e = new AdTrackerGoalRetryParams();
  private MetricConfigParams f = new MetricConfigParams();
  private UID g = new UID();
  
  public int getConnectionTimeout()
  {
    return b * 1000;
  }
  
  public String getLogcatPattern()
  {
    return d;
  }
  
  public MetricConfigParams getMetric()
  {
    return f;
  }
  
  public int getReferrerWaitTime()
  {
    return 300000;
  }
  
  public int getReferrerWaitTimeRetryCount()
  {
    return 3;
  }
  
  public int getReferrerWaitTimeRetryInterval()
  {
    return 5000;
  }
  
  public AdTrackerGoalRetryParams getRetryParams()
  {
    return e;
  }
  
  public UID getUID()
  {
    return g;
  }
  
  public int getWebviewTimeout()
  {
    return c * 1000;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    b = InternalSDKUtil.getIntFromMap(paramMap, "cto", 1, 2147483647L);
    c = InternalSDKUtil.getIntFromMap(paramMap, "wto", 1, 2147483647L);
    d = InternalSDKUtil.getStringFromMap(paramMap, "rlp").replace("$PKG", InternalSDKUtil.getContext().getPackageName());
    e.setFromMap((Map)paramMap.get("rp"));
    f.setFromMap((Map)paramMap.get("metric"));
    g.setFromMap((Map)paramMap.get("ids"));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.config.AdTrackerConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */