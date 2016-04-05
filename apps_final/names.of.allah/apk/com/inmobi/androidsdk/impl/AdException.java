package com.inmobi.androidsdk.impl;

import com.inmobi.androidsdk.AdRequest.ErrorCode;

public final class AdException
  extends Exception
{
  public static final int INTERNAL_ERROR = 200;
  public static final int INVALID_APP_ID = 400;
  public static final int INVALID_REQUEST = 300;
  public static final int NO_FILL = 100;
  private static final long serialVersionUID = -3924043691624251411L;
  private int a = 300;
  private String b = null;
  private int c = 599;
  
  public AdException(String paramString1, int paramInt1, String paramString2, int paramInt2)
  {
    super(paramString1);
    a = paramInt1;
    b = paramString2;
    c = paramInt2;
  }
  
  public AdException(String paramString1, Exception paramException, int paramInt, String paramString2)
  {
    super(paramString1, paramException);
    a = paramInt;
    b = paramString2;
  }
  
  public final int getCode()
  {
    return a;
  }
  
  public final AdRequest.ErrorCode getErrorCode()
  {
    switch (a)
    {
    default: 
      return AdRequest.ErrorCode.INTERNAL_ERROR;
    case 200: 
      return AdRequest.ErrorCode.INTERNAL_ERROR;
    case 400: 
      return AdRequest.ErrorCode.INVALID_APP_ID;
    case 300: 
      return AdRequest.ErrorCode.INVALID_REQUEST;
    }
    return AdRequest.ErrorCode.NO_FILL;
  }
  
  public final int getHttpCode()
  {
    return c;
  }
  
  public final String getImpressionId()
  {
    return b;
  }
  
  public final void setCode(int paramInt)
  {
    a = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.AdException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */