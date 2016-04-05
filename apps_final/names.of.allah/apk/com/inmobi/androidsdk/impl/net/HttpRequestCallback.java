package com.inmobi.androidsdk.impl.net;

public abstract interface HttpRequestCallback
{
  public static final int HTTP_FAILURE = 1;
  public static final int HTTP_SUCCESS = 0;
  
  public abstract void notifyResult(int paramInt, Object paramObject);
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.HttpRequestCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */