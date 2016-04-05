package com.squareup.okhttp.internal;

import java.net.InetAddress;
import java.net.UnknownHostException;

final class Dns$1
  implements Dns
{
  public InetAddress[] getAllByName(String paramString)
    throws UnknownHostException
  {
    return InetAddress.getAllByName(paramString);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Dns.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */