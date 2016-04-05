package com.adsdk.sdk;

public class RequestException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  
  public RequestException() {}
  
  public RequestException(String paramString)
  {
    super(paramString);
  }
  
  public RequestException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public RequestException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.RequestException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */