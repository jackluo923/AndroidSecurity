package com.squareup.okhttp.internal;

import java.net.InetAddress;
import java.net.UnknownHostException;

public abstract interface Dns
{
  public static final Dns DEFAULT = new Dns()
  {
    public InetAddress[] getAllByName(String paramAnonymousString)
      throws UnknownHostException
    {
      return InetAddress.getAllByName(paramAnonymousString);
    }
  };
  
  public abstract InetAddress[] getAllByName(String paramString)
    throws UnknownHostException;
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Dns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */