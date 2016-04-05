package com.inmobi.commons.analytics.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class ThinICEConfig
{
  public static final int CELL_OP_FLAGS_DEFAULT = 0;
  public static final boolean ENABLED_DEFAULT = true;
  public static final String END_POINT_DEFAULT = "https://sdkm.w.inmobi.com/user/e.asm";
  public static final long MAX_RETRY_DEFAULT = 3L;
  public static final long RETRY_INTERVAL = 3L;
  public static final boolean SAMPLE_CELL_CONNECTED_WIFI_ENABLED_DEFAULT = true;
  public static final boolean SAMPLE_CELL_ENABLED_DEFAULT = true;
  public static final boolean SAMPLE_CELL_OPERATOR_ENABLED_DEFAULT = true;
  public static final boolean SAMPLE_CELL_VISIBLE_WIFI_ENABLED_DEFAULT = true;
  public static final int SAMPLE_HISTORY_SIZE_DEFAULT = 50;
  public static final long SAMPLE_INTERVAL_DEFAULT = 60L;
  public static final long STOP_REQUEST_TIMEOUT_DEFAULT = 3L;
  public static final int WIFI_FLAGS_DEFAULT = 0;
  private long a = 60L;
  private long b = 3L;
  private long c = 3L;
  private long d = 3L;
  private int e = 50;
  private int f = 0;
  private int g = 0;
  private String h = "https://sdkm.w.inmobi.com/user/e.asm";
  private boolean i = true;
  private boolean j = true;
  private boolean k = true;
  private boolean l = true;
  private boolean m = true;
  private boolean n = false;
  private long o = 180L;
  private long p = 50L;
  
  public long getActivityDetectionInterval()
  {
    return o * 1000L;
  }
  
  public long getActivityDetectionMaxSize()
  {
    return p;
  }
  
  public int getCellOpsFlag()
  {
    return g;
  }
  
  public String getEndpointUrl()
  {
    return h;
  }
  
  public long getMaxRetry()
  {
    return d;
  }
  
  public long getRetryInterval()
  {
    return c;
  }
  
  public int getSampleHistorySize()
  {
    return e;
  }
  
  public long getSampleInterval()
  {
    return a;
  }
  
  public long getStopRequestTimeout()
  {
    return b;
  }
  
  public int getWifiFlags()
  {
    return f;
  }
  
  public boolean isActivityDetectionEnabled()
  {
    return n;
  }
  
  public boolean isCellEnabled()
  {
    return k;
  }
  
  public boolean isConnectedWifiEnabled()
  {
    return l;
  }
  
  public boolean isEnabled()
  {
    return i;
  }
  
  public boolean isOperatorEnabled()
  {
    return j;
  }
  
  public boolean isVisibleWifiEnabled()
  {
    return m;
  }
  
  public final void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getLongFromMap(paramMap, "si", 1L, Long.MAX_VALUE);
    b = InternalSDKUtil.getLongFromMap(paramMap, "srt", 1L, Long.MAX_VALUE);
    e = InternalSDKUtil.getIntFromMap(paramMap, "shs", 1, 2147483647L);
    f = InternalSDKUtil.getIntFromMap(paramMap, "wfd", 0, 15L);
    g = InternalSDKUtil.getIntFromMap(paramMap, "cof", 0, 15L);
    i = InternalSDKUtil.getBooleanFromMap(paramMap, "e");
    l = InternalSDKUtil.getBooleanFromMap(paramMap, "sccw");
    k = InternalSDKUtil.getBooleanFromMap(paramMap, "sced");
    j = InternalSDKUtil.getBooleanFromMap(paramMap, "scoe");
    m = InternalSDKUtil.getBooleanFromMap(paramMap, "scvw");
    h = InternalSDKUtil.getStringFromMap(paramMap, "ep");
    d = InternalSDKUtil.getLongFromMap(paramMap, "mr", 0L, Long.MAX_VALUE);
    c = InternalSDKUtil.getLongFromMap(paramMap, "ri", 1L, Long.MAX_VALUE);
    n = InternalSDKUtil.getBooleanFromMap(paramMap, "as");
    o = InternalSDKUtil.getLongFromMap(paramMap, "assi", 1L, Long.MAX_VALUE);
    p = InternalSDKUtil.getLongFromMap(paramMap, "asm", 1L, Long.MAX_VALUE);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.bootstrapper.ThinICEConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */