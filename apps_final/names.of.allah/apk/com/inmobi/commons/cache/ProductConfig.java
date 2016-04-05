package com.inmobi.commons.cache;

import java.util.HashMap;
import java.util.Map;

public abstract class ProductConfig
{
  private String a = null;
  private String b = null;
  private String c = null;
  private int d = 0;
  private int e = 3;
  private int f = 60;
  private int g = 0;
  private int h = -1;
  private boolean i = true;
  
  Map<String, Object> a(String paramString)
  {
    if (getProtocol().equals("json")) {
      return new JSONMapBuilder().buildMap(paramString);
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("data", paramString);
    return localHashMap;
  }
  
  public Map<String, Object> getData()
  {
    return a(c);
  }
  
  public int getExpiry()
  {
    return d;
  }
  
  public int getMaxRetry()
  {
    return e;
  }
  
  public String getProtocol()
  {
    return b;
  }
  
  public String getRawData()
  {
    return c;
  }
  
  public int getRetryInterval()
  {
    return f;
  }
  
  public int getRetryNumber()
  {
    return g;
  }
  
  public int getTimestamp()
  {
    return h;
  }
  
  public String getUrl()
  {
    return a;
  }
  
  public boolean isSendUidMap()
  {
    return i;
  }
  
  public void setData(String paramString)
  {
    c = paramString;
  }
  
  public void setExpiry(int paramInt)
  {
    d = paramInt;
  }
  
  public void setMaxRetry(int paramInt)
  {
    e = paramInt;
  }
  
  public void setProtocol(String paramString)
  {
    b = paramString;
  }
  
  public void setRetryInterval(int paramInt)
  {
    f = paramInt;
  }
  
  public void setRetryNumber(int paramInt)
  {
    g = paramInt;
  }
  
  public void setSendUidMap(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setTimestamp(int paramInt)
  {
    h = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.ProductConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */