package com.inmobi.androidsdk.impl.net;

public class Response
{
  String a = null;
  String b = null;
  
  public Response(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String getAdResponse()
  {
    return b;
  }
  
  public String getImpressionId()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */