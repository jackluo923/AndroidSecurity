package com.inmobi.commons.internal;

import com.inmobi.commons.metric.MetricConfigParams;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class CommonsConfig
{
  private static Log.INTERNAL_LOG_LEVEL a;
  private static Log.INTERNAL_LOG_LEVEL b;
  private MetricConfigParams c = new MetricConfigParams();
  
  static
  {
    Log.INTERNAL_LOG_LEVEL localINTERNAL_LOG_LEVEL = Log.INTERNAL_LOG_LEVEL.NONE;
    a = localINTERNAL_LOG_LEVEL;
    b = localINTERNAL_LOG_LEVEL;
  }
  
  protected static int getLogLevelConfig()
  {
    return b.getValue();
  }
  
  public MetricConfigParams getApiStatsConfig()
  {
    return c;
  }
  
  public final void setFromMap(Map<String, Object> paramMap)
  {
    paramMap = InternalSDKUtil.populateToNewMap((Map)paramMap.get("AND"), (Map)paramMap.get("common"), true);
    new UID().setFromMap((Map)paramMap.get("ids"));
    UID.getCommonsUid().setFromMap((Map)paramMap.get("ids"));
    b = Log.getLogLevelValue(InternalSDKUtil.getIntFromMap(paramMap, "ll", 0, 2L));
    c.setFromMap((Map)paramMap.get("api"));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.CommonsConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */