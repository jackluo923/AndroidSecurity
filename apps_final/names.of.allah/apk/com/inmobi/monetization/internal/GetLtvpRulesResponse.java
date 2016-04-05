package com.inmobi.monetization.internal;

import java.util.HashMap;

public class GetLtvpRulesResponse
{
  private String a;
  private long b;
  private HashMap<String, Integer> c;
  private long d;
  private long e;
  
  public long getHardExpiry()
  {
    return e;
  }
  
  public String getRuleId()
  {
    return a;
  }
  
  public HashMap<String, Integer> getRules()
  {
    return c;
  }
  
  public long getSoftExpiry()
  {
    return d;
  }
  
  public long getTimeStamp()
  {
    return b;
  }
  
  public void setHardExpiry(long paramLong)
  {
    e = paramLong;
  }
  
  public void setRuleId(String paramString)
  {
    a = paramString;
  }
  
  public void setRules(HashMap<String, Integer> paramHashMap)
  {
    c = paramHashMap;
  }
  
  public void setSoftExpiry(long paramLong)
  {
    d = paramLong;
  }
  
  public void setTimeStamp(long paramLong)
  {
    b = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.GetLtvpRulesResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */