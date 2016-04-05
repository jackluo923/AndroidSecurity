package com.inmobi.commons.ads.cache;

public class AdData
{
  private long a;
  private String b;
  private long c;
  private String d;
  private String e;
  
  public long getAdId()
  {
    return a;
  }
  
  public String getAdType()
  {
    return e;
  }
  
  public String getAppId()
  {
    return b;
  }
  
  public String getContent()
  {
    return d;
  }
  
  public long getTimestamp()
  {
    return c;
  }
  
  public void setAdId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setAdType(String paramString)
  {
    e = paramString;
  }
  
  public void setAppId(String paramString)
  {
    b = paramString;
  }
  
  public void setContent(String paramString)
  {
    d = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    c = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.ads.cache.AdData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */