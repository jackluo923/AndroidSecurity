package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class AnalyticsConfigParams
{
  private static final Long a = null;
  private UID b = new UID();
  private AnalyticsEndPointsConfig c = new AnalyticsEndPointsConfig();
  private ThinICEConfig d = new ThinICEConfig();
  private Long e = a;
  private int f = 5;
  private int g = 1000;
  private int h = 100;
  private int i = 3;
  private int j = 20;
  private int k = 50;
  private int l = 100;
  private int m = 5;
  private AutomaticCaptureConfig n = new AutomaticCaptureConfig();
  private int o = 100;
  
  public AutomaticCaptureConfig getAutomaticCapture()
  {
    return n;
  }
  
  public AnalyticsEndPointsConfig getEndPoints()
  {
    return c;
  }
  
  public int getExtraParamsLimit()
  {
    return l;
  }
  
  public int getGetParamsLimit()
  {
    return h;
  }
  
  public Long getLTVId()
  {
    return e;
  }
  
  public int getMaxAppIdLength()
  {
    return o;
  }
  
  public int getMaxDbEvents()
  {
    return g;
  }
  
  public int getMaxKeyLength()
  {
    return j;
  }
  
  public int getMaxRetryBeforeCacheDiscard()
  {
    return m;
  }
  
  public int getMaxValLength()
  {
    return k;
  }
  
  public int getMinEventsToCompress()
  {
    return f;
  }
  
  public int getPingInterval()
  {
    return i * 1000;
  }
  
  public ThinICEConfig getThinIceConfig()
  {
    return d;
  }
  
  public UID getUID()
  {
    return b;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    h = InternalSDKUtil.getIntFromMap(paramMap, "elim", 1, 2147483647L);
    g = InternalSDKUtil.getIntFromMap(paramMap, "mdb", 1, 2147483647L);
    j = InternalSDKUtil.getIntFromMap(paramMap, "mkey", 1, 2147483647L);
    k = InternalSDKUtil.getIntFromMap(paramMap, "mval", 1, 2147483647L);
    i = InternalSDKUtil.getIntFromMap(paramMap, "pint", 1, 2147483647L);
    l = InternalSDKUtil.getIntFromMap(paramMap, "plim", 1, 2147483647L);
    e = Long.valueOf(InternalSDKUtil.getLongFromMap(paramMap, "ltvid", Long.MIN_VALUE, Long.MAX_VALUE));
    f = InternalSDKUtil.getIntFromMap(paramMap, "mec", 1, 2147483647L);
    m = InternalSDKUtil.getIntFromMap(paramMap, "mr", 0, 2147483647L);
    o = InternalSDKUtil.getIntFromMap(paramMap, "aidl", 1, 2147483647L);
    b.setFromMap((Map)paramMap.get("ids"));
    c.setFromMap((Map)paramMap.get("endpoints"));
    d.setFromMap((Map)paramMap.get("tic"));
    n.setFromMap((Map)paramMap.get("at"));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */