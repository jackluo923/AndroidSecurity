package com.inmobi.monetization.internal;

public class LtvpErrorCode
{
  int a;
  String b;
  
  public LtvpErrorCode(int paramInt, String paramString)
  {
    a = paramInt;
    b = paramString;
  }
  
  public int getCode()
  {
    return a;
  }
  
  public String getMessage()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.LtvpErrorCode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */