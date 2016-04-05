package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class ConfigParams
{
  int a = 20;
  int b = 60;
  int c = 60;
  int d = 60;
  IMAIConfigParams e = new IMAIConfigParams();
  MetricConfigParams f = new MetricConfigParams();
  UID g = new UID();
  AppGalleryConfigParams h = new AppGalleryConfigParams();
  NativeConfigParams i = new NativeConfigParams();
  
  public AppGalleryConfigParams getAppAppGalleryConfigParams()
  {
    return h;
  }
  
  public int getDefaultRefreshRate()
  {
    return b;
  }
  
  public int getFetchTimeOut()
  {
    return c * 1000;
  }
  
  public IMAIConfigParams getImai()
  {
    return e;
  }
  
  public MetricConfigParams getMetric()
  {
    return f;
  }
  
  public int getMinimumRefreshRate()
  {
    return a;
  }
  
  public NativeConfigParams getNativeSdkConfigParams()
  {
    return i;
  }
  
  public int getRenderTimeOut()
  {
    return d * 1000;
  }
  
  public UID getUID()
  {
    return g;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getIntFromMap(paramMap, "mrr", 1, 2147483647L);
    b = InternalSDKUtil.getIntFromMap(paramMap, "drr", -1, 2147483647L);
    c = InternalSDKUtil.getIntFromMap(paramMap, "fto", 1, 2147483647L);
    d = InternalSDKUtil.getIntFromMap(paramMap, "rto", 1, 2147483647L);
    e.setFromMap((Map)paramMap.get("imai"));
    f.setFromMap((Map)paramMap.get("metric"));
    g.setFromMap((Map)paramMap.get("ids"));
    h.setFromMap((Map)paramMap.get("ag"));
    i.setFromMap((Map)paramMap.get("native"));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.bootstrapper.ConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */