package com.inmobi.commons.analytics.net;

import java.util.List;

public class AnalyticsPayload
{
  private String a;
  private List<Long> b;
  private String c;
  private int d;
  
  public AnalyticsPayload(String paramString, List<Long> paramList)
  {
    a = paramString;
    b = paramList;
  }
  
  public String getCompletePayload()
  {
    return c;
  }
  
  public String getOnlyEvent()
  {
    return a;
  }
  
  public int getPayloadSize()
  {
    return d;
  }
  
  public List<Long> getTableIdList()
  {
    return b;
  }
  
  public void setCompletePayload(String paramString)
  {
    c = paramString;
  }
  
  public void setPayloadSize(int paramInt)
  {
    d = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.net.AnalyticsPayload
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */