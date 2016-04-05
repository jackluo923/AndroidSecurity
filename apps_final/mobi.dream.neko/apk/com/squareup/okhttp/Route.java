package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;

public class Route
{
  final Address address;
  final InetSocketAddress inetSocketAddress;
  final boolean modernTls;
  final Proxy proxy;
  
  public Route(Address paramAddress, Proxy paramProxy, InetSocketAddress paramInetSocketAddress, boolean paramBoolean)
  {
    if (paramAddress == null) {
      throw new NullPointerException("address == null");
    }
    if (paramProxy == null) {
      throw new NullPointerException("proxy == null");
    }
    if (paramInetSocketAddress == null) {
      throw new NullPointerException("inetSocketAddress == null");
    }
    address = paramAddress;
    proxy = paramProxy;
    inetSocketAddress = paramInetSocketAddress;
    modernTls = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Route))
    {
      paramObject = (Route)paramObject;
      bool1 = bool2;
      if (address.equals(address))
      {
        bool1 = bool2;
        if (proxy.equals(proxy))
        {
          bool1 = bool2;
          if (inetSocketAddress.equals(inetSocketAddress))
          {
            bool1 = bool2;
            if (modernTls == modernTls) {
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public Route flipTlsMode()
  {
    Address localAddress = address;
    Proxy localProxy = proxy;
    InetSocketAddress localInetSocketAddress = inetSocketAddress;
    if (!modernTls) {}
    for (boolean bool = true;; bool = false) {
      return new Route(localAddress, localProxy, localInetSocketAddress, bool);
    }
  }
  
  public Address getAddress()
  {
    return address;
  }
  
  public Proxy getProxy()
  {
    return proxy;
  }
  
  public InetSocketAddress getSocketAddress()
  {
    return inetSocketAddress;
  }
  
  public int hashCode()
  {
    int j = ((address.hashCode() + 527) * 31 + proxy.hashCode()) * 31 + inetSocketAddress.hashCode();
    if (modernTls) {}
    for (int i = j * 31;; i = 0) {
      return j + i;
    }
  }
  
  public boolean isModernTls()
  {
    return modernTls;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.Route
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */