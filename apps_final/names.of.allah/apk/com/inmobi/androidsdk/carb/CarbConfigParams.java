package com.inmobi.androidsdk.carb;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class CarbConfigParams
{
  boolean a = false;
  String b = "http://dock.inmobi.com/carb/v1/i";
  String c = "http://dock.inmobi.com/carb/v1/o";
  long d = 86400L;
  int e = 3;
  long f = 60L;
  long g = 60L;
  UID h = new UID();
  
  public String getCarbEndpoint()
  {
    return b;
  }
  
  public String getCarbPostpoint()
  {
    return c;
  }
  
  public long getRetreiveFrequncy()
  {
    return d * 1000L;
  }
  
  public int getRetryCount()
  {
    return e;
  }
  
  public long getRetryInterval()
  {
    return f;
  }
  
  public long getTimeoutInterval()
  {
    return g;
  }
  
  public UID getUID()
  {
    return h;
  }
  
  public boolean isCarbEnabled()
  {
    return a;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    try
    {
      h.setFromMap((Map)paramMap.get("ids"));
      a = InternalSDKUtil.getBooleanFromMap(paramMap, "enabled");
      b = InternalSDKUtil.getStringFromMap(paramMap, "gep");
      if ((!b.startsWith("http")) && (!b.startsWith("https"))) {
        throw new IllegalArgumentException("URL wrong");
      }
    }
    catch (IllegalArgumentException paramMap)
    {
      Log.internal("CarbConfigParams", "Invalid value");
      h = new UID();
      a = false;
      b = "http://dock.inmobi.com/carb/v1/i";
      c = "http://dock.inmobi.com/carb/v1/o";
      d = 86400L;
      e = 3;
      f = 60L;
      g = 60L;
      throw new IllegalArgumentException();
    }
    c = InternalSDKUtil.getStringFromMap(paramMap, "pep");
    if ((!c.startsWith("http")) && (!c.startsWith("https"))) {
      throw new IllegalArgumentException("URL wrong");
    }
    d = InternalSDKUtil.getLongFromMap(paramMap, "fq_s", 1L, Long.MAX_VALUE);
    e = InternalSDKUtil.getIntFromMap(paramMap, "mr", 0, 2147483647L);
    f = InternalSDKUtil.getLongFromMap(paramMap, "ri", 1L, Long.MAX_VALUE);
    g = InternalSDKUtil.getLongFromMap(paramMap, "to", 1L, Long.MAX_VALUE);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.carb.CarbConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */